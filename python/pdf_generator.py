import json
import os
import io
from datetime import datetime

try:
    from reportlab.lib.pagesizes import A4
    from reportlab.lib.units import cm, mm
    from reportlab.lib.styles import getSampleStyleSheet, ParagraphStyle
    from reportlab.platypus import SimpleDocTemplate, Paragraph, Spacer, Table, TableStyle, Image
    from reportlab.lib import colors
    from reportlab.lib.enums import TA_CENTER, TA_LEFT
    HAS_REPORTLAB = True
except ImportError:
    HAS_REPORTLAB = False


def generate_progress_pdf(user_data, lessons_data, achievements_data, output_path=None):
    if not HAS_REPORTLAB:
        return generate_text_progress(user_data, lessons_data, achievements_data, output_path)

    if output_path is None:
        output_path = f"/tmp/progress_{user_data.get('username', 'user')}_{datetime.now().strftime('%Y%m%d')}.pdf"

    doc = SimpleDocTemplate(
        output_path,
        pagesize=A4,
        rightMargin=2*cm,
        leftMargin=2*cm,
        topMargin=2*cm,
        bottomMargin=2*cm
    )

    styles = getSampleStyleSheet()
    title_style = ParagraphStyle(
        'CustomTitle',
        parent=styles['Title'],
        fontSize=24,
        spaceAfter=12,
        textColor=colors.HexColor('#CCFF00')
    )
    heading_style = ParagraphStyle(
        'CustomHeading',
        parent=styles['Heading2'],
        fontSize=14,
        spaceAfter=8,
        textColor=colors.HexColor('#000000')
    )
    normal_style = ParagraphStyle(
        'CustomNormal',
        parent=styles['Normal'],
        fontSize=10,
        spaceAfter=6
    )

    elements = []

    elements.append(Paragraph(f"Progress Report - {user_data.get('display_name', user_data.get('username', 'User'))}", title_style))
    elements.append(Spacer(1, 0.5*cm))

    user_info = [
        f"Username: {user_data.get('username', 'N/A')}",
        f"Level: {user_data.get('level', 1)}",
        f"XP: {user_data.get('xp', 0)}",
        f"Streak: {user_data.get('streak', 0)} days",
        f"Report generated: {datetime.now().strftime('%Y-%m-%d %H:%M')}"
    ]

    for info in user_info:
        elements.append(Paragraph(info, normal_style))

    elements.append(Spacer(1, 0.5*cm))
    elements.append(Paragraph("Lessons Completed", heading_style))

    if lessons_data:
        lesson_data = [[Paragraph("Level", normal_style), Paragraph("Title", normal_style), Paragraph("Score", normal_style), Paragraph("Completed", normal_style)]]
        for lesson in lessons_data[:20]:
            lesson_data.append([
                Paragraph(str(lesson.get('level_number', '')), normal_style),
                Paragraph(lesson.get('title', ''), normal_style),
                Paragraph(str(lesson.get('score', 0)), normal_style),
                Paragraph(lesson.get('completed_at', 'N/A')[:10] if lesson.get('completed_at') else 'N/A', normal_style)
            ])

        table = Table(lesson_data, colWidths=[3*cm, 8*cm, 3*cm, 4*cm])
        table.setStyle(TableStyle([
            ('BACKGROUND', (0, 0), (-1, 0), colors.HexColor('#CCFF00')),
            ('TEXTCOLOR', (0, 0), (-1, 0), colors.HexColor('#000000')),
            ('ALIGN', (0, 0), (-1, -1), 'CENTER'),
            ('FONTSIZE', (0, 0), (-1, -1), 9),
            ('GRID', (0, 0), (-1, -1), 0.5, colors.HexColor('#CCCCCC')),
            ('ROWBACKGROUNDS', (0, 1), (-1, -1), [colors.HexColor('#FFFFFF'), colors.HexColor('#F5F5F5')])
        ]))
        elements.append(table)
    else:
        elements.append(Paragraph("No lessons completed yet.", normal_style))

    elements.append(Spacer(1, 0.5*cm))
    elements.append(Paragraph("Achievements", heading_style))

    if achievements_data:
        for ach in achievements_data[:10]:
            elements.append(Paragraph(f"- {ach.get('badge_name', 'Unknown')}: {ach.get('badge_description', '')}", normal_style))
    else:
        elements.append(Paragraph("No achievements earned yet.", normal_style))

    elements.append(Spacer(1, 1*cm))
    elements.append(Paragraph("CodeEdu Platform - Learning Progress Report", ParagraphStyle('Footer', parent=normal_style, fontSize=8, textColor=colors.HexColor('#999999'))))

    doc.build(elements)
    return output_path


def generate_text_progress(user_data, lessons_data, achievements_data, output_path=None):
    if output_path is None:
        output_path = f"/tmp/progress_{user_data.get('username', 'user')}_{datetime.now().strftime('%Y%m%d')}.txt"

    with open(output_path, 'w') as f:
        f.write(f"Progress Report - {user_data.get('display_name', user_data.get('username', 'User'))}\n")
        f.write("=" * 50 + "\n\n")
        f.write(f"Username: {user_data.get('username', 'N/A')}\n")
        f.write(f"Level: {user_data.get('level', 1)}\n")
        f.write(f"XP: {user_data.get('xp', 0)}\n")
        f.write(f"Streak: {user_data.get('streak', 0)} days\n")
        f.write(f"Generated: {datetime.now().strftime('%Y-%m-%d %H:%M')}\n\n")
        f.write("Lessons Completed:\n")
        f.write("-" * 30 + "\n")

        if lessons_data:
            for lesson in lessons_data[:20]:
                f.write(f"  Level {lesson.get('level_number', '?')}: {lesson.get('title', 'Unknown')} - Score: {lesson.get('score', 0)}%\n")
        else:
            f.write("  No lessons completed yet.\n")

        f.write("\nAchievements:\n")
        f.write("-" * 30 + "\n")

        if achievements_data:
            for ach in achievements_data[:10]:
                f.write(f"  {ach.get('badge_name', 'Unknown')}: {ach.get('badge_description', '')}\n")
        else:
            f.write("  No achievements earned yet.\n")

    return output_path


if __name__ == "__main__":
    user = {"username": "testuser", "display_name": "Test User", "level": 5, "xp": 2500, "streak": 3}
    lessons = [{"level_number": 1, "title": "Hello World", "score": 100, "completed_at": "2024-01-01"}]
    achievements = [{"badge_name": "First Code", "badge_description": "Complete your first lesson"}]
    path = generate_progress_pdf(user, lessons, achievements)
    print(f"PDF generated: {path}")