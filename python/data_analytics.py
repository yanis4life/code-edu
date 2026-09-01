import json
import os
from datetime import datetime, timedelta
from collections import defaultdict


def analyze_user_activity(submissions, lessons_completed, timeframe_days=30):
    analysis = {
        "total_activity": len(submissions) + len(lessons_completed),
        "submissions_count": len(submissions),
        "lessons_count": len(lessons_completed),
        "daily_activity": defaultdict(int),
        "peak_hours": defaultdict(int),
        "success_rate": 0.0,
        "consistent_days": 0,
        "recommendations": []
    }

    cutoff = datetime.now() - timedelta(days=timeframe_days)

    for sub in submissions:
        created = sub.get("created_at", "")
        if created:
            try:
                dt = datetime.fromisoformat(created.replace("Z", "+00:00"))
                date_key = dt.strftime("%Y-%m-%d")
                hour_key = dt.hour
                analysis["daily_activity"][date_key] += 1
                analysis["peak_hours"][hour_key] += 1
            except (ValueError, AttributeError):
                pass

    for lesson in lessons_completed:
        completed = lesson.get("completed_at", "")
        if completed:
            try:
                dt = datetime.fromisoformat(completed.replace("Z", "+00:00"))
                date_key = dt.strftime("%Y-%m-%d")
                analysis["daily_activity"][date_key] += 1
            except (ValueError, AttributeError):
                pass

    total_subs = len(submissions)
    successful = sum(1 for s in submissions if s.get("status") == "passed" or s.get("score", 0) >= 80)
    analysis["success_rate"] = round((successful / max(total_subs, 1)) * 100, 2)

    analysis["daily_activity"] = dict(sorted(analysis["daily_activity"].items()))
    analysis["peak_hours"] = dict(sorted(analysis["peak_hours"].items()))

    active_days = len(analysis["daily_activity"])
    analysis["consistent_days"] = active_days

    if active_days < 5:
        analysis["recommendations"].append("Try to practice more consistently to build your streak.")
    if analysis["success_rate"] < 50:
        analysis["recommendations"].append("Focus on easier lessons to build confidence before tackling harder challenges.")
    if analysis["success_rate"] > 80 and active_days > 15:
        analysis["recommendations"].append("You are doing great! Consider trying more advanced challenges or contests.")
    if not analysis["peak_hours"]:
        analysis["recommendations"].append("Start your learning journey by completing the first lesson.")

    return analysis


def get_skill_progress(lessons_data):
    progress = defaultdict(lambda: {"completed": 0, "total": 0, "levels": []})

    for lesson in lessons_data:
        lang = lesson.get("language", "unknown")
        progress[lang]["total"] += 1
        if lesson.get("completed"):
            progress[lang]["completed"] += 1
            progress[lang]["levels"].append(lesson.get("level_number", 0))

    result = {}
    for lang, data in progress.items():
        pct = round((data["completed"] / max(data["total"], 1)) * 100, 1)
        result[lang] = {
            "completed": data["completed"],
            "total": data["total"],
            "percentage": pct,
            "levels": sorted(data["levels"])
        }

    return result


def generate_insights(user_data, submissions, lessons, achievements):
    return {
        "user": {
            "username": user_data.get("username", ""),
            "level": user_data.get("level", 1),
            "xp": user_data.get("xp", 0)
        },
        "activity": analyze_user_activity(submissions, lessons),
        "skills": get_skill_progress(lessons),
        "achievements": len(achievements),
        "generated_at": datetime.now().isoformat()
    }


if __name__ == "__main__":
    user = {"username": "testuser", "level": 3, "xp": 1200}
    subs = [{"status": "passed", "score": 90, "created_at": "2024-01-01T10:00:00Z"}]
    lessons = [{"language": "python", "completed": 1, "level_number": 1}]
    achievements = [{"badge_key": "first_code"}]

    insights = generate_insights(user, subs, lessons, achievements)
    print(json.dumps(insights, indent=2))