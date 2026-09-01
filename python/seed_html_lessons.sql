-- HTML lessons seed data (100 levels)

INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 1, 'Basic HTML Structure', 'HTML stands for HyperText Markup Language. Every HTML document starts with a doctype declaration and has html, head, and body elements.', '<!DOCTYPE html>
<html>
<head>
  <title>My Page</title>
</head>
<body>
  <h1>Hello World</h1>
</body>
</html>', 'complete_code', 'Complete the HTML document structure by adding the title tag inside the head.', '<!DOCTYPE html>
<html>
<head>
  
</head>
<body>
  <h1>Hello World</h1>
</body>
</html>', '<!DOCTYPE html>
<html>
<head>
  <title>My Page</title>
</head>
<body>
  <h1>Hello World</h1>
</body>
</html>', 'The title tag goes inside the head section.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 2, 'Headings', 'HTML provides six heading levels from h1 to h6. h1 is the most important, h6 is the least important.', '<h1>Main Heading</h1>
<h2>Subheading</h2>
<h3>Section</h3>', 'complete_code', 'Add an h2 heading with the text ''Subtitle'' below the h1.', '<h1>Main Title</h1>

<p>Some content</p>', '<h1>Main Title</h1>
<h2>Subtitle</h2>
<p>Some content</p>', 'Use the h2 tag for subheadings.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 3, 'Paragraphs', 'The p tag defines a paragraph. Browsers automatically add some space before and after each paragraph.', '<p>This is a paragraph.</p>
<p>This is another paragraph.</p>', 'complete_code', 'Add a paragraph tag with the text ''Hello World''.', '<body>
  
</body>', '<body>
  <p>Hello World</p>
</body>', 'Wrap the text in p tags.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 4, 'Text Formatting', 'HTML provides tags for text formatting: strong for bold, em for italic, u for underline, mark for highlighted.', '<p><strong>Bold</strong> and <em>italic</em> text.</p>', 'complete_code', 'Make the word ''important'' bold using the strong tag.', '<p>This is <strong>very</strong> important text.</p>', '<p>This is <strong>very</strong> <strong>important</strong> text.</p>', 'Use the strong tag to bold text.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 5, 'Links', 'The a tag creates hyperlinks. The href attribute specifies the URL. Use target=''_blank'' to open in a new tab.', '<a href=''https://example.com''>Visit Example</a>', 'complete_code', 'Create a link to ''https://google.com'' with the text ''Search''.', '<p>Click here to </p>', '<p>Click here to <a href=''https://google.com''>Search</a></p>', 'Use the a tag with href attribute.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 6, 'Images', 'The img tag embeds images. It requires src (source) and alt (alternative text) attributes. It is a self-closing tag.', '<img src=''image.jpg'' alt=''Description''>', 'complete_code', 'Add an image with src ''logo.png'' and alt ''Logo''.', '<div>
  
</div>', '<div>
  <img src=''logo.png'' alt=''Logo''>
</div>', 'Use the img tag with src and alt attributes.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 7, 'Lists', 'HTML has ordered lists (ol) with numbered items and unordered lists (ul) with bullet points. List items use li.', '<ul>
  <li>Item 1</li>
  <li>Item 2</li>
</ul>', 'complete_code', 'Create an ordered list with two items: ''First'' and ''Second''.', '<ol>
  
  
</ol>', '<ol>
  <li>First</li>
  <li>Second</li>
</ol>', 'Use ol for ordered list and li for each item.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 8, 'Div and Span', 'The div tag is a block-level container for grouping elements. The span tag is an inline container for text.', '<div class=''container''>
  <span>Inline text</span>
</div>', 'complete_code', 'Wrap the paragraph in a div with class ''box''.', '<p>Content here</p>', '<div class=''box''>
  <p>Content here</p>
</div>', 'Wrap the p tag with a div.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 9, 'Attributes', 'HTML elements can have attributes that provide additional information. Common attributes: id, class, style, title.', '<p class=''highlight'' id=''first'' style=''color:red''>Styled text</p>', 'true_false', 'The id attribute must be unique within a page.', '', 'true', 'Think about HTML rules for identifiers.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 10, 'Comments', 'HTML comments are not displayed in the browser. They help document code. Syntax: <!-- comment -->', '<!-- This is a comment -->
<p>Visible content</p>', 'complete_code', 'Add a comment above the paragraph saying ''Main content starts here''.', '
<p>Welcome!</p>', '<!-- Main content starts here -->
<p>Welcome!</p>', 'Use <!-- and --> to wrap the comment.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 11, 'Class and ID', 'Classes can be reused on multiple elements. IDs must be unique. Use . for classes and # for IDs in CSS.', '<div class=''box'' id=''main''>Content</div>', 'true_false', 'You can use the same class on multiple elements.', '', 'true', 'Think about the difference between class and id.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 12, 'Line Breaks', 'The br tag inserts a line break. It is a self-closing tag. Use it for poetry or addresses, not for spacing.', '<p>Line 1<br>Line 2<br>Line 3</p>', 'complete_code', 'Add a line break between the two sentences.', '<p>First sentence. Second sentence.</p>', '<p>First sentence.<br>Second sentence.</p>', 'Insert a br tag between the sentences.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 13, 'Horizontal Rule', 'The hr tag creates a horizontal line, used to separate content sections.', '<h2>Section 1</h2>
<p>Content</p>
<hr>
<h2>Section 2</h2>', 'complete_code', 'Add a horizontal rule between the two paragraphs.', '<p>First paragraph</p>

<p>Second paragraph</p>', '<p>First paragraph</p>
<hr>
<p>Second paragraph</p>', 'Use the hr tag.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 14, 'Preformatted Text', 'The pre tag displays text exactly as written, preserving spaces and line breaks. Useful for code.', '<pre>
  function hello() {
    console.log(''Hi'');
  }
</pre>', 'predict_output', 'What will be displayed for the pre tag content?', '', 'function hello() { console.log(''Hi''); }', 'The pre tag preserves whitespace and line breaks.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 15, 'HTML Entities', 'HTML entities represent special characters: &amp; for &, &lt; for <, &gt; for >, &nbsp; for space, &copy; for copyright.', '<p>&copy; 2024 My Website</p>', 'complete_code', 'Display the copyright symbol followed by ''2024'' using the correct entity.', '<p> 2024 My Company</p>', '<p>&copy; 2024 My Company</p>', 'Use the &copy; entity.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 16, 'Tables Basics', 'Tables use table, tr (row), th (header), and td (data) tags. The border attribute adds borders.', '<table border=''1''>
  <tr>
    <th>Name</th>
    <th>Age</th>
  </tr>
  <tr>
    <td>John</td>
    <td>25</td>
  </tr>
</table>', 'complete_code', 'Complete the table with a second row: ''Jane'' aged 30.', '<table border=''1''>
  <tr>
    <th>Name</th>
    <th>Age</th>
  </tr>
  <tr>
    <td>John</td>
    <td>25</td>
  </tr>
  
</table>', '<table border=''1''>
  <tr>
    <th>Name</th>
    <th>Age</th>
  </tr>
  <tr>
    <td>John</td>
    <td>25</td>
  </tr>
  <tr>
    <td>Jane</td>
    <td>30</td>
  </tr>
</table>', 'Add another tr with two td elements.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 17, 'Table Headers', 'The th tag defines header cells in a table. Browsers usually render them bold and centered.', '<table>
  <tr>
    <th>Product</th>
    <th>Price</th>
  </tr>
</table>', 'true_false', 'th elements are typically displayed in bold by default.', '', 'true', 'Think about how browsers render header cells.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 18, 'Forms', 'Forms collect user input. The form tag wraps input elements. The input tag has type, name, and placeholder attributes.', '<form>
  <input type=''text'' name=''username'' placeholder=''Enter name''>
  <input type=''submit'' value=''Send''>
</form>', 'complete_code', 'Add a text input with placeholder ''Your email'' and name ''email''.', '<form>
  
  <input type=''submit'' value=''Submit''>
</form>', '<form>
  <input type=''text'' name=''email'' placeholder=''Your email''>
  <input type=''submit'' value=''Submit''>
</form>', 'Use input type=''text'' with name and placeholder attributes.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 19, 'Input Types', 'HTML offers various input types: text, password, email, number, date, color, file, checkbox, radio, and more.', '<input type=''password'' placeholder=''Password''>
<input type=''email'' placeholder=''Email''>', 'multiple_choice', 'Which input type hides the typed characters?', 'text
password
hidden
secret', 'password', 'Think about which input type shows dots instead of characters.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 20, 'Textarea', 'The textarea tag creates a multi-line text input. Use rows and cols attributes to set size.', '<textarea rows=''4'' cols=''50'' placeholder=''Write your message here...''></textarea>', 'complete_code', 'Add a textarea with 3 rows and 40 columns.', '<form>
  <label>Message:</label>
  
</form>', '<form>
  <label>Message:</label>
  <textarea rows=''3'' cols=''40''></textarea>
</form>', 'Use the textarea tag with rows and cols attributes.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 21, 'HTML Advanced 1', 'This level covers the Select Dropdown element in HTML forms.', '<!-- Example of Select Dropdown -->
<form>
  <input type=''text''>
</form>', 'complete_code', 'Apply your knowledge of Select Dropdown.', '<!-- Write HTML for Select Dropdown -->
<form>
  
</form>', '<!-- HTML for Select Dropdown -->
<form>
  <input type=''text''>
</form>', 'Review the documentation for Select Dropdown.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 22, 'HTML Advanced 2', 'This level covers the Radio Buttons element in HTML forms.', '<!-- Example of Radio Buttons -->
<form>
  <input type=''text''>
</form>', 'fix_bug', 'Apply your knowledge of Radio Buttons.', '<!-- Write HTML for Radio Buttons -->
<form>
  
</form>', '<!-- HTML for Radio Buttons -->
<form>
  <input type=''text''>
</form>', 'Review the documentation for Radio Buttons.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 23, 'HTML Advanced 3', 'This level covers the Checkboxes element in HTML forms.', '<!-- Example of Checkboxes -->
<form>
  <input type=''text''>
</form>', 'true_false', 'Apply your knowledge of Checkboxes.', '<!-- Write HTML for Checkboxes -->
<form>
  
</form>', '<!-- HTML for Checkboxes -->
<form>
  <input type=''text''>
</form>', 'Review the documentation for Checkboxes.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 24, 'HTML Advanced 4', 'This level covers the Buttons element in HTML forms.', '<!-- Example of Buttons -->
<form>
  <input type=''text''>
</form>', 'complete_code', 'Apply your knowledge of Buttons.', '<!-- Write HTML for Buttons -->
<form>
  
</form>', '<!-- HTML for Buttons -->
<form>
  <input type=''text''>
</form>', 'Review the documentation for Buttons.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 25, 'HTML Advanced 5', 'This level covers the Fieldset element in HTML forms.', '<!-- Example of Fieldset -->
<form>
  <input type=''text''>
</form>', 'fix_bug', 'Apply your knowledge of Fieldset.', '<!-- Write HTML for Fieldset -->
<form>
  
</form>', '<!-- HTML for Fieldset -->
<form>
  <input type=''text''>
</form>', 'Review the documentation for Fieldset.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 26, 'HTML Advanced 6', 'This level covers the Label element in HTML forms.', '<!-- Example of Label -->
<form>
  <input type=''text''>
</form>', 'true_false', 'Apply your knowledge of Label.', '<!-- Write HTML for Label -->
<form>
  
</form>', '<!-- HTML for Label -->
<form>
  <input type=''text''>
</form>', 'Review the documentation for Label.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 27, 'HTML Advanced 7', 'This level covers the Placeholder element in HTML forms.', '<!-- Example of Placeholder -->
<form>
  <input type=''text''>
</form>', 'complete_code', 'Apply your knowledge of Placeholder.', '<!-- Write HTML for Placeholder -->
<form>
  
</form>', '<!-- HTML for Placeholder -->
<form>
  <input type=''text''>
</form>', 'Review the documentation for Placeholder.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 28, 'HTML Advanced 8', 'This level covers the Required Fields element in HTML forms.', '<!-- Example of Required Fields -->
<form>
  <input type=''text''>
</form>', 'fix_bug', 'Apply your knowledge of Required Fields.', '<!-- Write HTML for Required Fields -->
<form>
  
</form>', '<!-- HTML for Required Fields -->
<form>
  <input type=''text''>
</form>', 'Review the documentation for Required Fields.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 29, 'HTML Advanced 9', 'This level covers the Disabled Inputs element in HTML forms.', '<!-- Example of Disabled Inputs -->
<form>
  <input type=''text''>
</form>', 'true_false', 'Apply your knowledge of Disabled Inputs.', '<!-- Write HTML for Disabled Inputs -->
<form>
  
</form>', '<!-- HTML for Disabled Inputs -->
<form>
  <input type=''text''>
</form>', 'Review the documentation for Disabled Inputs.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 30, 'HTML Advanced 10', 'This level covers the Readonly element in HTML forms.', '<!-- Example of Readonly -->
<form>
  <input type=''text''>
</form>', 'complete_code', 'Apply your knowledge of Readonly.', '<!-- Write HTML for Readonly -->
<form>
  
</form>', '<!-- HTML for Readonly -->
<form>
  <input type=''text''>
</form>', 'Review the documentation for Readonly.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 31, 'HTML Advanced 11', 'This level covers the Min Max Length element in HTML forms.', '<!-- Example of Min Max Length -->
<form>
  <input type=''text''>
</form>', 'fix_bug', 'Apply your knowledge of Min Max Length.', '<!-- Write HTML for Min Max Length -->
<form>
  
</form>', '<!-- HTML for Min Max Length -->
<form>
  <input type=''text''>
</form>', 'Review the documentation for Min Max Length.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 32, 'HTML Advanced 12', 'This level covers the Number Input element in HTML forms.', '<!-- Example of Number Input -->
<form>
  <input type=''text''>
</form>', 'true_false', 'Apply your knowledge of Number Input.', '<!-- Write HTML for Number Input -->
<form>
  
</form>', '<!-- HTML for Number Input -->
<form>
  <input type=''text''>
</form>', 'Review the documentation for Number Input.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 33, 'HTML Advanced 13', 'This level covers the Range Slider element in HTML forms.', '<!-- Example of Range Slider -->
<form>
  <input type=''text''>
</form>', 'complete_code', 'Apply your knowledge of Range Slider.', '<!-- Write HTML for Range Slider -->
<form>
  
</form>', '<!-- HTML for Range Slider -->
<form>
  <input type=''text''>
</form>', 'Review the documentation for Range Slider.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 34, 'HTML Advanced 14', 'This level covers the Color Picker element in HTML forms.', '<!-- Example of Color Picker -->
<form>
  <input type=''text''>
</form>', 'fix_bug', 'Apply your knowledge of Color Picker.', '<!-- Write HTML for Color Picker -->
<form>
  
</form>', '<!-- HTML for Color Picker -->
<form>
  <input type=''text''>
</form>', 'Review the documentation for Color Picker.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 35, 'HTML Advanced 15', 'This level covers the Date Input element in HTML forms.', '<!-- Example of Date Input -->
<form>
  <input type=''text''>
</form>', 'true_false', 'Apply your knowledge of Date Input.', '<!-- Write HTML for Date Input -->
<form>
  
</form>', '<!-- HTML for Date Input -->
<form>
  <input type=''text''>
</form>', 'Review the documentation for Date Input.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 36, 'HTML Advanced 16', 'This level covers the File Upload element in HTML forms.', '<!-- Example of File Upload -->
<form>
  <input type=''text''>
</form>', 'complete_code', 'Apply your knowledge of File Upload.', '<!-- Write HTML for File Upload -->
<form>
  
</form>', '<!-- HTML for File Upload -->
<form>
  <input type=''text''>
</form>', 'Review the documentation for File Upload.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 37, 'HTML Advanced 17', 'This level covers the Hidden Inputs element in HTML forms.', '<!-- Example of Hidden Inputs -->
<form>
  <input type=''text''>
</form>', 'fix_bug', 'Apply your knowledge of Hidden Inputs.', '<!-- Write HTML for Hidden Inputs -->
<form>
  
</form>', '<!-- HTML for Hidden Inputs -->
<form>
  <input type=''text''>
</form>', 'Review the documentation for Hidden Inputs.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 38, 'HTML Advanced 18', 'This level covers the Image Input element in HTML forms.', '<!-- Example of Image Input -->
<form>
  <input type=''text''>
</form>', 'true_false', 'Apply your knowledge of Image Input.', '<!-- Write HTML for Image Input -->
<form>
  
</form>', '<!-- HTML for Image Input -->
<form>
  <input type=''text''>
</form>', 'Review the documentation for Image Input.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 39, 'HTML Advanced 19', 'This level covers the URL Input element in HTML forms.', '<!-- Example of URL Input -->
<form>
  <input type=''text''>
</form>', 'complete_code', 'Apply your knowledge of URL Input.', '<!-- Write HTML for URL Input -->
<form>
  
</form>', '<!-- HTML for URL Input -->
<form>
  <input type=''text''>
</form>', 'Review the documentation for URL Input.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 40, 'HTML Advanced 20', 'This level covers the Search Input element in HTML forms.', '<!-- Example of Search Input -->
<form>
  <input type=''text''>
</form>', 'fix_bug', 'Apply your knowledge of Search Input.', '<!-- Write HTML for Search Input -->
<form>
  
</form>', '<!-- HTML for Search Input -->
<form>
  <input type=''text''>
</form>', 'Review the documentation for Search Input.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 41, 'CSS Basics 1', 'This level covers Inline Styles in CSS. Styling makes HTML look good.', '<style>
  body { font-family: Arial; }
</style>
<h1>Styled</h1>', 'predict_output', 'Apply your knowledge of Inline Styles.', '<style>
  
</style>
<div>Content</div>', '<style>
  div { color: blue; }
</style>
<div>Content</div>', 'Think about how Inline Styles works in CSS.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 42, 'CSS Basics 2', 'This level covers Style Tag in CSS. Styling makes HTML look good.', '<style>
  body { font-family: Arial; }
</style>
<h1>Styled</h1>', 'complete_code', 'Apply your knowledge of Style Tag.', '<style>
  
</style>
<div>Content</div>', '<style>
  div { color: blue; }
</style>
<div>Content</div>', 'Think about how Style Tag works in CSS.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 43, 'CSS Basics 3', 'This level covers External CSS in CSS. Styling makes HTML look good.', '<style>
  body { font-family: Arial; }
</style>
<h1>Styled</h1>', 'fix_bug', 'Apply your knowledge of External CSS.', '<style>
  
</style>
<div>Content</div>', '<style>
  div { color: blue; }
</style>
<div>Content</div>', 'Think about how External CSS works in CSS.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 44, 'CSS Basics 4', 'This level covers Color Property in CSS. Styling makes HTML look good.', '<style>
  body { font-family: Arial; }
</style>
<h1>Styled</h1>', 'predict_output', 'Apply your knowledge of Color Property.', '<style>
  
</style>
<div>Content</div>', '<style>
  div { color: blue; }
</style>
<div>Content</div>', 'Think about how Color Property works in CSS.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 45, 'CSS Basics 5', 'This level covers Background Color in CSS. Styling makes HTML look good.', '<style>
  body { font-family: Arial; }
</style>
<h1>Styled</h1>', 'complete_code', 'Apply your knowledge of Background Color.', '<style>
  
</style>
<div>Content</div>', '<style>
  div { color: blue; }
</style>
<div>Content</div>', 'Think about how Background Color works in CSS.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 46, 'CSS Basics 6', 'This level covers Font Size in CSS. Styling makes HTML look good.', '<style>
  body { font-family: Arial; }
</style>
<h1>Styled</h1>', 'fix_bug', 'Apply your knowledge of Font Size.', '<style>
  
</style>
<div>Content</div>', '<style>
  div { color: blue; }
</style>
<div>Content</div>', 'Think about how Font Size works in CSS.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 47, 'CSS Basics 7', 'This level covers Font Family in CSS. Styling makes HTML look good.', '<style>
  body { font-family: Arial; }
</style>
<h1>Styled</h1>', 'predict_output', 'Apply your knowledge of Font Family.', '<style>
  
</style>
<div>Content</div>', '<style>
  div { color: blue; }
</style>
<div>Content</div>', 'Think about how Font Family works in CSS.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 48, 'CSS Basics 8', 'This level covers Text Align in CSS. Styling makes HTML look good.', '<style>
  body { font-family: Arial; }
</style>
<h1>Styled</h1>', 'complete_code', 'Apply your knowledge of Text Align.', '<style>
  
</style>
<div>Content</div>', '<style>
  div { color: blue; }
</style>
<div>Content</div>', 'Think about how Text Align works in CSS.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 49, 'CSS Basics 9', 'This level covers Font Weight in CSS. Styling makes HTML look good.', '<style>
  body { font-family: Arial; }
</style>
<h1>Styled</h1>', 'fix_bug', 'Apply your knowledge of Font Weight.', '<style>
  
</style>
<div>Content</div>', '<style>
  div { color: blue; }
</style>
<div>Content</div>', 'Think about how Font Weight works in CSS.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 50, 'CSS Basics 10', 'This level covers Padding in CSS. Styling makes HTML look good.', '<style>
  body { font-family: Arial; }
</style>
<h1>Styled</h1>', 'predict_output', 'Apply your knowledge of Padding.', '<style>
  
</style>
<div>Content</div>', '<style>
  div { color: blue; }
</style>
<div>Content</div>', 'Think about how Padding works in CSS.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 51, 'CSS Basics 11', 'This level covers Margin in CSS. Styling makes HTML look good.', '<style>
  body { font-family: Arial; }
</style>
<h1>Styled</h1>', 'complete_code', 'Apply your knowledge of Margin.', '<style>
  
</style>
<div>Content</div>', '<style>
  div { color: blue; }
</style>
<div>Content</div>', 'Think about how Margin works in CSS.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 52, 'CSS Basics 12', 'This level covers Border in CSS. Styling makes HTML look good.', '<style>
  body { font-family: Arial; }
</style>
<h1>Styled</h1>', 'fix_bug', 'Apply your knowledge of Border.', '<style>
  
</style>
<div>Content</div>', '<style>
  div { color: blue; }
</style>
<div>Content</div>', 'Think about how Border works in CSS.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 53, 'CSS Basics 13', 'This level covers Width Height in CSS. Styling makes HTML look good.', '<style>
  body { font-family: Arial; }
</style>
<h1>Styled</h1>', 'predict_output', 'Apply your knowledge of Width Height.', '<style>
  
</style>
<div>Content</div>', '<style>
  div { color: blue; }
</style>
<div>Content</div>', 'Think about how Width Height works in CSS.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 54, 'CSS Basics 14', 'This level covers Display Property in CSS. Styling makes HTML look good.', '<style>
  body { font-family: Arial; }
</style>
<h1>Styled</h1>', 'complete_code', 'Apply your knowledge of Display Property.', '<style>
  
</style>
<div>Content</div>', '<style>
  div { color: blue; }
</style>
<div>Content</div>', 'Think about how Display Property works in CSS.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 55, 'CSS Basics 15', 'This level covers Position in CSS. Styling makes HTML look good.', '<style>
  body { font-family: Arial; }
</style>
<h1>Styled</h1>', 'fix_bug', 'Apply your knowledge of Position.', '<style>
  
</style>
<div>Content</div>', '<style>
  div { color: blue; }
</style>
<div>Content</div>', 'Think about how Position works in CSS.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 56, 'CSS Basics 16', 'This level covers Float in CSS. Styling makes HTML look good.', '<style>
  body { font-family: Arial; }
</style>
<h1>Styled</h1>', 'predict_output', 'Apply your knowledge of Float.', '<style>
  
</style>
<div>Content</div>', '<style>
  div { color: blue; }
</style>
<div>Content</div>', 'Think about how Float works in CSS.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 57, 'CSS Basics 17', 'This level covers Overflow in CSS. Styling makes HTML look good.', '<style>
  body { font-family: Arial; }
</style>
<h1>Styled</h1>', 'complete_code', 'Apply your knowledge of Overflow.', '<style>
  
</style>
<div>Content</div>', '<style>
  div { color: blue; }
</style>
<div>Content</div>', 'Think about how Overflow works in CSS.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 58, 'CSS Basics 18', 'This level covers Opacity in CSS. Styling makes HTML look good.', '<style>
  body { font-family: Arial; }
</style>
<h1>Styled</h1>', 'fix_bug', 'Apply your knowledge of Opacity.', '<style>
  
</style>
<div>Content</div>', '<style>
  div { color: blue; }
</style>
<div>Content</div>', 'Think about how Opacity works in CSS.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 59, 'CSS Basics 19', 'This level covers Box Shadow in CSS. Styling makes HTML look good.', '<style>
  body { font-family: Arial; }
</style>
<h1>Styled</h1>', 'predict_output', 'Apply your knowledge of Box Shadow.', '<style>
  
</style>
<div>Content</div>', '<style>
  div { color: blue; }
</style>
<div>Content</div>', 'Think about how Box Shadow works in CSS.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 60, 'CSS Basics 20', 'This level covers Border Radius in CSS. Styling makes HTML look good.', '<style>
  body { font-family: Arial; }
</style>
<h1>Styled</h1>', 'complete_code', 'Apply your knowledge of Border Radius.', '<style>
  
</style>
<div>Content</div>', '<style>
  div { color: blue; }
</style>
<div>Content</div>', 'Think about how Border Radius works in CSS.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 61, 'CSS Layout 1', 'This level covers Flexbox for modern CSS layouts.', '<style>
  .container { display: flex; }
</style>', 'fix_bug', 'Apply your knowledge of Flexbox.', '<style>
  
</style>
<div>Layout</div>', '<style>
  div { display: flex; }
</style>
<div>Layout</div>', 'Review Flexbox documentation.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 62, 'CSS Layout 2', 'This level covers Grid for modern CSS layouts.', '<style>
  .container { display: flex; }
</style>', 'predict_output', 'Apply your knowledge of Grid.', '<style>
  
</style>
<div>Layout</div>', '<style>
  div { display: flex; }
</style>
<div>Layout</div>', 'Review Grid documentation.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 63, 'CSS Layout 3', 'This level covers Media Queries for modern CSS layouts.', '<style>
  .container { display: flex; }
</style>', 'complete_code', 'Apply your knowledge of Media Queries.', '<style>
  
</style>
<div>Layout</div>', '<style>
  div { display: flex; }
</style>
<div>Layout</div>', 'Review Media Queries documentation.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 64, 'CSS Layout 4', 'This level covers Responsive Design for modern CSS layouts.', '<style>
  .container { display: flex; }
</style>', 'fix_bug', 'Apply your knowledge of Responsive Design.', '<style>
  
</style>
<div>Layout</div>', '<style>
  div { display: flex; }
</style>
<div>Layout</div>', 'Review Responsive Design documentation.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 65, 'CSS Layout 5', 'This level covers CSS Variables for modern CSS layouts.', '<style>
  .container { display: flex; }
</style>', 'predict_output', 'Apply your knowledge of CSS Variables.', '<style>
  
</style>
<div>Layout</div>', '<style>
  div { display: flex; }
</style>
<div>Layout</div>', 'Review CSS Variables documentation.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 66, 'CSS Layout 6', 'This level covers Pseudo Classes for modern CSS layouts.', '<style>
  .container { display: flex; }
</style>', 'complete_code', 'Apply your knowledge of Pseudo Classes.', '<style>
  
</style>
<div>Layout</div>', '<style>
  div { display: flex; }
</style>
<div>Layout</div>', 'Review Pseudo Classes documentation.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 67, 'CSS Layout 7', 'This level covers Pseudo Elements for modern CSS layouts.', '<style>
  .container { display: flex; }
</style>', 'fix_bug', 'Apply your knowledge of Pseudo Elements.', '<style>
  
</style>
<div>Layout</div>', '<style>
  div { display: flex; }
</style>
<div>Layout</div>', 'Review Pseudo Elements documentation.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 68, 'CSS Layout 8', 'This level covers Transitions for modern CSS layouts.', '<style>
  .container { display: flex; }
</style>', 'predict_output', 'Apply your knowledge of Transitions.', '<style>
  
</style>
<div>Layout</div>', '<style>
  div { display: flex; }
</style>
<div>Layout</div>', 'Review Transitions documentation.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 69, 'CSS Layout 9', 'This level covers Transform for modern CSS layouts.', '<style>
  .container { display: flex; }
</style>', 'complete_code', 'Apply your knowledge of Transform.', '<style>
  
</style>
<div>Layout</div>', '<style>
  div { display: flex; }
</style>
<div>Layout</div>', 'Review Transform documentation.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 70, 'CSS Layout 10', 'This level covers Animations for modern CSS layouts.', '<style>
  .container { display: flex; }
</style>', 'fix_bug', 'Apply your knowledge of Animations.', '<style>
  
</style>
<div>Layout</div>', '<style>
  div { display: flex; }
</style>
<div>Layout</div>', 'Review Animations documentation.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 71, 'CSS Layout 11', 'This level covers Keyframes for modern CSS layouts.', '<style>
  .container { display: flex; }
</style>', 'predict_output', 'Apply your knowledge of Keyframes.', '<style>
  
</style>
<div>Layout</div>', '<style>
  div { display: flex; }
</style>
<div>Layout</div>', 'Review Keyframes documentation.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 72, 'CSS Layout 12', 'This level covers Z-Index for modern CSS layouts.', '<style>
  .container { display: flex; }
</style>', 'complete_code', 'Apply your knowledge of Z-Index.', '<style>
  
</style>
<div>Layout</div>', '<style>
  div { display: flex; }
</style>
<div>Layout</div>', 'Review Z-Index documentation.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 73, 'CSS Layout 13', 'This level covers Visibility for modern CSS layouts.', '<style>
  .container { display: flex; }
</style>', 'fix_bug', 'Apply your knowledge of Visibility.', '<style>
  
</style>
<div>Layout</div>', '<style>
  div { display: flex; }
</style>
<div>Layout</div>', 'Review Visibility documentation.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 74, 'CSS Layout 14', 'This level covers Min Max Width for modern CSS layouts.', '<style>
  .container { display: flex; }
</style>', 'predict_output', 'Apply your knowledge of Min Max Width.', '<style>
  
</style>
<div>Layout</div>', '<style>
  div { display: flex; }
</style>
<div>Layout</div>', 'Review Min Max Width documentation.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 75, 'CSS Layout 15', 'This level covers Box Sizing for modern CSS layouts.', '<style>
  .container { display: flex; }
</style>', 'complete_code', 'Apply your knowledge of Box Sizing.', '<style>
  
</style>
<div>Layout</div>', '<style>
  div { display: flex; }
</style>
<div>Layout</div>', 'Review Box Sizing documentation.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 76, 'CSS Layout 16', 'This level covers Flex Direction for modern CSS layouts.', '<style>
  .container { display: flex; }
</style>', 'fix_bug', 'Apply your knowledge of Flex Direction.', '<style>
  
</style>
<div>Layout</div>', '<style>
  div { display: flex; }
</style>
<div>Layout</div>', 'Review Flex Direction documentation.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 77, 'CSS Layout 17', 'This level covers Justify Content for modern CSS layouts.', '<style>
  .container { display: flex; }
</style>', 'predict_output', 'Apply your knowledge of Justify Content.', '<style>
  
</style>
<div>Layout</div>', '<style>
  div { display: flex; }
</style>
<div>Layout</div>', 'Review Justify Content documentation.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 78, 'CSS Layout 18', 'This level covers Align Items for modern CSS layouts.', '<style>
  .container { display: flex; }
</style>', 'complete_code', 'Apply your knowledge of Align Items.', '<style>
  
</style>
<div>Layout</div>', '<style>
  div { display: flex; }
</style>
<div>Layout</div>', 'Review Align Items documentation.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 79, 'CSS Layout 19', 'This level covers Flex Wrap for modern CSS layouts.', '<style>
  .container { display: flex; }
</style>', 'fix_bug', 'Apply your knowledge of Flex Wrap.', '<style>
  
</style>
<div>Layout</div>', '<style>
  div { display: flex; }
</style>
<div>Layout</div>', 'Review Flex Wrap documentation.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 80, 'CSS Layout 20', 'This level covers Gap for modern CSS layouts.', '<style>
  .container { display: flex; }
</style>', 'predict_output', 'Apply your knowledge of Gap.', '<style>
  
</style>
<div>Layout</div>', '<style>
  div { display: flex; }
</style>
<div>Layout</div>', 'Review Gap documentation.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 81, 'HTML Mastery 1', 'Mastering Semantic HTML distinguishes expert HTML developers.', '<!-- Advanced: Semantic HTML -->
<div>Expert level</div>', 'true_false', 'Complete this advanced challenge on Semantic HTML.', '<!-- Expert challenge: Semantic HTML -->
<div>
  
</div>', '<!-- Expert challenge: Semantic HTML -->
<div>
  <p>Solution</p>
</div>', 'Review the documentation for Semantic HTML.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 82, 'HTML Mastery 2', 'Mastering Accessibility distinguishes expert HTML developers.', '<!-- Advanced: Accessibility -->
<div>Expert level</div>', 'complete_code', 'Complete this advanced challenge on Accessibility.', '<!-- Expert challenge: Accessibility -->
<div>
  
</div>', '<!-- Expert challenge: Accessibility -->
<div>
  <p>Solution</p>
</div>', 'Review the documentation for Accessibility.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 83, 'HTML Mastery 3', 'Mastering SEO Meta Tags distinguishes expert HTML developers.', '<!-- Advanced: SEO Meta Tags -->
<div>Expert level</div>', 'true_false', 'Complete this advanced challenge on SEO Meta Tags.', '<!-- Expert challenge: SEO Meta Tags -->
<div>
  
</div>', '<!-- Expert challenge: SEO Meta Tags -->
<div>
  <p>Solution</p>
</div>', 'Review the documentation for SEO Meta Tags.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 84, 'HTML Mastery 4', 'Mastering Canvas distinguishes expert HTML developers.', '<!-- Advanced: Canvas -->
<div>Expert level</div>', 'complete_code', 'Complete this advanced challenge on Canvas.', '<!-- Expert challenge: Canvas -->
<div>
  
</div>', '<!-- Expert challenge: Canvas -->
<div>
  <p>Solution</p>
</div>', 'Review the documentation for Canvas.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 85, 'HTML Mastery 5', 'Mastering SVG distinguishes expert HTML developers.', '<!-- Advanced: SVG -->
<div>Expert level</div>', 'true_false', 'Complete this advanced challenge on SVG.', '<!-- Expert challenge: SVG -->
<div>
  
</div>', '<!-- Expert challenge: SVG -->
<div>
  <p>Solution</p>
</div>', 'Review the documentation for SVG.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 86, 'HTML Mastery 6', 'Mastering Audio distinguishes expert HTML developers.', '<!-- Advanced: Audio -->
<div>Expert level</div>', 'complete_code', 'Complete this advanced challenge on Audio.', '<!-- Expert challenge: Audio -->
<div>
  
</div>', '<!-- Expert challenge: Audio -->
<div>
  <p>Solution</p>
</div>', 'Review the documentation for Audio.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 87, 'HTML Mastery 7', 'Mastering Video distinguishes expert HTML developers.', '<!-- Advanced: Video -->
<div>Expert level</div>', 'true_false', 'Complete this advanced challenge on Video.', '<!-- Expert challenge: Video -->
<div>
  
</div>', '<!-- Expert challenge: Video -->
<div>
  <p>Solution</p>
</div>', 'Review the documentation for Video.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 88, 'HTML Mastery 8', 'Mastering Iframes distinguishes expert HTML developers.', '<!-- Advanced: Iframes -->
<div>Expert level</div>', 'complete_code', 'Complete this advanced challenge on Iframes.', '<!-- Expert challenge: Iframes -->
<div>
  
</div>', '<!-- Expert challenge: Iframes -->
<div>
  <p>Solution</p>
</div>', 'Review the documentation for Iframes.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 89, 'HTML Mastery 9', 'Mastering Local Storage distinguishes expert HTML developers.', '<!-- Advanced: Local Storage -->
<div>Expert level</div>', 'true_false', 'Complete this advanced challenge on Local Storage.', '<!-- Expert challenge: Local Storage -->
<div>
  
</div>', '<!-- Expert challenge: Local Storage -->
<div>
  <p>Solution</p>
</div>', 'Review the documentation for Local Storage.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 90, 'HTML Mastery 10', 'Mastering Session Storage distinguishes expert HTML developers.', '<!-- Advanced: Session Storage -->
<div>Expert level</div>', 'complete_code', 'Complete this advanced challenge on Session Storage.', '<!-- Expert challenge: Session Storage -->
<div>
  
</div>', '<!-- Expert challenge: Session Storage -->
<div>
  <p>Solution</p>
</div>', 'Review the documentation for Session Storage.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 91, 'HTML Mastery 11', 'Mastering Drag and Drop distinguishes expert HTML developers.', '<!-- Advanced: Drag and Drop -->
<div>Expert level</div>', 'true_false', 'Complete this advanced challenge on Drag and Drop.', '<!-- Expert challenge: Drag and Drop -->
<div>
  
</div>', '<!-- Expert challenge: Drag and Drop -->
<div>
  <p>Solution</p>
</div>', 'Review the documentation for Drag and Drop.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 92, 'HTML Mastery 12', 'Mastering Geolocation distinguishes expert HTML developers.', '<!-- Advanced: Geolocation -->
<div>Expert level</div>', 'complete_code', 'Complete this advanced challenge on Geolocation.', '<!-- Expert challenge: Geolocation -->
<div>
  
</div>', '<!-- Expert challenge: Geolocation -->
<div>
  <p>Solution</p>
</div>', 'Review the documentation for Geolocation.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 93, 'HTML Mastery 13', 'Mastering Web Workers distinguishes expert HTML developers.', '<!-- Advanced: Web Workers -->
<div>Expert level</div>', 'true_false', 'Complete this advanced challenge on Web Workers.', '<!-- Expert challenge: Web Workers -->
<div>
  
</div>', '<!-- Expert challenge: Web Workers -->
<div>
  <p>Solution</p>
</div>', 'Review the documentation for Web Workers.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 94, 'HTML Mastery 14', 'Mastering Server Sent Events distinguishes expert HTML developers.', '<!-- Advanced: Server Sent Events -->
<div>Expert level</div>', 'complete_code', 'Complete this advanced challenge on Server Sent Events.', '<!-- Expert challenge: Server Sent Events -->
<div>
  
</div>', '<!-- Expert challenge: Server Sent Events -->
<div>
  <p>Solution</p>
</div>', 'Review the documentation for Server Sent Events.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 95, 'HTML Mastery 15', 'Mastering Web Sockets distinguishes expert HTML developers.', '<!-- Advanced: Web Sockets -->
<div>Expert level</div>', 'true_false', 'Complete this advanced challenge on Web Sockets.', '<!-- Expert challenge: Web Sockets -->
<div>
  
</div>', '<!-- Expert challenge: Web Sockets -->
<div>
  <p>Solution</p>
</div>', 'Review the documentation for Web Sockets.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 96, 'HTML Mastery 16', 'Mastering Microdata distinguishes expert HTML developers.', '<!-- Advanced: Microdata -->
<div>Expert level</div>', 'complete_code', 'Complete this advanced challenge on Microdata.', '<!-- Expert challenge: Microdata -->
<div>
  
</div>', '<!-- Expert challenge: Microdata -->
<div>
  <p>Solution</p>
</div>', 'Review the documentation for Microdata.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 97, 'HTML Mastery 17', 'Mastering Open Graph distinguishes expert HTML developers.', '<!-- Advanced: Open Graph -->
<div>Expert level</div>', 'true_false', 'Complete this advanced challenge on Open Graph.', '<!-- Expert challenge: Open Graph -->
<div>
  
</div>', '<!-- Expert challenge: Open Graph -->
<div>
  <p>Solution</p>
</div>', 'Review the documentation for Open Graph.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 98, 'HTML Mastery 18', 'Mastering Twitter Cards distinguishes expert HTML developers.', '<!-- Advanced: Twitter Cards -->
<div>Expert level</div>', 'complete_code', 'Complete this advanced challenge on Twitter Cards.', '<!-- Expert challenge: Twitter Cards -->
<div>
  
</div>', '<!-- Expert challenge: Twitter Cards -->
<div>
  <p>Solution</p>
</div>', 'Review the documentation for Twitter Cards.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 99, 'HTML Mastery 19', 'Mastering Progressive Web Apps distinguishes expert HTML developers.', '<!-- Advanced: Progressive Web Apps -->
<div>Expert level</div>', 'true_false', 'Complete this advanced challenge on Progressive Web Apps.', '<!-- Expert challenge: Progressive Web Apps -->
<div>
  
</div>', '<!-- Expert challenge: Progressive Web Apps -->
<div>
  <p>Solution</p>
</div>', 'Review the documentation for Progressive Web Apps.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 100, 'HTML Mastery 20', 'Mastering Service Workers distinguishes expert HTML developers.', '<!-- Advanced: Service Workers -->
<div>Expert level</div>', 'complete_code', 'Complete this advanced challenge on Service Workers.', '<!-- Expert challenge: Service Workers -->
<div>
  
</div>', '<!-- Expert challenge: Service Workers -->
<div>
  <p>Solution</p>
</div>', 'Review the documentation for Service Workers.', 150, 'hard', 1);