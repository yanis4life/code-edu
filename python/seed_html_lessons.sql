-- HTML lessons seed data (100 levels)

INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 1, 'Basic HTML Structure', 'HTML stands for HyperText Markup Language. Every HTML document starts with a doctype declaration and has html, head, and body elements.', '<!DOCTYPE html>
<html>
<head>
  <title>My Page</title>
</head>
<body>
  <h1>Hello World</h1>
</body>
</html>', 'complete_code', 'Add a title tag with the text ''My Page'' inside the head section.', '<!DOCTYPE html>
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
<p>This is another paragraph.</p>', 'complete_code', 'Add a paragraph tag with the text ''Hello World'' inside the body.', '<body>
  
</body>', '<body>
  <p>Hello World</p>
</body>', 'Wrap the text in p tags.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 4, 'Text Formatting', 'HTML provides tags for text formatting: strong for bold, em for italic, u for underline, mark for highlighted.', '<p><strong>Bold</strong> and <em>italic</em> text.</p>', 'complete_code', 'Wrap the word ''important'' in a strong tag to make it bold.', '<p>This is very important text.</p>', '<p>This is very <strong>important</strong> text.</p>', 'Use the strong tag around the word important.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 5, 'Links', 'The a tag creates hyperlinks. The href attribute specifies the URL. Use target=''_blank'' to open in a new tab.', '<a href=''https://example.com''>Visit Example</a>', 'complete_code', 'Create a link to ''https://google.com'' with the text ''Search''.', '<p>Click here to </p>', '<p>Click here to <a href=''https://google.com''>Search</a></p>', 'Use the a tag with href attribute.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 6, 'Images', 'The img tag embeds images. It requires src (source) and alt (alternative text) attributes. It is a self-closing tag.', '<img src=''image.jpg'' alt=''Description''>', 'complete_code', 'Add an image with src ''logo.png'' and alt ''Logo'' inside a div.', '<div>
  
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
  Line one
  Line two
</pre>', 'predict_output', 'What text will the browser display from this pre tag?', '', '  Line one
  Line two', 'The pre tag preserves whitespace and line breaks exactly as written.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 15, 'HTML Entities', 'HTML entities represent special characters: &amp; for &, &lt; for <, &gt; for >, &nbsp; for space, &copy; for copyright.', '<p>&copy; 2024 My Website</p>', 'complete_code', 'Add the copyright entity before the year 2024.', '<p> 2024 My Company</p>', '<p>&copy; 2024 My Company</p>', 'Use the &copy; entity.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 16, 'Tables Basics', 'Tables use table, tr (row), th (header), and td (data) tags. The border attribute adds borders.', '<table border=''1''>
  <tr>
    <th>Name</th>
    <th>Age</th>
  </tr>
  <tr>
    <td>John</td>
    <td>25</td>
  </tr>
</table>', 'complete_code', 'Add a second row to the table with ''Jane'' and ''30''.', '<table border=''1''>
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
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 21, 'Select Dropdown', 'The select element creates a dropdown menu. Each option is defined by an option tag. The selected attribute preselects an option.', '<select>
  <option>Option 1</option>
  <option selected>Option 2</option>
</select>', 'complete_code', 'Add a select dropdown with two options: ''Red'' and ''Blue''.', '<select>
  
  
</select>', '<select>
  <option>Red</option>
  <option>Blue</option>
</select>', 'Use the select tag with option children.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 22, 'Radio Buttons', 'Radio buttons let users select one option from a group. All radio buttons in a group share the same name attribute.', '<input type=''radio'' name=''gender'' value=''male''> Male
<input type=''radio'' name=''gender'' value=''female''> Female', 'complete_code', 'Add two radio buttons named ''color'' with values ''red'' and ''blue''.', '<div>
  
  
</div>', '<div>
  <input type=''radio'' name=''color'' value=''red''> Red
  <input type=''radio'' name=''color'' value=''blue''> Blue
</div>', 'Both radio inputs must have the same name attribute.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 23, 'Checkboxes', 'Checkboxes allow multiple selections. Each checkbox is independent. Use the checked attribute to pre-select.', '<input type=''checkbox'' name=''agree'' checked> I agree', 'complete_code', 'Add two checkboxes named ''option'' with values ''a'' and ''b''.', '<div>
  
  
</div>', '<div>
  <input type=''checkbox'' name=''option'' value=''a''> Option A
  <input type=''checkbox'' name=''option'' value=''b''> Option B
</div>', 'Use input type=''checkbox'' with name and value attributes.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 24, 'Buttons', 'The button element creates a clickable button. The type attribute can be submit, reset, or button.', '<button type=''button''>Click Me</button>', 'complete_code', 'Add a submit button with the text ''Send Form''.', '<form>
  
</form>', '<form>
  <button type=''submit''>Send Form</button>
</form>', 'Use the button tag with type=''submit''.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 25, 'Fieldset and Legend', 'The fieldset tag groups related form elements. The legend tag provides a caption for the fieldset.', '<fieldset>
  <legend>Personal Info</legend>
  <input type=''text'' name=''name''>
</fieldset>', 'complete_code', 'Create a fieldset with legend ''Contact'' and a text input named ''email''.', '<form>
  
</form>', '<form>
  <fieldset>
    <legend>Contact</legend>
    <input type=''text'' name=''email''>
  </fieldset>
</form>', 'Use fieldset to group and legend for the caption.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 26, 'Label', 'The label tag defines a label for form elements. The for attribute should match the input''s id.', '<label for=''email''>Email:</label>
<input type=''email'' id=''email''>', 'complete_code', 'Add a label with text ''Name:'' for an input with id ''name''.', '<div>
  
  <input type=''text'' id=''name''>
</div>', '<div>
  <label for=''name''>Name:</label>
  <input type=''text'' id=''name''>
</div>', 'The for attribute on label must match the id on input.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 27, 'Required Fields', 'The required attribute makes a form field mandatory. The browser prevents submission if empty.', '<input type=''text'' required placeholder=''Required field''>', 'complete_code', 'Add the required attribute to the email input.', '<form>
  <input type=''email'' placeholder=''Enter email''>
  <input type=''submit''>
</form>', '<form>
  <input type=''email'' required placeholder=''Enter email''>
  <input type=''submit''>
</form>', 'Add the required attribute to the input tag.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 28, 'Disabled Inputs', 'The disabled attribute makes an input unclickable and unusable. Disabled inputs are not submitted with the form.', '<input type=''text'' disabled value=''Cannot edit''>', 'true_false', 'Disabled inputs are submitted with the form data.', '', 'false', 'Think about whether disabled data gets sent to the server.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 29, 'Placeholder vs Value', 'The placeholder shows hint text inside the input. The value sets the actual default value. Placeholder disappears on input.', '<input type=''text'' placeholder=''Enter name'' value=''Default''>', 'complete_code', 'Add an input with placeholder ''Your name'' and default value ''John''.', '<div>
  
</div>', '<div>
  <input type=''text'' placeholder=''Your name'' value=''John''>
</div>', 'Use both placeholder and value attributes.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 30, 'Min and Max Length', 'The minlength and maxlength attributes control the number of characters a user can enter.', '<input type=''text'' minlength=''3'' maxlength=''10''>', 'complete_code', 'Add an input with minlength of 2 and maxlength of 20.', '<div>
  
</div>', '<div>
  <input type=''text'' minlength=''2'' maxlength=''20''>
</div>', 'Use minlength and maxlength attributes.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 31, 'Number Input', 'The number input type restricts input to numbers. Use min, max, and step attributes for range control.', '<input type=''number'' min=''0'' max=''100'' step=''5''>', 'complete_code', 'Add a number input with min 1, max 10, and step 1.', '<div>
  
</div>', '<div>
  <input type=''number'' min=''1'' max=''10'' step=''1''>
</div>', 'Use type=''number'' with min, max, and step attributes.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 32, 'Range Slider', 'The range input type creates a slider control. Use min, max, and step to configure the range.', '<input type=''range'' min=''0'' max=''100'' step=''10''>', 'complete_code', 'Add a range slider with min 0, max 50, and step 5.', '<div>
  
</div>', '<div>
  <input type=''range'' min=''0'' max=''50'' step=''5''>
</div>', 'Use type=''range'' with min, max, and step.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 33, 'Color Picker', 'The color input type opens a color picker. The default value is a hex color code.', '<input type=''color'' value=''#ff0000''>', 'complete_code', 'Add a color picker with default value ''#00ff00'' (green).', '<div>
  
</div>', '<div>
  <input type=''color'' value=''#00ff00''>
</div>', 'Use type=''color'' with a hex value attribute.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 34, 'Date Input', 'The date input type opens a date picker. The value format is YYYY-MM-DD.', '<input type=''date'' value=''2024-01-01''>', 'complete_code', 'Add a date input with default value ''2025-12-25''.', '<div>
  
</div>', '<div>
  <input type=''date'' value=''2025-12-25''>
</div>', 'Use type=''date'' with a value in YYYY-MM-DD format.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 35, 'File Upload', 'The file input type lets users upload files. The accept attribute restricts file types.', '<input type=''file'' accept=''.jpg,.png''>', 'complete_code', 'Add a file input that accepts images only (.jpg, .png, .gif).', '<div>
  
</div>', '<div>
  <input type=''file'' accept=''.jpg,.png,.gif''>
</div>', 'Use type=''file'' with an accept attribute.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 36, 'Hidden Inputs', 'The hidden input type stores data not visible to the user. It is submitted with the form.', '<input type=''hidden'' name=''user_id'' value=''123''>', 'true_false', 'Hidden inputs are visible to the user in the browser.', '', 'false', 'Think about the purpose of hidden inputs.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 37, 'URL Input', 'The url input type validates that the entered text is a valid URL. It requires http:// or https:// prefix.', '<input type=''url'' placeholder=''https://example.com''>', 'complete_code', 'Add a URL input with placeholder ''https://mysite.com''.', '<div>
  
</div>', '<div>
  <input type=''url'' placeholder=''https://mysite.com''>
</div>', 'Use type=''url'' with a placeholder.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 38, 'Search Input', 'The search input type is used for search fields. It may show a clear button in some browsers.', '<input type=''search'' placeholder=''Search...''>', 'complete_code', 'Add a search input with placeholder ''Search the site...''.', '<div>
  
</div>', '<div>
  <input type=''search'' placeholder=''Search the site...''>
</div>', 'Use type=''search'' with a placeholder.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 39, 'Multiple Select', 'The multiple attribute on a select element allows selecting multiple options with Ctrl+click.', '<select multiple>
  <option>Item 1</option>
  <option>Item 2</option>
</select>', 'complete_code', 'Create a select with multiple attribute and three options: A, B, C.', '<select multiple>
  
  
  
</select>', '<select multiple>
  <option>A</option>
  <option>B</option>
  <option>C</option>
</select>', 'Add the multiple attribute to the select tag.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 40, 'Datalist', 'The datalist tag provides an autocomplete list for an input. The list attribute on the input matches the datalist''s id.', '<input list=''browsers''>
<datalist id=''browsers''>
  <option value=''Chrome''>
  <option value=''Firefox''>
</datalist>', 'complete_code', 'Create an input with a datalist containing ''Apple'' and ''Banana''.', '<input list=''fruits''>
<datalist id=''fruits''>
  
  
</datalist>', '<input list=''fruits''>
<datalist id=''fruits''>
  <option value=''Apple''>
  <option value=''Banana''>
</datalist>', 'The input''s list attribute must match the datalist''s id.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 41, 'Inline Styles', 'Inline styles are applied directly to HTML elements using the style attribute. Format: property: value;', '<p style=''color: blue; font-size: 20px;''>Styled text</p>', 'complete_code', 'Add a style attribute to make the text color red.', '<p>Red text</p>', '<p style=''color: red;''>Red text</p>', 'Use the style attribute with ''color: red;''.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 42, 'Style Tag', 'The style tag in the head section allows defining CSS rules for the entire page.', '<style>
  p { color: blue; }
</style>', 'complete_code', 'Add a style rule that makes all h1 elements green.', '<style>
  
</style>
<h1>Hello</h1>', '<style>
  h1 { color: green; }
</style>
<h1>Hello</h1>', 'Use h1 as the selector and color: green as the property.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 43, 'Color Property', 'The color property sets text color. Values can be named colors (red), hex (#ff0000), rgb(), or hsl().', '<p style=''color: #ff6600;''>Orange text</p>', 'complete_code', 'Make the paragraph text blue using the hex color code for blue.', '<p>Blue text</p>', '<p style=''color: #0000ff;''>Blue text</p>', 'Use style=''color: #0000ff;''.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 44, 'Background Color', 'The background-color property sets the background color of an element. Use the same color formats as color.', '<div style=''background-color: yellow;''>Highlighted</div>', 'complete_code', 'Add a background color of light blue (#add8e6) to the div.', '<div>Light blue background</div>', '<div style=''background-color: #add8e6;''>Light blue background</div>', 'Use the style attribute with background-color.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 45, 'Font Size', 'The font-size property controls text size. Common units: px, em, rem, %.', '<p style=''font-size: 24px;''>Large text</p>', 'complete_code', 'Make the paragraph text 18 pixels using font-size.', '<p>Medium text</p>', '<p style=''font-size: 18px;''>Medium text</p>', 'Use font-size: 18px in the style attribute.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 46, 'Font Family', 'The font-family property sets the font. Use fallback fonts separated by commas. Generic families: serif, sans-serif.', '<p style=''font-family: Arial, sans-serif;''>Arial text</p>', 'complete_code', 'Set the font to ''Georgia, serif'' for the paragraph.', '<p>Georgia font</p>', '<p style=''font-family: Georgia, serif;''>Georgia font</p>', 'Use font-family with the font name.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 47, 'Text Align', 'The text-align property aligns text: left, center, right, or justify.', '<p style=''text-align: center;''>Centered text</p>', 'complete_code', 'Center-align the paragraph text.', '<p>This text should be centered</p>', '<p style=''text-align: center;''>This text should be centered</p>', 'Use text-align: center.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 48, 'Font Weight', 'The font-weight property controls boldness. Values: normal, bold, or numbers 100-900.', '<p style=''font-weight: bold;''>Bold text</p>', 'complete_code', 'Make the paragraph text bold using font-weight.', '<p>This should be bold</p>', '<p style=''font-weight: bold;''>This should be bold</p>', 'Use font-weight: bold.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 49, 'Padding', 'The padding property adds space inside an element, between the content and border. Shorthand: padding: top right bottom left.', '<div style=''padding: 20px;''>Padded content</div>', 'complete_code', 'Add 10 pixels of padding on all sides of the div.', '<div>Content with padding</div>', '<div style=''padding: 10px;''>Content with padding</div>', 'Use padding: 10px in the style attribute.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 50, 'Margin', 'The margin property adds space outside an element, between it and other elements. Auto centers block elements.', '<div style=''margin: 20px;''>Content with margin</div>', 'complete_code', 'Add 15 pixels of margin on all sides of the div.', '<div>Content with margin</div>', '<div style=''margin: 15px;''>Content with margin</div>', 'Use margin: 15px in the style attribute.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 51, 'Border', 'The border property adds a border. Shorthand: border: width style color. Styles: solid, dashed, dotted, etc.', '<div style=''border: 2px solid black;''>Bordered content</div>', 'complete_code', 'Add a 1px solid red border to the div.', '<div>Content with border</div>', '<div style=''border: 1px solid red;''>Content with border</div>', 'Use border: 1px solid red.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 52, 'Width and Height', 'The width and height properties set element dimensions. Use px, %, vw, vh, or auto.', '<div style=''width: 200px; height: 100px;''>Fixed size</div>', 'complete_code', 'Set the div to 300px wide and 150px tall.', '<div>Fixed dimensions</div>', '<div style=''width: 300px; height: 150px;''>Fixed dimensions</div>', 'Use width and height properties.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 53, 'Display Property', 'The display property controls how an element is displayed. Values: block, inline, inline-block, none, flex, grid.', '<span style=''display: block;''>Block-level span</span>', 'complete_code', 'Make the div display as inline-block.', '<div>Inline-block div</div>', '<div style=''display: inline-block;''>Inline-block div</div>', 'Use display: inline-block.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 54, 'Position', 'The position property positions elements: static (default), relative, absolute, fixed, sticky.', '<div style=''position: relative; top: 10px; left: 20px;''>Moved element</div>', 'complete_code', 'Position the div 50px from the top using relative positioning.', '<div>Positioned element</div>', '<div style=''position: relative; top: 50px;''>Positioned element</div>', 'Use position: relative and top: 50px.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 55, 'Float', 'The float property pushes an element to the left or right, allowing text to wrap around it.', '<img src=''img.jpg'' style=''float: left;''>', 'true_false', 'The float property can be set to left, right, or none.', '', 'true', 'Think about the possible values of float.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 56, 'Overflow', 'The overflow property controls what happens when content exceeds its container. Values: visible, hidden, scroll, auto.', '<div style=''overflow: auto; max-height: 100px;''>Scrollable content</div>', 'complete_code', 'Add overflow: hidden to the div to clip overflowing content.', '<div style=''max-height: 50px;''>Content that might overflow</div>', '<div style=''overflow: hidden; max-height: 50px;''>Content that might overflow</div>', 'Use overflow: hidden.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 57, 'Opacity', 'The opacity property sets the transparency level. 0 is fully transparent, 1 is fully opaque.', '<div style=''opacity: 0.5;''>Semi-transparent</div>', 'complete_code', 'Set the div to 75% opacity (0.75).', '<div>75% opaque</div>', '<div style=''opacity: 0.75;''>75% opaque</div>', 'Use opacity: 0.75.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 58, 'Box Shadow', 'The box-shadow property adds a shadow to an element. Syntax: offset-x offset-y blur color.', '<div style=''box-shadow: 5px 5px 10px gray;''>Shadowed box</div>', 'complete_code', 'Add a box-shadow that is 2px right, 2px down, 5px blur, color black.', '<div>Shadowed</div>', '<div style=''box-shadow: 2px 2px 5px black;''>Shadowed</div>', 'Use box-shadow: 2px 2px 5px black.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 59, 'Border Radius', 'The border-radius property rounds the corners of an element. Use px or % for circles.', '<div style=''border-radius: 10px;''>Rounded corners</div>', 'complete_code', 'Make the div have fully rounded corners (circle) using 50% border-radius.', '<div style=''width: 100px; height: 100px;''>Circle</div>', '<div style=''width: 100px; height: 100px; border-radius: 50%;''>Circle</div>', 'Use border-radius: 50%.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 60, 'CSS Selectors', 'CSS selectors target elements: element (tag), .class, #id, * (universal), descendant (space), child (>), adjacent (+).', '<style>.highlight { color: red; } #main { font-size: 20px; }</style>', 'multiple_choice', 'Which CSS selector targets elements by their id?', '.class
#id
element
*', '#id', 'The hash symbol (#) selects by id.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 61, 'Flexbox', 'Flexbox is a one-dimensional layout model. Use display: flex on the container. Main axis is set by flex-direction.', '<div style=''display: flex; gap: 10px;''><div>Item 1</div><div>Item 2</div></div>', 'complete_code', 'Make the container a flexbox with display: flex.', '<div style=''display: flex;''><div>Item 1</div><div>Item 2</div></div>', '<div style=''display: flex;''><div>Item 1</div><div>Item 2</div></div>', 'The container already has display: flex. Add gap: 10px.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 62, 'Flex Direction', 'flex-direction sets the main axis: row (default), column, row-reverse, column-reverse.', '<div style=''display: flex; flex-direction: column;''><div>Top</div><div>Bottom</div></div>', 'predict_output', 'With flex-direction: column, how will flex items be arranged?', '', 'Vertically from top to bottom', 'Column direction stacks items vertically.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 63, 'Justify Content', 'justify-content aligns items along the main axis. Values: flex-start, center, flex-end, space-between, space-around.', '<div style=''display: flex; justify-content: center;''><div>Center</div></div>', 'complete_code', 'Center the flex items horizontally using justify-content.', '<div style=''display: flex;''><div>Item 1</div><div>Item 2</div></div>', '<div style=''display: flex; justify-content: center;''><div>Item 1</div><div>Item 2</div></div>', 'Use justify-content: center.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 64, 'Align Items', 'align-items aligns items along the cross axis. Values: stretch, center, flex-start, flex-end, baseline.', '<div style=''display: flex; align-items: center; height: 100px;''><div>Centered</div></div>', 'complete_code', 'Vertically center the items using align-items.', '<div style=''display: flex; height: 100px;''><div>Item</div></div>', '<div style=''display: flex; align-items: center; height: 100px;''><div>Item</div></div>', 'Use align-items: center.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 65, 'Flex Wrap', 'flex-wrap controls whether items wrap to a new line. Values: nowrap, wrap, wrap-reverse.', '<div style=''display: flex; flex-wrap: wrap;''><div>Item</div><div>Item</div></div>', 'true_false', 'flex-wrap: nowrap allows items to wrap to the next line.', '', 'false', 'nowrap keeps items on one line.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 66, 'Gap', 'The gap property sets spacing between flex or grid items. Works in both axes.', '<div style=''display: flex; gap: 20px;''><div>Item</div><div>Item</div></div>', 'complete_code', 'Add a 15px gap between flex items.', '<div style=''display: flex;''><div>Item 1</div><div>Item 2</div></div>', '<div style=''display: flex; gap: 15px;''><div>Item 1</div><div>Item 2</div></div>', 'Use gap: 15px.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 67, 'CSS Grid', 'CSS Grid is a two-dimensional layout. Use display: grid. Define columns with grid-template-columns.', '<div style=''display: grid; grid-template-columns: 1fr 1fr; gap: 10px;''><div>Left</div><div>Right</div></div>', 'complete_code', 'Create a grid with two equal columns using grid-template-columns.', '<div style=''display: grid;''><div>Col 1</div><div>Col 2</div></div>', '<div style=''display: grid; grid-template-columns: 1fr 1fr;''><div>Col 1</div><div>Col 2</div></div>', 'Use grid-template-columns: 1fr 1fr.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 68, 'Grid Columns', 'grid-template-columns defines the number and size of columns. Use px, fr, %, auto, repeat().', '<div style=''display: grid; grid-template-columns: repeat(3, 1fr);''><div>1</div><div>2</div><div>3</div></div>', 'complete_code', 'Create a 3-column grid using repeat(3, 1fr).', '<div style=''display: grid;''><div>A</div><div>B</div><div>C</div></div>', '<div style=''display: grid; grid-template-columns: repeat(3, 1fr);''><div>A</div><div>B</div><div>C</div></div>', 'Use grid-template-columns: repeat(3, 1fr).', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 69, 'Media Queries', 'Media queries apply styles based on device characteristics like screen width. Syntax: @media (max-width: 768px) { }', '<style>@media (max-width: 600px) { body { font-size: 14px; } }</style>', 'complete_code', 'Add a media query that changes the body font-size to 12px when the screen is narrower than 480px.', '<style>
  
</style>', '<style>
  @media (max-width: 480px) { body { font-size: 12px; } }
</style>', 'Use @media (max-width: 480px) as the breakpoint.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 70, 'Responsive Design', 'Responsive design uses flexible layouts, media queries, and relative units to work on all screen sizes.', '<meta name=''viewport'' content=''width=device-width, initial-scale=1.0''>', 'true_false', 'The viewport meta tag is essential for responsive design on mobile.', '', 'true', 'Think about how mobile browsers handle page scaling.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 71, 'CSS Variables', 'CSS custom properties (variables) store reusable values. Define with --name, use with var(--name).', '<style>:root { --main-color: blue; } h1 { color: var(--main-color); }</style>', 'complete_code', 'Create a CSS variable --primary set to red, and use it on the h1.', '<style>
  
</style>
<h1>Red heading</h1>', '<style>
  :root { --primary: red; }
  h1 { color: var(--primary); }
</style>
<h1>Red heading</h1>', 'Define the variable in :root and use it with var().', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 72, 'Pseudo Classes', 'Pseudo-classes style elements in a specific state: :hover, :focus, :active, :nth-child(), :first-child.', '<style>a:hover { color: red; }</style>', 'complete_code', 'Make the button turn blue when hovered using the :hover pseudo-class.', '<style>
  
</style>
<button>Hover me</button>', '<style>
  button:hover { color: blue; }
</style>
<button>Hover me</button>', 'Use button:hover as the selector.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 73, 'Transitions', 'The transition property creates smooth animations between states. Syntax: transition: property duration timing-function.', '<style>div { transition: all 0.3s ease; } div:hover { transform: scale(1.1); }</style>', 'complete_code', 'Add a 0.5 second transition on the color property.', '<style>
  div { color: black; }
  div:hover { color: red; }
</style>
<div>Hover</div>', '<style>
  div { color: black; transition: color 0.5s; }
  div:hover { color: red; }
</style>
<div>Hover</div>', 'Add transition: color 0.5s to the div.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 74, 'Transform', 'The transform property modifies element appearance: translate(), scale(), rotate(), skew().', '<div style=''transform: rotate(45deg);''>Rotated</div>', 'complete_code', 'Scale the div to 1.5 times its size using transform: scale(1.5).', '<div>Scaled</div>', '<div style=''transform: scale(1.5);''>Scaled</div>', 'Use transform: scale(1.5).', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 75, 'Keyframes', 'Keyframes define animation sequences. Use @keyframes name { from { } to { } } or percentage steps.', '<style>@keyframes slide { from { transform: translateX(0); } to { transform: translateX(100px); } } div { animation: slide 2s; }</style>', 'complete_code', 'Create a keyframe animation named ''fade'' that goes from opacity 0 to opacity 1.', '<style>
  @keyframes fade {
    from { opacity: 0; }
    to { opacity: 1; }
  }
  div { animation: fade 2s; }
</style>
<div>Fading in</div>', '<style>
  @keyframes fade {
    from { opacity: 0; }
    to { opacity: 1; }
  }
  div { animation: fade 2s; }
</style>
<div>Fading in</div>', 'The answer is already in the template. Submit it as-is.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 76, 'Z-Index', 'The z-index property controls the stacking order of positioned elements. Higher values appear on top.', '<div style=''position: relative; z-index: 10;''>On top</div>', 'true_false', 'z-index only works on positioned elements (position not static).', '', 'true', 'Think about which elements can use z-index.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 77, 'Box Sizing', 'box-sizing: border-box includes padding and border in the element''s total width. Content-box (default) adds them on top.', '<div style=''box-sizing: border-box; width: 100px; padding: 10px;''>100px total</div>', 'complete_code', 'Set box-sizing to border-box on the div.', '<div style=''width: 200px; padding: 20px;''>200px including padding</div>', '<div style=''box-sizing: border-box; width: 200px; padding: 20px;''>200px including padding</div>', 'Use box-sizing: border-box.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 78, 'Visibility', 'The visibility property hides elements but keeps their space. Values: visible, hidden. Use display: none to remove space.', '<div style=''visibility: hidden;''>Hidden but takes space</div>', 'true_false', 'visibility: hidden removes the element from the layout flow.', '', 'false', 'Compare visibility: hidden with display: none.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 79, 'Min and Max Width', 'min-width and max-width constrain an element''s width. Useful for responsive layouts.', '<div style=''min-width: 200px; max-width: 800px;''>Responsive width</div>', 'complete_code', 'Set min-width to 100px and max-width to 500px on the div.', '<div>Responsive</div>', '<div style=''min-width: 100px; max-width: 500px;''>Responsive</div>', 'Use min-width and max-width properties.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 80, 'Object Fit', 'The object-fit property controls how an image or video fits in its container. Values: cover, contain, fill, scale-down.', '<img src=''photo.jpg'' style=''width: 200px; height: 200px; object-fit: cover;''>', 'multiple_choice', 'Which object-fit value crops the image to fill the container while maintaining aspect ratio?', 'cover
contain
fill
scale-down', 'cover', 'Cover fills the container and crops the excess.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 81, 'Semantic HTML', 'Semantic HTML uses meaningful tags: header, nav, main, article, section, aside, footer. Improves accessibility and SEO.', '<header>Site Header</header>
<main>
  <article>Content</article>
</main>
<footer>Footer</footer>', 'complete_code', 'Create a semantic layout with header, main, and footer tags.', '<body>
  
  
  
</body>', '<body>
  <header>Header</header>
  <main>Main content</main>
  <footer>Footer</footer>
</body>', 'Use header, main, and footer tags.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 82, 'Accessibility', 'Web accessibility (a11y) ensures websites work for people with disabilities. Use alt text, ARIA labels, semantic HTML.', '<img src=''logo.png'' alt=''Company Logo''>
<button aria-label=''Close''>X</button>', 'true_false', 'The alt attribute on images is important for screen reader users.', '', 'true', 'Think about how blind users access web content.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 83, 'SEO Meta Tags', 'Meta tags provide metadata to search engines: description, keywords, author, robots. The title tag is crucial for SEO.', '<head>
  <meta name=''description'' content=''Free coding tutorials''>
  <meta name=''keywords'' content=''HTML, CSS, coding''>
  <title>Learn to Code</title>
</head>', 'complete_code', 'Add a meta description tag with content ''Learn HTML basics''.', '<head>
  <title>My Page</title>
  
</head>', '<head>
  <title>My Page</title>
  <meta name=''description'' content=''Learn HTML basics''>
</head>', 'Use meta name=''description'' with content attribute.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 84, 'Canvas', 'The canvas element draws graphics using JavaScript. It requires an id, width, and height.', '<canvas id=''myCanvas'' width=''400'' height=''200''></canvas>', 'complete_code', 'Add a canvas element with id ''draw'', width 300, height 200.', '<div>
  
</div>', '<div>
  <canvas id=''draw'' width=''300'' height=''200''></canvas>
</div>', 'Use the canvas tag with id, width, and height attributes.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 85, 'SVG', 'SVG (Scalable Vector Graphics) defines vector graphics in XML. Shapes: circle, rect, path, polygon.', '<svg width=''100'' height=''100''>
  <circle cx=''50'' cy=''50'' r=''40'' fill=''blue'' />
</svg>', 'complete_code', 'Add an SVG with a red circle at center (50,50) with radius 30.', '<svg width=''100'' height=''100''>
  
</svg>', '<svg width=''100'' height=''100''>
  <circle cx=''50'' cy=''50'' r=''30'' fill=''red'' />
</svg>', 'Use the circle tag with cx, cy, r, and fill attributes.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 86, 'Audio', 'The audio element embeds sound files. The controls attribute shows playback controls. Use source tags for formats.', '<audio controls>
  <source src=''song.mp3'' type=''audio/mpeg''>
</audio>', 'complete_code', 'Add an audio element with controls and a source file ''music.mp3''.', '<div>
  
</div>', '<div>
  <audio controls>
    <source src=''music.mp3'' type=''audio/mpeg''>
  </audio>
</div>', 'Use the audio tag with controls attribute.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 87, 'Video', 'The video element embeds video files. Use controls, width, height, and source tags for different formats.', '<video width=''320'' height=''240'' controls>
  <source src=''video.mp4'' type=''video/mp4''>
</video>', 'complete_code', 'Add a video element with width 400, controls, and source ''movie.mp4''.', '<div>
  
</div>', '<div>
  <video width=''400'' controls>
    <source src=''movie.mp4'' type=''video/mp4''>
  </video>
</div>', 'Use the video tag with width, controls, and source.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 88, 'Iframes', 'The iframe tag embeds another HTML page. Use src, width, height, and allow for permissions.', '<iframe src=''https://example.com'' width=''600'' height=''400''></iframe>', 'complete_code', 'Add an iframe with src ''https://example.com'' and width 500, height 300.', '<div>
  
</div>', '<div>
  <iframe src=''https://example.com'' width=''500'' height=''300''></iframe>
</div>', 'Use the iframe tag with src, width, and height.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 89, 'Local Storage', 'localStorage stores data in the browser with no expiration. Use setItem(), getItem(), removeItem().', '<script>localStorage.setItem(''key'', ''value''); console.log(localStorage.getItem(''key''));</script>', 'true_false', 'localStorage data persists after the browser is closed and reopened.', '', 'true', 'Think about the difference between localStorage and sessionStorage.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 90, 'Session Storage', 'sessionStorage stores data for the current session only. Data is cleared when the tab is closed.', '<script>sessionStorage.setItem(''temp'', ''data'');</script>', 'true_false', 'sessionStorage data persists after the browser is closed.', '', 'false', 'Session storage is cleared when the tab closes.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 91, 'Drag and Drop', 'HTML drag-and-drop API uses draggable attribute, dragstart, dragover, and drop events.', '<div draggable=''true'' ondragstart=''event.dataTransfer.setData("text", this.id)''>Drag me</div>', 'complete_code', 'Make the div draggable by adding the draggable attribute.', '<div>Drag me</div>', '<div draggable=''true''>Drag me</div>', 'Add draggable=''true'' to the div.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 92, 'Geolocation', 'The Geolocation API gets the user''s position. Use navigator.geolocation.getCurrentPosition().', '<script>navigator.geolocation.getCurrentPosition(pos => { console.log(pos.coords.latitude); });</script>', 'true_false', 'The Geolocation API requires user permission before accessing location.', '', 'true', 'Think about privacy requirements for location data.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 93, 'Microdata', 'Microdata adds structured data to HTML using itemscope, itemtype, and itemprop attributes for search engines.', '<div itemscope itemtype=''https://schema.org/Person''>
  <span itemprop=''name''>John Doe</span>
</div>', 'complete_code', 'Add itemscope and itemtype=''https://schema.org/Product'' to the div.', '<div>
  <span>Product Name</span>
</div>', '<div itemscope itemtype=''https://schema.org/Product''>
  <span>Product Name</span>
</div>', 'Add itemscope and itemtype attributes to the div.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 94, 'Open Graph', 'Open Graph meta tags control how content appears when shared on social media (og:title, og:description, og:image).', '<meta property=''og:title'' content=''My Page''>
<meta property=''og:description'' content=''Description''>', 'complete_code', 'Add an Open Graph title meta tag with property=''og:title'' and content=''My Site''.', '<head>
  
</head>', '<head>
  <meta property=''og:title'' content=''My Site''>
</head>', 'Use meta with property=''og:title'' and content attributes.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 95, 'Twitter Cards', 'Twitter Card meta tags control how content appears on Twitter. Types: summary, summary_large_image, app, player.', '<meta name=''twitter:card'' content=''summary''>
<meta name=''twitter:title'' content=''My Page''>', 'complete_code', 'Add a Twitter card meta tag with name=''twitter:card'' and content=''summary''.', '<head>
  
</head>', '<head>
  <meta name=''twitter:card'' content=''summary''>
</head>', 'Use meta with name=''twitter:card''.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 96, 'Progressive Web Apps', 'PWAs are web apps that can be installed on devices. Require a manifest.json and service worker for offline support.', '<link rel=''manifest'' href=''/manifest.json''>
<meta name=''theme-color'' content=''#0400FF''>', 'complete_code', 'Add a manifest link tag with rel=''manifest'' and href=''/app.webmanifest''.', '<head>
  
</head>', '<head>
  <link rel=''manifest'' href=''/app.webmanifest''>
</head>', 'Use link rel=''manifest'' with href attribute.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 97, 'Service Workers', 'Service workers are scripts that run in the background, enabling offline support, push notifications, and caching.', '<script>navigator.serviceWorker.register(''/sw.js'');</script>', 'true_false', 'Service workers can intercept network requests and cache resources.', '', 'true', 'Think about the main purpose of service workers.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 98, 'Web Workers', 'Web Workers run JavaScript in a background thread, preventing UI blocking. Communicate via postMessage().', '<script>const worker = new Worker(''worker.js''); worker.postMessage(''start'');</script>', 'true_false', 'Web Workers have access to the DOM.', '', 'false', 'Think about what workers can and cannot access.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 99, 'Server-Sent Events', 'SSE (Server-Sent Events) allows the server to push updates to the client over HTTP. Use EventSource API.', '<script>const source = new EventSource(''/events''); source.onmessage = e => console.log(e.data);</script>', 'complete_code', 'Create an EventSource listening to ''/updates''.', '<script>
  
</script>', '<script>
  const source = new EventSource(''/updates'');
</script>', 'Use new EventSource(''/updates'').', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('html', 100, 'HTML Final Project', 'You have mastered HTML! Combine everything: semantic structure, forms, CSS styling, responsive design, and accessibility.', '<!DOCTYPE html>
<html lang=''en''>
<head>
  <meta charset=''UTF-8''>
  <meta name=''viewport'' content=''width=device-width, initial-scale=1.0''>
  <title>My Portfolio</title>
  <style>
    body { font-family: Arial; margin: 0; padding: 20px; }
    .container { max-width: 800px; margin: 0 auto; }
  </style>
</head>
<body>
  <div class=''container''>
    <h1>Welcome</h1>
    <p>Final project complete!</p>
  </div>
</body>
</html>', 'complete_code', 'Create a complete HTML page with a title ''My Portfolio'' and a body with ''Hello World''.', '<!DOCTYPE html>
<html>
<head>
  <title>My Portfolio</title>
</head>
<body>
  
</body>
</html>', '<!DOCTYPE html>
<html>
<head>
  <title>My Portfolio</title>
</head>
<body>
  <p>Hello World</p>
</body>
</html>', 'Add a p tag with Hello World inside the body.', 150, 'hard', 1);