import json
import os
import smtplib
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart
from datetime import datetime


def send_email(recipient_email, subject, body, sender_email=None, smtp_config=None):
    if not smtp_config:
        smtp_config = {
            "host": os.environ.get("SMTP_HOST", "smtp.example.com"),
            "port": int(os.environ.get("SMTP_PORT", "587")),
            "username": os.environ.get("SMTP_USERNAME", ""),
            "password": os.environ.get("SMTP_PASSWORD", "")
        }

    if not sender_email:
        sender_email = os.environ.get("SMTP_FROM", "noreply@code-edu.cc.cd")

    msg = MIMEMultipart("alternative")
    msg["Subject"] = subject
    msg["From"] = sender_email
    msg["To"] = recipient_email

    text_part = MIMEText(body, "plain", "utf-8")
    msg.attach(text_part)

    try:
        with smtplib.SMTP(smtp_config["host"], smtp_config["port"]) as server:
            server.starttls()
            if smtp_config["username"]:
                server.login(smtp_config["username"], smtp_config["password"])
            server.sendmail(sender_email, recipient_email, msg.as_string())
        return {"success": True, "message": "Email sent"}
    except Exception as e:
        return {"success": False, "error": str(e)}


def send_streak_reminder(user_email, username, streak_count):
    subject = "Keep your streak alive on CodeEdu!"
    body = f"""
Hi {username},

You have a {streak_count}-day learning streak on CodeEdu. Keep it going!

Log in today to complete your daily challenge and maintain your streak.

https://code-edu.cc.cd/dashboard

Happy coding!
The CodeEdu Team
"""
    return send_email(user_email, subject, body)


def send_contest_alert(user_email, username, contest_title, start_time):
    subject = f"Upcoming Contest: {contest_title}"
    body = f"""
Hi {username},

The contest "{contest_title}" is starting soon!

Start time: {start_time}

Join now and compete with other coders!
https://code-edu.cc.cd/contests

Good luck!
The CodeEdu Team
"""
    return send_email(user_email, subject, body)


def send_friend_request_notification(user_email, username, from_username):
    subject = "New Friend Request on CodeEdu"
    body = f"""
Hi {username},

{from_username} has sent you a friend request on CodeEdu.

View your requests: https://code-edu.cc.cd/friends

The CodeEdu Team
"""
    return send_email(user_email, subject, body)


if __name__ == "__main__":
    print("Email service module loaded successfully")