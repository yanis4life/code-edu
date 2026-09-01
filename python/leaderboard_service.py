import json
import os
from datetime import datetime


def calculate_leaderboard(users_data):
    ranked = sorted(users_data, key=lambda u: u.get("xp", 0), reverse=True)

    leaderboard = []
    for i, user in enumerate(ranked):
        leaderboard.append({
            "rank": i + 1,
            "user_id": user.get("id"),
            "username": user.get("username"),
            "display_name": user.get("display_name"),
            "avatar_url": user.get("avatar_url", ""),
            "xp": user.get("xp", 0),
            "level": user.get("level", 1),
            "streak": user.get("streak", 0),
            "lessons_completed": user.get("lessons_completed", 0)
        })

    return leaderboard


def calculate_friend_leaderboard(users_data, friend_ids):
    friends = [u for u in users_data if u.get("id") in friend_ids]
    friends_sorted = sorted(friends, key=lambda u: u.get("xp", 0), reverse=True)

    leaderboard = []
    for i, user in enumerate(friends_sorted):
        leaderboard.append({
            "rank": i + 1,
            "user_id": user.get("id"),
            "username": user.get("username"),
            "display_name": user.get("display_name"),
            "avatar_url": user.get("avatar_url", ""),
            "xp": user.get("xp", 0),
            "level": user.get("level", 1),
            "streak": user.get("streak", 0)
        })

    return leaderboard


def calculate_contest_rankings(participants):
    ranked = sorted(participants, key=lambda p: (-p.get("score", 0), p.get("completed_at", "")))

    results = []
    for i, p in enumerate(ranked):
        results.append({
            "rank": i + 1,
            "user_id": p.get("user_id"),
            "username": p.get("username"),
            "display_name": p.get("display_name", ""),
            "score": p.get("score", 0),
            "completed_at": p.get("completed_at", "")
        })

    return results


if __name__ == "__main__":
    test_users = [
        {"id": 1, "username": "alice", "xp": 5000, "level": 10, "streak": 15, "lessons_completed": 45},
        {"id": 2, "username": "bob", "xp": 3200, "level": 8, "streak": 7, "lessons_completed": 30},
        {"id": 3, "username": "charlie", "xp": 8000, "level": 15, "streak": 30, "lessons_completed": 80}
    ]

    lb = calculate_leaderboard(test_users)
    print(json.dumps(lb, indent=2))