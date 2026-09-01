import json
import os


ACHIEVEMENT_RULES = {
    "first_code": {
        "name": "First Code",
        "description": "Complete your first lesson",
        "condition": lambda data: data.get("lessons_completed", 0) >= 1,
        "xp_reward": 100
    },
    "challenge_10": {
        "name": "10 Challenges",
        "description": "Complete 10 coding challenges",
        "condition": lambda data: data.get("challenges_completed", 0) >= 10,
        "xp_reward": 250
    },
    "streak_7": {
        "name": "Weekly Warrior",
        "description": "Maintain a 7-day streak",
        "condition": lambda data: data.get("streak", 0) >= 7,
        "xp_reward": 500
    },
    "master_python": {
        "name": "Python Master",
        "description": "Complete all Python levels",
        "condition": lambda data: data.get("python_levels_completed", 0) >= 100,
        "xp_reward": 1000
    },
    "speed_demon": {
        "name": "Speed Demon",
        "description": "Complete a challenge in under 60 seconds",
        "condition": lambda data: data.get("fastest_completion", 999) <= 60,
        "xp_reward": 300
    },
    "social_butterfly": {
        "name": "Social Butterfly",
        "description": "Make 5 friends",
        "condition": lambda data: data.get("friend_count", 0) >= 5,
        "xp_reward": 200
    },
    "contributor": {
        "name": "Contributor",
        "description": "Share 10 public solutions",
        "condition": lambda data: data.get("public_submissions", 0) >= 10,
        "xp_reward": 150
    },
    "perfect_score": {
        "name": "Perfect Score",
        "description": "Get 100% on any challenge",
        "condition": lambda data: data.get("best_score", 0) >= 100,
        "xp_reward": 200
    },
    "polyglot": {
        "name": "Polyglot",
        "description": "Complete lessons in all languages",
        "condition": lambda data: data.get("languages_learned", 0) >= 3,
        "xp_reward": 1000
    },
    "contest_winner": {
        "name": "Contest Winner",
        "description": "Win a weekly contest",
        "condition": lambda data: data.get("contests_won", 0) >= 1,
        "xp_reward": 750
    }
}


def check_achievements(user_data, existing_achievements):
    new_achievements = []
    earned_keys = {a.get("badge_key", "") for a in existing_achievements}

    for key, rule in ACHIEVEMENT_RULES.items():
        if key in earned_keys:
            continue
        if rule["condition"](user_data):
            new_achievements.append({
                "badge_key": key,
                "badge_name": rule["name"],
                "badge_description": rule["description"],
                "xp_reward": rule["xp_reward"]
            })

    return new_achievements


def process_achievement_event(event_data):
    user_id = event_data.get("userId")
    event_type = event_data.get("type")

    user_context = {
        "lessons_completed": event_data.get("lessonsCompleted", 0),
        "challenges_completed": event_data.get("challengesCompleted", 0),
        "streak": event_data.get("streak", 0),
        "python_levels_completed": event_data.get("pythonLevelsCompleted", 0),
        "fastest_completion": event_data.get("fastestCompletion", 999),
        "friend_count": event_data.get("friendCount", 0),
        "public_submissions": event_data.get("publicSubmissions", 0),
        "best_score": event_data.get("bestScore", 0),
        "languages_learned": event_data.get("languagesLearned", 0),
        "contests_won": event_data.get("contestsWon", 0)
    }

    existing = event_data.get("existingAchievements", [])
    return check_achievements(user_context, existing)


if __name__ == "__main__":
    test_data = {
        "userId": 1,
        "lessonsCompleted": 5,
        "challengesCompleted": 3,
        "streak": 1,
        "existingAchievements": []
    }
    result = process_achievement_event(test_data)
    print(json.dumps(result, indent=2))