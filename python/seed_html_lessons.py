#!/usr/bin/env python3

LESSON_TEMPLATES = []

for i in range(1, 101):
    level = i
    if level <= 20:
        difficulty = "easy"
        xp = 50
    elif level <= 50:
        difficulty = "medium"
        xp = 75
    elif level <= 80:
        difficulty = "hard"
        xp = 100
    else:
        difficulty = "hard"
        xp = 150

    if level == 1:
        title = "Basic HTML Structure"
        theory = "HTML stands for HyperText Markup Language. Every HTML document starts with a doctype declaration and has html, head, and body elements."
        code = "<!DOCTYPE html>\n<html>\n<head>\n  <title>My Page</title>\n</head>\n<body>\n  <h1>Hello World</h1>\n</body>\n</html>"
        challenge_type = "complete_code"
        challenge_desc = "Complete the HTML document structure by adding the title tag inside the head."
        template = "<!DOCTYPE html>\n<html>\n<head>\n  \n</head>\n<body>\n  <h1>Hello World</h1>\n</body>\n</html>"
        answer = "<!DOCTYPE html>\n<html>\n<head>\n  <title>My Page</title>\n</head>\n<body>\n  <h1>Hello World</h1>\n</body>\n</html>"
        hint = "The title tag goes inside the head section."
    elif level == 2:
        title = "Headings"
        theory = "HTML provides six heading levels from h1 to h6. h1 is the most important, h6 is the least important."
        code = "<h1>Main Heading</h1>\n<h2>Subheading</h2>\n<h3>Section</h3>"
        challenge_type = "complete_code"
        challenge_desc = "Add an h2 heading with the text 'Subtitle' below the h1."
        template = "<h1>Main Title</h1>\n\n<p>Some content</p>"
        answer = "<h1>Main Title</h1>\n<h2>Subtitle</h2>\n<p>Some content</p>"
        hint = "Use the h2 tag for subheadings."
    elif level == 3:
        title = "Paragraphs"
        theory = "The p tag defines a paragraph. Browsers automatically add some space before and after each paragraph."
        code = "<p>This is a paragraph.</p>\n<p>This is another paragraph.</p>"
        challenge_type = "complete_code"
        challenge_desc = "Add a paragraph tag with the text 'Hello World'."
        template = "<body>\n  \n</body>"
        answer = "<body>\n  <p>Hello World</p>\n</body>"
        hint = "Wrap the text in p tags."
    elif level == 4:
        title = "Text Formatting"
        theory = "HTML provides tags for text formatting: strong for bold, em for italic, u for underline, mark for highlighted."
        code = "<p><strong>Bold</strong> and <em>italic</em> text.</p>"
        challenge_type = "complete_code"
        challenge_desc = "Make the word 'important' bold using the strong tag."
        template = "<p>This is <strong>very</strong> important text.</p>"
        answer = "<p>This is <strong>very</strong> <strong>important</strong> text.</p>"
        hint = "Use the strong tag to bold text."
    elif level == 5:
        title = "Links"
        theory = "The a tag creates hyperlinks. The href attribute specifies the URL. Use target='_blank' to open in a new tab."
        code = "<a href='https://example.com'>Visit Example</a>"
        challenge_type = "complete_code"
        challenge_desc = "Create a link to 'https://google.com' with the text 'Search'."
        template = "<p>Click here to </p>"
        answer = "<p>Click here to <a href='https://google.com'>Search</a></p>"
        hint = "Use the a tag with href attribute."
    elif level == 6:
        title = "Images"
        theory = "The img tag embeds images. It requires src (source) and alt (alternative text) attributes. It is a self-closing tag."
        code = "<img src='image.jpg' alt='Description'>"
        challenge_type = "complete_code"
        challenge_desc = "Add an image with src 'logo.png' and alt 'Logo'."
        template = "<div>\n  \n</div>"
        answer = "<div>\n  <img src='logo.png' alt='Logo'>\n</div>"
        hint = "Use the img tag with src and alt attributes."
    elif level == 7:
        title = "Lists"
        theory = "HTML has ordered lists (ol) with numbered items and unordered lists (ul) with bullet points. List items use li."
        code = "<ul>\n  <li>Item 1</li>\n  <li>Item 2</li>\n</ul>"
        challenge_type = "complete_code"
        challenge_desc = "Create an ordered list with two items: 'First' and 'Second'."
        template = "<ol>\n  \n  \n</ol>"
        answer = "<ol>\n  <li>First</li>\n  <li>Second</li>\n</ol>"
        hint = "Use ol for ordered list and li for each item."
    elif level == 8:
        title = "Div and Span"
        theory = "The div tag is a block-level container for grouping elements. The span tag is an inline container for text."
        code = "<div class='container'>\n  <span>Inline text</span>\n</div>"
        challenge_type = "complete_code"
        challenge_desc = "Wrap the paragraph in a div with class 'box'."
        template = "<p>Content here</p>"
        answer = "<div class='box'>\n  <p>Content here</p>\n</div>"
        hint = "Wrap the p tag with a div."
    elif level == 9:
        title = "Attributes"
        theory = "HTML elements can have attributes that provide additional information. Common attributes: id, class, style, title."
        code = "<p class='highlight' id='first' style='color:red'>Styled text</p>"
        challenge_type = "true_false"
        challenge_desc = "The id attribute must be unique within a page."
        template = ""
        answer = "true"
        hint = "Think about HTML rules for identifiers."
    elif level == 10:
        title = "Comments"
        theory = "HTML comments are not displayed in the browser. They help document code. Syntax: <!-- comment -->"
        code = "<!-- This is a comment -->\n<p>Visible content</p>"
        challenge_type = "complete_code"
        challenge_desc = "Add a comment above the paragraph saying 'Main content starts here'."
        template = "\n<p>Welcome!</p>"
        answer = "<!-- Main content starts here -->\n<p>Welcome!</p>"
        hint = "Use <!-- and --> to wrap the comment."
    elif level == 11:
        title = "Class and ID"
        theory = "Classes can be reused on multiple elements. IDs must be unique. Use . for classes and # for IDs in CSS."
        code = "<div class='box' id='main'>Content</div>"
        challenge_type = "true_false"
        challenge_desc = "You can use the same class on multiple elements."
        template = ""
        answer = "true"
        hint = "Think about the difference between class and id."
    elif level == 12:
        title = "Line Breaks"
        theory = "The br tag inserts a line break. It is a self-closing tag. Use it for poetry or addresses, not for spacing."
        code = "<p>Line 1<br>Line 2<br>Line 3</p>"
        challenge_type = "complete_code"
        challenge_desc = "Add a line break between the two sentences."
        template = "<p>First sentence. Second sentence.</p>"
        answer = "<p>First sentence.<br>Second sentence.</p>"
        hint = "Insert a br tag between the sentences."
    elif level == 13:
        title = "Horizontal Rule"
        theory = "The hr tag creates a horizontal line, used to separate content sections."
        code = "<h2>Section 1</h2>\n<p>Content</p>\n<hr>\n<h2>Section 2</h2>"
        challenge_type = "complete_code"
        challenge_desc = "Add a horizontal rule between the two paragraphs."
        template = "<p>First paragraph</p>\n\n<p>Second paragraph</p>"
        answer = "<p>First paragraph</p>\n<hr>\n<p>Second paragraph</p>"
        hint = "Use the hr tag."
    elif level == 14:
        title = "Preformatted Text"
        theory = "The pre tag displays text exactly as written, preserving spaces and line breaks. Useful for code."
        code = "<pre>\n  function hello() {\n    console.log('Hi');\n  }\n</pre>"
        challenge_type = "predict_output"
        challenge_desc = "What will be displayed for the pre tag content?"
        template = ""
        answer = "function hello() { console.log('Hi'); }"
        hint = "The pre tag preserves whitespace and line breaks."
    elif level == 15:
        title = "HTML Entities"
        theory = "HTML entities represent special characters: &amp; for &, &lt; for <, &gt; for >, &nbsp; for space, &copy; for copyright."
        code = "<p>&copy; 2024 My Website</p>"
        challenge_type = "complete_code"
        challenge_desc = "Display the copyright symbol followed by '2024' using the correct entity."
        template = "<p> 2024 My Company</p>"
        answer = "<p>&copy; 2024 My Company</p>"
        hint = "Use the &copy; entity."
    elif level == 16:
        title = "Tables Basics"
        theory = "Tables use table, tr (row), th (header), and td (data) tags. The border attribute adds borders."
        code = "<table border='1'>\n  <tr>\n    <th>Name</th>\n    <th>Age</th>\n  </tr>\n  <tr>\n    <td>John</td>\n    <td>25</td>\n  </tr>\n</table>"
        challenge_type = "complete_code"
        challenge_desc = "Complete the table with a second row: 'Jane' aged 30."
        template = "<table border='1'>\n  <tr>\n    <th>Name</th>\n    <th>Age</th>\n  </tr>\n  <tr>\n    <td>John</td>\n    <td>25</td>\n  </tr>\n  \n</table>"
        answer = "<table border='1'>\n  <tr>\n    <th>Name</th>\n    <th>Age</th>\n  </tr>\n  <tr>\n    <td>John</td>\n    <td>25</td>\n  </tr>\n  <tr>\n    <td>Jane</td>\n    <td>30</td>\n  </tr>\n</table>"
        hint = "Add another tr with two td elements."
    elif level == 17:
        title = "Table Headers"
        theory = "The th tag defines header cells in a table. Browsers usually render them bold and centered."
        code = "<table>\n  <tr>\n    <th>Product</th>\n    <th>Price</th>\n  </tr>\n</table>"
        challenge_type = "true_false"
        challenge_desc = "th elements are typically displayed in bold by default."
        template = ""
        answer = "true"
        hint = "Think about how browsers render header cells."
    elif level == 18:
        title = "Forms"
        theory = "Forms collect user input. The form tag wraps input elements. The input tag has type, name, and placeholder attributes."
        code = "<form>\n  <input type='text' name='username' placeholder='Enter name'>\n  <input type='submit' value='Send'>\n</form>"
        challenge_type = "complete_code"
        challenge_desc = "Add a text input with placeholder 'Your email' and name 'email'."
        template = "<form>\n  \n  <input type='submit' value='Submit'>\n</form>"
        answer = "<form>\n  <input type='text' name='email' placeholder='Your email'>\n  <input type='submit' value='Submit'>\n</form>"
        hint = "Use input type='text' with name and placeholder attributes."
    elif level == 19:
        title = "Input Types"
        theory = "HTML offers various input types: text, password, email, number, date, color, file, checkbox, radio, and more."
        code = "<input type='password' placeholder='Password'>\n<input type='email' placeholder='Email'>"
        challenge_type = "multiple_choice"
        challenge_desc = "Which input type hides the typed characters?"
        template = "text\npassword\nhidden\nsecret"
        answer = "password"
        hint = "Think about which input type shows dots instead of characters."
    elif level == 20:
        title = "Textarea"
        theory = "The textarea tag creates a multi-line text input. Use rows and cols attributes to set size."
        code = "<textarea rows='4' cols='50' placeholder='Write your message here...'></textarea>"
        challenge_type = "complete_code"
        challenge_desc = "Add a textarea with 3 rows and 40 columns."
        template = "<form>\n  <label>Message:</label>\n  \n</form>"
        answer = "<form>\n  <label>Message:</label>\n  <textarea rows='3' cols='40'></textarea>\n</form>"
        hint = "Use the textarea tag with rows and cols attributes."
    elif level <= 40:
        title = "HTML Advanced " + str(level - 20)
        topics = ["Select Dropdown", "Radio Buttons", "Checkboxes", "Buttons", "Fieldset", "Label", "Placeholder", "Required Fields", "Disabled Inputs", "Readonly", "Min Max Length", "Number Input", "Range Slider", "Color Picker", "Date Input", "File Upload", "Hidden Inputs", "Image Input", "URL Input", "Search Input"]
        topic = topics[(level - 21) % len(topics)]
        theory = "This level covers the " + topic + " element in HTML forms."
        code = "<!-- Example of " + topic + " -->\n<form>\n  <input type='text'>\n</form>"
        challenge_type = "complete_code" if level % 3 == 0 else ("fix_bug" if level % 3 == 1 else "true_false")
        challenge_desc = "Apply your knowledge of " + topic + "."
        template = "<!-- Write HTML for " + topic + " -->\n<form>\n  \n</form>"
        answer = "<!-- HTML for " + topic + " -->\n<form>\n  <input type='text'>\n</form>"
        hint = "Review the documentation for " + topic + "."
    elif level <= 60:
        title = "CSS Basics " + str(level - 40)
        topics = ["Inline Styles", "Style Tag", "External CSS", "Color Property", "Background Color", "Font Size", "Font Family", "Text Align", "Font Weight", "Padding", "Margin", "Border", "Width Height", "Display Property", "Position", "Float", "Overflow", "Opacity", "Box Shadow", "Border Radius"]
        topic = topics[(level - 41) % len(topics)]
        theory = "This level covers " + topic + " in CSS. Styling makes HTML look good."
        code = "<style>\n  body { font-family: Arial; }\n</style>\n<h1>Styled</h1>"
        challenge_type = "complete_code" if level % 3 == 0 else ("fix_bug" if level % 3 == 1 else "predict_output")
        challenge_desc = "Apply your knowledge of " + topic + "."
        template = "<style>\n  \n</style>\n<div>Content</div>"
        answer = "<style>\n  div { color: blue; }\n</style>\n<div>Content</div>"
        hint = "Think about how " + topic + " works in CSS."
    elif level <= 80:
        title = "CSS Layout " + str(level - 60)
        topics = ["Flexbox", "Grid", "Media Queries", "Responsive Design", "CSS Variables", "Pseudo Classes", "Pseudo Elements", "Transitions", "Transform", "Animations", "Keyframes", "Z-Index", "Visibility", "Min Max Width", "Box Sizing", "Flex Direction", "Justify Content", "Align Items", "Flex Wrap", "Gap"]
        topic = topics[(level - 61) % len(topics)]
        theory = "This level covers " + topic + " for modern CSS layouts."
        code = "<style>\n  .container { display: flex; }\n</style>"
        challenge_type = "complete_code" if level % 3 == 0 else ("fix_bug" if level % 3 == 1 else "predict_output")
        challenge_desc = "Apply your knowledge of " + topic + "."
        template = "<style>\n  \n</style>\n<div>Layout</div>"
        answer = "<style>\n  div { display: flex; }\n</style>\n<div>Layout</div>"
        hint = "Review " + topic + " documentation."
    else:
        title = "HTML Mastery " + str(level - 80)
        topics = ["Semantic HTML", "Accessibility", "SEO Meta Tags", "Canvas", "SVG", "Audio", "Video", "Iframes", "Local Storage", "Session Storage", "Drag and Drop", "Geolocation", "Web Workers", "Server Sent Events", "Web Sockets", "Microdata", "Open Graph", "Twitter Cards", "Progressive Web Apps", "Service Workers"]
        topic = topics[(level - 81) % len(topics)]
        theory = "Mastering " + topic + " distinguishes expert HTML developers."
        code = "<!-- Advanced: " + topic + " -->\n<div>Expert level</div>"
        challenge_type = "complete_code" if level % 2 == 0 else "true_false"
        challenge_desc = "Complete this advanced challenge on " + topic + "."
        template = "<!-- Expert challenge: " + topic + " -->\n<div>\n  \n</div>"
        answer = "<!-- Expert challenge: " + topic + " -->\n<div>\n  <p>Solution</p>\n</div>"
        hint = "Review the documentation for " + topic + "."

    LESSON_TEMPLATES.append({
        "language": "html",
        "level_number": level,
        "title": title,
        "theory_text": theory,
        "code_example": code,
        "challenge_type": challenge_type,
        "challenge_description": challenge_desc,
        "challenge_template": template,
        "correct_answer": answer,
        "hint": hint,
        "xp_reward": xp,
        "difficulty": difficulty
    })

def generate_sql():
    sql_lines = []
    sql_lines.append("-- HTML lessons seed data (100 levels)")
    sql_lines.append("")

    for lesson in LESSON_TEMPLATES:
        lang = lesson["language"].replace("'", "''")
        title = lesson["title"].replace("'", "''")
        theory = lesson["theory_text"].replace("'", "''")
        code = lesson["code_example"].replace("'", "''")
        ctype = lesson["challenge_type"]
        cdesc = lesson["challenge_description"].replace("'", "''")
        template = lesson["challenge_template"].replace("'", "''")
        answer = lesson["correct_answer"].replace("'", "''")
        hint = lesson["hint"].replace("'", "''")
        xp = lesson["xp_reward"]
        diff = lesson["difficulty"]
        num = lesson["level_number"]

        sql = "INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('" + lang + "', " + str(num) + ", '" + title + "', '" + theory + "', '" + code + "', '" + ctype + "', '" + cdesc + "', '" + template + "', '" + answer + "', '" + hint + "', " + str(xp) + ", '" + diff + "', 1);"
        sql_lines.append(sql)

    return "\n".join(sql_lines)

if __name__ == "__main__":
    sql = generate_sql()
    with open("seed_html_lessons.sql", "w") as f:
        f.write(sql)
    print("Generated " + str(len(LESSON_TEMPLATES)) + " HTML lesson SQL statements")
    print("Output written to seed_html_lessons.sql")