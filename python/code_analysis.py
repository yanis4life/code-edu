import json
import re
import os

def analyze_code(code, language):
    analysis = {
        "lines": 0,
        "characters": 0,
        "has_functions": False,
        "has_classes": False,
        "has_loops": False,
        "has_conditionals": False,
        "complexity": "low",
        "issues": [],
        "patterns": []
    }

    if not code:
        return analysis

    analysis["lines"] = len(code.split("\n"))
    analysis["characters"] = len(code)

    if language == "python":
        analysis["has_functions"] = bool(re.search(r'def\s+\w+\s*\(', code))
        analysis["has_classes"] = bool(re.search(r'class\s+\w+', code))
        analysis["has_loops"] = bool(re.search(r'\b(for|while)\s+', code))
        analysis["has_conditionals"] = bool(re.search(r'\b(if|elif|else)\b', code))

        if re.search(r'\b(import|from)\s+', code):
            analysis["patterns"].append("uses_imports")

        if re.search(r'\btry\s*:', code):
            analysis["patterns"].append("uses_error_handling")

        if re.search(r'\b(list|dict|set|tuple)\s*\(', code) or re.search(r'\[.*\]|\{.*\}', code):
            analysis["patterns"].append("uses_data_structures")

        if re.search(r'\b(lambda|map|filter|reduce)\b', code):
            analysis["patterns"].append("uses_functional")

        if len(code) > 500:
            analysis["complexity"] = "medium"
        if len(code) > 2000:
            analysis["complexity"] = "high"

        if "input(" in code:
            analysis["issues"].append("uses_input")

        if "eval(" in code or "exec(" in code:
            analysis["issues"].append("uses_dynamic_eval")

    return analysis


def detect_plagiarism(code1, code2):
    c1 = re.sub(r'\s+', '', code1)
    c2 = re.sub(r'\s+', '', code2)

    if not c1 or not c2:
        return 0.0

    common = 0
    for i in range(min(len(c1), len(c2))):
        if c1[i] == c2[i]:
            common += 1

    return round((common / max(len(c1), len(c2))) * 100, 2)


def extract_keywords(code, language):
    keywords = {
        "python": ["def", "class", "return", "if", "else", "elif", "for", "while", "import", "from", "try", "except", "with", "as", "lambda", "yield", "async", "await"]
    }

    lang_keywords = keywords.get(language, [])
    found = []

    for kw in lang_keywords:
        if kw in code:
            found.append(kw)

    return found


if __name__ == "__main__":
    test_code = "def hello():\n    print('Hello, World!')\n\nhello()"
    result = analyze_code(test_code, "python")
    print(json.dumps(result, indent=2))