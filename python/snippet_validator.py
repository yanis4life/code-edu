import json
import os
import re


BLACKLISTED_PATTERNS = [
    r'eval\s*\(',
    r'exec\s*\(',
    r'system\s*\(',
    r'popen\s*\(',
    r'subprocess\.',
    r'os\.system',
    r'os\.popen',
    r'shutil\.',
    r'__import__\s*\(',
    r'open\s*\(.*[\'\"].*[\'\"].*[rw]',
    r'base64\.(b64decode|b64encode)',
    r'pickle\.(loads|dumps)',
    r'compile\s*\(',
    r'globals\s*\(\).*\[',
    r'locals\s*\(\).*\[',
    r'getattr\s*\(',
    r'setattr\s*\(',
    r'delattr\s*\(',
    r'<script',
    r'javascript:',
    r'onclick=',
    r'onload=',
    r'onerror=',
    r'<.*\s+on',
]


SENSITIVE_PATTERNS = [
    r'-----BEGIN\s+(RSA|OPENSSH|PRIVATE)\s+KEY-----',
    r'AKIA[0-9A-Z]{16}',
    r'sk-[a-zA-Z0-9]{32,}',
    r'ghp_[a-zA-Z0-9]{36}',
    r'gho_[a-zA-Z0-9]{36}',
    r'Bearer\s+[a-zA-Z0-9\-._~+/]+',
    r'password\s*[:=]\s*["\']?[^"\'\s]+',
    r'secret\s*[:=]\s*["\']?[^"\'\s]+',
    r'api_key\s*[:=]\s*["\']?[^"\'\s]+',
]


def validate_snippet(code, language):
    result = {
        "is_safe": True,
        "issues": [],
        "warnings": [],
        "sensitive_data": []
    }

    if not code:
        result["is_safe"] = False
        result["issues"].append("Empty code")
        return result

    for pattern in BLACKLISTED_PATTERNS:
        matches = re.findall(pattern, code, re.IGNORECASE)
        if matches:
            result["is_safe"] = False
            result["issues"].append(f"Potentially dangerous code detected: {matches[0]}")

    for pattern in SENSITIVE_PATTERNS:
        matches = re.findall(pattern, code)
        if matches:
            result["sensitive_data"].append(f"Sensitive data pattern detected: {matches[0][:20]}...")
            result["warnings"].append("Code contains potential sensitive data")

    if len(code) > 100000:
        result["warnings"].append("Code is very large, consider splitting into smaller snippets")

    if language == "html" and "<script" in code.lower():
        result["warnings"].append("HTML contains script tags, review for XSS risks")

    if language == "sql" and any(kw in code.upper() for kw in ["DROP", "TRUNCATE", "DELETE FROM"]):
        result["warnings"].append("SQL contains destructive operations")

    return result


def sanitize_code(code):
    sanitized = code
    for pattern in BLACKLISTED_PATTERNS:
        sanitized = re.sub(pattern, "[FILTERED]", sanitized, flags=re.IGNORECASE)
    return sanitized


if __name__ == "__main__":
    test_code = "print('hello world')"
    result = validate_snippet(test_code, "python")
    print(json.dumps(result, indent=2))