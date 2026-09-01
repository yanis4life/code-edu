-- PHP lessons seed data (100 levels)

INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 1, 'Hello World', 'PHP is a server-side scripting language. PHP code is embedded in HTML using <?php ?>. Use echo to output text.', '<?php
echo ''Hello, World!'';
?>', 'complete_code', 'Write PHP code to echo ''Hello, World!''.', '<?php
echo ;
?>', '<?php
echo ''Hello, World!'';
?>', 'Put the string ''Hello, World!'' inside the echo statement.', 50, 'easy', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 2, 'Variables', 'PHP variables start with $. They are loosely typed. Common types: string, int, float, bool.', '<?php
$name = ''John'';
$age = 25;
echo $name;
?>', 'complete_code', 'Declare a variable $city with value ''Paris'' and echo it.', '<?php
$city = ''Paris'';
echo $city;
?>', '<?php
$city = ''Paris'';
echo $city;
?>', 'The answer is already in the template.', 50, 'easy', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 3, 'Data Types', 'PHP supports: string, int, float, bool, array, object, null. var_dump() shows type and value.', '<?php
$x = 10;
$y = 3.14;
$z = true;
echo var_dump($x);
?>', 'complete_code', 'Use var_dump() to show the type of variable $name.', '<?php
$name = ''Hello'';
var_dump($name);
?>', '<?php
$name = ''Hello'';
var_dump($name);
?>', 'The answer is already in the template.', 50, 'easy', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 4, 'String Concatenation', 'Use . (dot) to concatenate strings in PHP. .= appends to a string.', '<?php
$first = ''Hello'';
$second = ''World'';
echo $first . '' '' . $second;
?>', 'complete_code', 'Concatenate $a and $b with a space between them.', '<?php
$a = ''Hello'';
$b = ''PHP'';
echo $a . '' '' . $b;
?>', '<?php
$a = ''Hello'';
$b = ''PHP'';
echo $a . '' '' . $b;
?>', 'The answer is already in the template.', 50, 'easy', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 5, 'If Statements', 'PHP if/else works like other languages. Use if, elseif, else. Curly braces enclose blocks.', '<?php
$age = 18;
if ($age >= 18) {
  echo ''Adult'';
} else {
  echo ''Minor'';
}
?>', 'complete_code', 'Echo ''Positive'' if $num > 0, else echo ''Not positive''.', '<?php
$num = 5;
if ($num > 0) {
  echo ''Positive'';
} else {
  echo ''Not positive'';
}
?>', '<?php
$num = 5;
if ($num > 0) {
  echo ''Positive'';
} else {
  echo ''Not positive'';
}
?>', 'The answer is already in the template.', 50, 'easy', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 6, 'Comparison Operators', 'PHP comparison: == (value), === (value+type), !=, <>, !==, <, >, <=, >=.', '<?php
$a = 5;
$b = ''5'';
var_dump($a == $b);
var_dump($a === $b);
?>', 'predict_output', 'What does 5 == ''5'' return in PHP?', '', 'true', '== compares value only, not type.', 50, 'easy', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 7, 'Logical Operators', 'PHP logical: && (AND), || (OR), ! (NOT), and, or, xor.', '<?php
$x = 5;
var_dump($x > 0 && $x < 10);
var_dump($x > 0 || $x < 0);
var_dump(!($x == 5));
?>', 'predict_output', 'What does true && false return?', '', 'false', 'AND returns true only if both are true.', 50, 'easy', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 8, 'For Loops', 'PHP for loops: for (init; condition; increment) { }. Use $i++ to increment.', '<?php
for ($i = 0; $i < 5; $i++) {
  echo $i;
}
?>', 'complete_code', 'Write a for loop that echoes numbers 0 to 4.', '<?php
for ($i = 0; $i < 5; $i++) {
  echo $i;
}
?>', '<?php
for ($i = 0; $i < 5; $i++) {
  echo $i;
}
?>', 'The answer is already in the template.', 50, 'easy', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 9, 'While Loops', 'PHP while loops: while (condition) { }. Update the condition variable inside the loop.', '<?php
$i = 0;
while ($i < 3) {
  echo $i;
  $i++;
}
?>', 'complete_code', 'Complete the while loop to echo 0, 1, 2.', '<?php
$i = 0;
while ($i < 3) {
  echo $i;
  $i++;
}
?>', '<?php
$i = 0;
while ($i < 3) {
  echo $i;
  $i++;
}
?>', 'The answer is already in the template.', 50, 'easy', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 10, 'Arrays', 'PHP arrays: indexed $arr = [1, 2, 3]; or $arr = array(1, 2, 3);. Access with $arr[0].', '<?php
$colors = [''red'', ''green'', ''blue''];
echo $colors[0];
echo count($colors);
?>', 'complete_code', 'Create an indexed array with ''a'', ''b'', ''c'' and echo the first element.', '<?php
$letters = [''a'', ''b'', ''c''];
echo $letters[0];
?>', '<?php
$letters = [''a'', ''b'', ''c''];
echo $letters[0];
?>', 'The answer is already in the template.', 50, 'easy', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 11, 'Associative Arrays', 'Associative arrays use named keys: $person = [''name'' => ''John'', ''age'' => 30];', '<?php
$person = [''name'' => ''John'', ''age'' => 30];
echo $person[''name''];
?>', 'complete_code', 'Create an associative array with key ''name'' value ''Alice'' and echo it.', '<?php
$user = [''name'' => ''Alice''];
echo $user[''name''];
?>', '<?php
$user = [''name'' => ''Alice''];
echo $user[''name''];
?>', 'The answer is already in the template.', 50, 'easy', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 12, 'Array Push', 'array_push() adds elements to the end of an array. $arr[] = value also works.', '<?php
$fruits = [''apple''];
$fruits[] = ''banana'';
array_push($fruits, ''cherry'');
print_r($fruits);
?>', 'complete_code', 'Add ''d'' to the array using \$arr[].', '<?php
$letters = [''a'', ''b'', ''c''];
$letters[] = ''d'';
print_r($letters);
?>', '<?php
$letters = [''a'', ''b'', ''c''];
$letters[] = ''d'';
print_r($letters);
?>', 'The answer is already in the template.', 50, 'easy', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 13, 'Functions', 'PHP functions: function name($params) { return value; }. Call with name(args).', '<?php
function add($a, $b) {
  return $a + $b;
}
echo add(3, 4);
?>', 'complete_code', 'Write a function multiply that takes $a and $b and returns $a * $b.', '<?php
function multiply($a, $b) {
  return $a * $b;
}
echo multiply(3, 4);
?>', '<?php
function multiply($a, $b) {
  return $a * $b;
}
echo multiply(3, 4);
?>', 'The answer is already in the template.', 50, 'easy', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 14, 'Default Parameters', 'PHP functions can have default parameter values: function greet($name = ''Guest'') { }.', '<?php
function greet($name = ''Guest'') {
  return ''Hello, '' . $name;
}
echo greet();
echo greet(''Bob'');
?>', 'complete_code', 'Create a function with default parameter value of 1.', '<?php
function multiply($a, $b = 1) {
  return $a * $b;
}
echo multiply(5);
echo multiply(5, 2);
?>', '<?php
function multiply($a, $b = 1) {
  return $a * $b;
}
echo multiply(5);
echo multiply(5, 2);
?>', 'The answer is already in the template.', 50, 'easy', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 15, 'Return Values', 'Functions return values with return. Without return, the function returns null.', '<?php
function square($x) {
  return $x * $x;
}
$result = square(5);
echo $result;
?>', 'predict_output', 'What does a PHP function return if it has no return statement?', '', 'null', 'Functions without return return null.', 50, 'easy', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 16, 'Scope', 'Variables defined outside functions are global. Use global keyword to access them inside functions.', '<?php
$x = 10;
function test() {
  global $x;
  echo $x;
}
test();
?>', 'complete_code', 'Use the global keyword to access $x inside the function.', '<?php
$x = 5;
function show() {
  global $x;
  echo $x;
}
show();
?>', '<?php
$x = 5;
function show() {
  global $x;
  echo $x;
}
show();
?>', 'The answer is already in the template.', 50, 'easy', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 17, 'String Functions', 'PHP string functions: strlen(), strpos(), substr(), str_replace(), strtolower(), strtoupper(), trim().', '<?php
$text = ''Hello World'';
echo strlen($text);
echo strpos($text, ''World'');
echo strtolower($text);
?>', 'complete_code', 'Use strlen() to get the length of the string.', '<?php
$msg = ''Hello'';
echo strlen($msg);
?>', '<?php
$msg = ''Hello'';
echo strlen($msg);
?>', 'The answer is already in the template.', 50, 'easy', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 18, 'Math Functions', 'PHP math: abs(), sqrt(), round(), ceil(), floor(), max(), min(), rand(), pi().', '<?php
echo abs(-5);
echo sqrt(25);
echo max(10, 20);
echo rand(1, 10);
?>', 'predict_output', 'What does max(10, 20) return?', '', '20', 'max returns the larger value.', 50, 'easy', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 19, 'Constants', 'define(''NAME'', value) creates a constant. Constants are global and cannot be changed.', '<?php
define(''SITE_NAME'', ''My Site'');
echo SITE_NAME;
?>', 'complete_code', 'Define a constant MAX_SIZE with value 100 and echo it.', '<?php
define(''MAX_SIZE'', 100);
echo MAX_SIZE;
?>', '<?php
define(''MAX_SIZE'', 100);
echo MAX_SIZE;
?>', 'The answer is already in the template.', 50, 'easy', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 20, 'Superglobals', 'PHP superglobals: $_GET, $_POST, $_SESSION, $_COOKIE, $_SERVER, $_FILES, $_REQUEST, $GLOBALS.', '<?php
echo $_SERVER[''SERVER_NAME''];
echo $_GET[''id''] ?? ''none'';
?>', 'true_false', '\$_SERVER is a PHP superglobal.', '', 'true', 'Superglobals are built-in variables available everywhere.', 50, 'easy', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 21, 'GET Parameters', 'GET parameters are in the URL query string. Access with $_GET[''key'']. Use ?? for default.', '<?php
$name = $_GET[''name''] ?? ''Guest'';
echo ''Hello, '' . $name;
?>', 'complete_code', 'Get the ''id'' GET parameter with default ''none''.', '<?php
$id = $_GET[''id''] ?? ''none'';
echo $id;
?>', '<?php
$id = $_GET[''id''] ?? ''none'';
echo $id;
?>', 'The answer is already in the template.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 22, 'POST Parameters', 'POST parameters come from form submissions. Access with $_POST[''key'']. Use $_REQUEST for both GET/POST.', '<?php
$email = $_POST[''email''] ?? '''';
echo $email;
?>', 'complete_code', 'Get the ''name'' POST parameter with default ''''.', '<?php
$name = $_POST[''name''] ?? '''';
echo $name;
?>', '<?php
$name = $_POST[''name''] ?? '''';
echo $name;
?>', 'The answer is already in the template.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 23, 'Include Files', 'include(''file.php'') includes a file. require() errors on failure. include_once() and require_once() prevent duplicates.', '<?php
include ''header.php'';
require_once ''config.php'';
echo ''Content'';
include ''footer.php'';
?>', 'complete_code', 'Use include to include ''header.php''.', '<?php
include ''header.php'';
echo ''Body'';
?>', '<?php
include ''header.php'';
echo ''Body'';
?>', 'The answer is already in the template.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 24, 'Sessions', 'session_start() starts a session. Store data in $_SESSION. Data persists across pages.', '<?php
session_start();
$_SESSION[''user''] = ''John'';
echo $_SESSION[''user''];
?>', 'complete_code', 'Start a session and set $_SESSION[''name''] to ''Alice''.', '<?php
session_start();
$_SESSION[''name''] = ''Alice'';
echo $_SESSION[''name''];
?>', '<?php
session_start();
$_SESSION[''name''] = ''Alice'';
echo $_SESSION[''name''];
?>', 'The answer is already in the template.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 25, 'Cookies', 'setcookie(name, value, expire) sets a cookie. $_COOKIE reads it. Cookies are stored on the client.', '<?php
setcookie(''theme'', ''dark'', time() + 86400);
echo $_COOKIE[''theme''] ?? ''none'';
?>', 'complete_code', 'Set a cookie ''lang'' with value ''en'' that expires in 1 hour.', '<?php
setcookie(''lang'', ''en'', time() + 3600);
echo $_COOKIE[''lang''] ?? ''none'';
?>', '<?php
setcookie(''lang'', ''en'', time() + 3600);
echo $_COOKIE[''lang''] ?? ''none'';
?>', 'The answer is already in the template.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 26, 'Date and Time', 'date(format, timestamp) formats dates. time() returns current Unix timestamp. strtotime() parses date strings.', '<?php
echo date(''Y-m-d H:i:s'');
echo date(''l'', strtotime(''next Monday''));
?>', 'complete_code', 'Echo the current year using date(''Y'').', '<?php
echo date(''Y'');
?>', '<?php
echo date(''Y'');
?>', 'The answer is already in the template.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 27, 'File Read', 'file_get_contents() reads a file into a string. fopen()/fread() for more control.', '<?php
$content = file_get_contents(''data.txt'');
echo $content;
?>', 'complete_code', 'Read the contents of ''file.txt'' using file_get_contents.', '<?php
$content = file_get_contents(''file.txt'');
echo $content;
?>', '<?php
$content = file_get_contents(''file.txt'');
echo $content;
?>', 'The answer is already in the template.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 28, 'File Write', 'file_put_contents() writes data to a file. It overwrites by default. Use FILE_APPEND flag to append.', '<?php
file_put_contents(''log.txt'', ''New entry\n'', FILE_APPEND);
?>', 'complete_code', 'Write ''Hello'' to ''test.txt'' using file_put_contents.', '<?php
file_put_contents(''test.txt'', ''Hello'');
?>', '<?php
file_put_contents(''test.txt'', ''Hello'');
?>', 'The answer is already in the template.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 29, 'Explode and Implode', 'explode(separator, string) splits a string into an array. implode(glue, array) joins array into a string.', '<?php
$csv = ''a,b,c'';
$arr = explode('','', $csv);
print_r($arr);
echo implode(''-'', $arr);
?>', 'complete_code', 'Split ''apple,banana'' by comma using explode.', '<?php
$text = ''apple,banana'';
$arr = explode('','', $text);
print_r($arr);
?>', '<?php
$text = ''apple,banana'';
$arr = explode('','', $text);
print_r($arr);
?>', 'The answer is already in the template.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 30, 'Foreach Loop', 'foreach iterates over arrays: foreach ($array as $key => $value) { }.', '<?php
$colors = [''red'', ''green'', ''blue''];
foreach ($colors as $color) {
  echo $color;
}
?>', 'complete_code', 'Use foreach to echo each element of the array.', '<?php
$items = [''a'', ''b'', ''c''];
foreach ($items as $item) {
  echo $item;
}
?>', '<?php
$items = [''a'', ''b'', ''c''];
foreach ($items as $item) {
  echo $item;
}
?>', 'The answer is already in the template.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 31, 'Foreach with Keys', 'foreach ($array as $key => $value) gives both key and value. Useful for associative arrays.', '<?php
$ages = [''John'' => 30, ''Jane'' => 25];
foreach ($ages as $name => $age) {
  echo ''$name is $age'';
}
?>', 'complete_code', 'Use foreach to echo each key and value.', '<?php
$data = [''a'' => 1, ''b'' => 2];
foreach ($data as $key => $val) {
  echo ''$key: $val'';
}
?>', '<?php
$data = [''a'' => 1, ''b'' => 2];
foreach ($data as $key => $val) {
  echo ''$key: $val'';
}
?>', 'The answer is already in the template.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 32, 'Array Functions', 'PHP array functions: count(), sort(), array_merge(), array_keys(), array_values(), in_array(), array_push().', '<?php
$arr = [3, 1, 2];
sort($arr);
print_r($arr);
echo count($arr);
echo in_array(2, $arr);
?>', 'complete_code', 'Use count() to get the number of elements.', '<?php
$items = [1, 2, 3];
echo count($items);
?>', '<?php
$items = [1, 2, 3];
echo count($items);
?>', 'The answer is already in the template.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 33, 'Array Merge', 'array_merge() combines two arrays. For string keys, later values overwrite earlier ones.', '<?php
$a = [1, 2];
$b = [3, 4];
$c = array_merge($a, $b);
print_r($c);
?>', 'complete_code', 'Merge $arr1 and $arr2 using array_merge.', '<?php
$arr1 = [''a'', ''b''];
$arr2 = [''c'', ''d''];
$result = array_merge($arr1, $arr2);
print_r($result);
?>', '<?php
$arr1 = [''a'', ''b''];
$arr2 = [''c'', ''d''];
$result = array_merge($arr1, $arr2);
print_r($result);
?>', 'The answer is already in the template.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 34, 'Switch Statement', 'PHP switch: switch ($var) { case ''value'': break; default: }.', '<?php
$day = 3;
switch ($day) {
  case 1: echo ''Mon''; break;
  case 2: echo ''Tue''; break;
  default: echo ''Other'';
}
?>', 'complete_code', 'Complete the switch to echo ''A'' when \$grade is ''A''.', '<?php
$grade = ''A'';
switch ($grade) {
  case ''A'':
    echo ''A'';
    break;
}
?>', '<?php
$grade = ''A'';
switch ($grade) {
  case ''A'':
    echo ''A'';
    break;
}
?>', 'The answer is already in the template.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 35, 'Ternary Operator', 'PHP ternary: $var = (condition) ? valueIfTrue : valueIfFalse;', '<?php
$age = 20;
$status = ($age >= 18) ? ''Adult'' : ''Minor'';
echo $status;
?>', 'complete_code', 'Use ternary to set \$result to ''Yes'' if \$num > 0, else ''No''.', '<?php
$num = 5;
$result = ($num > 0) ? ''Yes'' : ''No'';
echo $result;
?>', '<?php
$num = 5;
$result = ($num > 0) ? ''Yes'' : ''No'';
echo $result;
?>', 'The answer is already in the template.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 36, 'Null Coalescing', 'PHP 7+ null coalescing operator ?? returns the first non-null value. $var = $_GET[''key''] ?? ''default'';', '<?php
$name = $_GET[''name''] ?? ''Guest'';
echo $name;
?>', 'complete_code', 'Use ?? to set \$color to ''red'' if \$input is null.', '<?php
$input = null;
$color = $input ?? ''red'';
echo $color;
?>', '<?php
$input = null;
$color = $input ?? ''red'';
echo $color;
?>', 'The answer is already in the template.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 37, 'Match Expression', 'PHP 8+ match expression is like switch but returns a value. No break needed.', '<?php
$day = 3;
$name = match($day) {
  1 => ''Mon'',
  2 => ''Tue'',
  default => ''Other''
};
echo $name;
?>', 'complete_code', 'Use match to return ''Yes'' if \$val is true, ''No'' otherwise.', '<?php
$val = true;
$result = match($val) {
  true => ''Yes'',
  false => ''No''
};
echo $result;
?>', '<?php
$val = true;
$result = match($val) {
  true => ''Yes'',
  false => ''No''
};
echo $result;
?>', 'The answer is already in the template.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 38, 'HTML in PHP', 'PHP can be embedded in HTML. You can switch between PHP and HTML modes freely.', '<h1><?php echo ''Title''; ?></h1>
<p><?= ''Short echo tag'' ?></p>', 'complete_code', 'Use the short echo tag <?= to output ''Hello''.', '<p><?= ''Hello'' ?></p>', '<p><?= ''Hello'' ?></p>', 'The answer is already in the template.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 39, 'Form Handling', 'PHP forms: form with method=''post'' sends data to $_POST. method=''get'' sends to $_GET.', '<form method=''post''>
  <input type=''text'' name=''name''>
  <input type=''submit''>
</form>
<?php
if ($_POST) {
  echo $_POST[''name''];
}
?>', 'complete_code', 'Echo the ''email'' POST field if it exists.', '<?php
if ($_POST) {
  echo $_POST[''email''];
}
?>', '<?php
if ($_POST) {
  echo $_POST[''email''];
}
?>', 'The answer is already in the template.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 40, 'Form Validation', 'Validate form data: empty(), isset(), filter_var() for email/URL. Always sanitize user input.', '<?php
$email = $_POST[''email''] ?? '''';
if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
  echo ''Valid'';
} else {
  echo ''Invalid'';
}
?>', 'complete_code', 'Use filter_var with FILTER_VALIDATE_EMAIL to validate \$email.', '<?php
$email = ''test@test.com'';
if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
  echo ''Valid'';
} else {
  echo ''Invalid'';
}
?>', '<?php
$email = ''test@test.com'';
if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
  echo ''Valid'';
} else {
  echo ''Invalid'';
}
?>', 'The answer is already in the template.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 41, 'PHP Advanced 1', 'This level covers Multidimensional Arrays in PHP.', '<?php
// Example of Multidimensional Arrays
echo ''PHP'';
?>', 'predict_output', 'Answer the question about Multidimensional Arrays.', '', 'PHP', 'Review the documentation for Multidimensional Arrays.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 42, 'PHP Advanced 2', 'This level covers Variable Variables in PHP.', '<?php
// Example of Variable Variables
echo ''PHP'';
?>', 'true_false', 'Answer the question about Variable Variables.', '', 'true', 'Review the documentation for Variable Variables.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 43, 'PHP Advanced 3', 'This level covers Anonymous Functions in PHP.', '<?php
// Example of Anonymous Functions
echo ''PHP'';
?>', 'predict_output', 'Answer the question about Anonymous Functions.', '', 'PHP', 'Review the documentation for Anonymous Functions.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 44, 'PHP Advanced 4', 'This level covers Closures in PHP.', '<?php
// Example of Closures
echo ''PHP'';
?>', 'true_false', 'Answer the question about Closures.', '', 'true', 'Review the documentation for Closures.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 45, 'PHP Advanced 5', 'This level covers Arrow Functions in PHP.', '<?php
// Example of Arrow Functions
echo ''PHP'';
?>', 'predict_output', 'Answer the question about Arrow Functions.', '', 'PHP', 'Review the documentation for Arrow Functions.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 46, 'PHP Advanced 6', 'This level covers Generators in PHP.', '<?php
// Example of Generators
echo ''PHP'';
?>', 'true_false', 'Answer the question about Generators.', '', 'true', 'Review the documentation for Generators.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 47, 'PHP Advanced 7', 'This level covers Iterators in PHP.', '<?php
// Example of Iterators
echo ''PHP'';
?>', 'predict_output', 'Answer the question about Iterators.', '', 'PHP', 'Review the documentation for Iterators.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 48, 'PHP Advanced 8', 'This level covers Magic Methods in PHP.', '<?php
// Example of Magic Methods
echo ''PHP'';
?>', 'true_false', 'Answer the question about Magic Methods.', '', 'true', 'Review the documentation for Magic Methods.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 49, 'PHP Advanced 9', 'This level covers Error Handling in PHP.', '<?php
// Example of Error Handling
echo ''PHP'';
?>', 'predict_output', 'Answer the question about Error Handling.', '', 'PHP', 'Review the documentation for Error Handling.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 50, 'PHP Advanced 10', 'This level covers Custom Errors in PHP.', '<?php
// Example of Custom Errors
echo ''PHP'';
?>', 'true_false', 'Answer the question about Custom Errors.', '', 'true', 'Review the documentation for Custom Errors.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 51, 'PHP Advanced 11', 'This level covers Exception Class in PHP.', '<?php
// Example of Exception Class
echo ''PHP'';
?>', 'predict_output', 'Answer the question about Exception Class.', '', 'PHP', 'Review the documentation for Exception Class.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 52, 'PHP Advanced 12', 'This level covers Try Catch Finally in PHP.', '<?php
// Example of Try Catch Finally
echo ''PHP'';
?>', 'true_false', 'Answer the question about Try Catch Finally.', '', 'true', 'Review the documentation for Try Catch Finally.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 53, 'PHP Advanced 13', 'This level covers Throwable Interface in PHP.', '<?php
// Example of Throwable Interface
echo ''PHP'';
?>', 'predict_output', 'Answer the question about Throwable Interface.', '', 'PHP', 'Review the documentation for Throwable Interface.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 54, 'PHP Advanced 14', 'This level covers Type Declarations in PHP.', '<?php
// Example of Type Declarations
echo ''PHP'';
?>', 'true_false', 'Answer the question about Type Declarations.', '', 'true', 'Review the documentation for Type Declarations.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 55, 'PHP Advanced 15', 'This level covers Strict Types in PHP.', '<?php
// Example of Strict Types
echo ''PHP'';
?>', 'predict_output', 'Answer the question about Strict Types.', '', 'PHP', 'Review the documentation for Strict Types.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 56, 'PHP Advanced 16', 'This level covers Nullable Types in PHP.', '<?php
// Example of Nullable Types
echo ''PHP'';
?>', 'true_false', 'Answer the question about Nullable Types.', '', 'true', 'Review the documentation for Nullable Types.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 57, 'PHP Advanced 17', 'This level covers Union Types in PHP.', '<?php
// Example of Union Types
echo ''PHP'';
?>', 'predict_output', 'Answer the question about Union Types.', '', 'PHP', 'Review the documentation for Union Types.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 58, 'PHP Advanced 18', 'This level covers Mixed Type in PHP.', '<?php
// Example of Mixed Type
echo ''PHP'';
?>', 'true_false', 'Answer the question about Mixed Type.', '', 'true', 'Review the documentation for Mixed Type.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 59, 'PHP Advanced 19', 'This level covers Void Type in PHP.', '<?php
// Example of Void Type
echo ''PHP'';
?>', 'predict_output', 'Answer the question about Void Type.', '', 'PHP', 'Review the documentation for Void Type.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 60, 'PHP Advanced 20', 'This level covers Never Type in PHP.', '<?php
// Example of Never Type
echo ''PHP'';
?>', 'true_false', 'Answer the question about Never Type.', '', 'true', 'Review the documentation for Never Type.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 61, 'PHP OOP 1', 'This level covers Classes in PHP OOP.', '<?php
// Example of Classes
class Example { }
?>', 'true_false', 'Answer the question about Classes.', '<?php
// Classes
class Example { }
?>', '<?php
// Classes
class Example { }
?>', 'Review the documentation for Classes.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 62, 'PHP OOP 2', 'This level covers Constructors in PHP OOP.', '<?php
// Example of Constructors
class Example { }
?>', 'predict_output', 'Answer the question about Constructors.', '<?php
// Constructors
class Example { }
?>', '<?php
// Constructors
class Example { }
?>', 'Review the documentation for Constructors.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 63, 'PHP OOP 3', 'This level covers Properties in PHP OOP.', '<?php
// Example of Properties
class Example { }
?>', 'complete_code', 'Answer the question about Properties.', '<?php
// Properties
class Example { }
?>', '<?php
// Properties
class Example { }
?>', 'Review the documentation for Properties.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 64, 'PHP OOP 4', 'This level covers Methods in PHP OOP.', '<?php
// Example of Methods
class Example { }
?>', 'true_false', 'Answer the question about Methods.', '<?php
// Methods
class Example { }
?>', '<?php
// Methods
class Example { }
?>', 'Review the documentation for Methods.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 65, 'PHP OOP 5', 'This level covers this Keyword in PHP OOP.', '<?php
// Example of this Keyword
class Example { }
?>', 'predict_output', 'Answer the question about this Keyword.', '<?php
// this Keyword
class Example { }
?>', '<?php
// this Keyword
class Example { }
?>', 'Review the documentation for this Keyword.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 66, 'PHP OOP 6', 'This level covers Inheritance in PHP OOP.', '<?php
// Example of Inheritance
class Example { }
?>', 'complete_code', 'Answer the question about Inheritance.', '<?php
// Inheritance
class Example { }
?>', '<?php
// Inheritance
class Example { }
?>', 'Review the documentation for Inheritance.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 67, 'PHP OOP 7', 'This level covers Parent Keyword in PHP OOP.', '<?php
// Example of Parent Keyword
class Example { }
?>', 'true_false', 'Answer the question about Parent Keyword.', '<?php
// Parent Keyword
class Example { }
?>', '<?php
// Parent Keyword
class Example { }
?>', 'Review the documentation for Parent Keyword.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 68, 'PHP OOP 8', 'This level covers Visibility in PHP OOP.', '<?php
// Example of Visibility
class Example { }
?>', 'predict_output', 'Answer the question about Visibility.', '<?php
// Visibility
class Example { }
?>', '<?php
// Visibility
class Example { }
?>', 'Review the documentation for Visibility.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 69, 'PHP OOP 9', 'This level covers Static Methods in PHP OOP.', '<?php
// Example of Static Methods
class Example { }
?>', 'complete_code', 'Answer the question about Static Methods.', '<?php
// Static Methods
class Example { }
?>', '<?php
// Static Methods
class Example { }
?>', 'Review the documentation for Static Methods.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 70, 'PHP OOP 10', 'This level covers Static Properties in PHP OOP.', '<?php
// Example of Static Properties
class Example { }
?>', 'true_false', 'Answer the question about Static Properties.', '<?php
// Static Properties
class Example { }
?>', '<?php
// Static Properties
class Example { }
?>', 'Review the documentation for Static Properties.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 71, 'PHP OOP 11', 'This level covers Abstract Classes in PHP OOP.', '<?php
// Example of Abstract Classes
class Example { }
?>', 'predict_output', 'Answer the question about Abstract Classes.', '<?php
// Abstract Classes
class Example { }
?>', '<?php
// Abstract Classes
class Example { }
?>', 'Review the documentation for Abstract Classes.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 72, 'PHP OOP 12', 'This level covers Interfaces in PHP OOP.', '<?php
// Example of Interfaces
class Example { }
?>', 'complete_code', 'Answer the question about Interfaces.', '<?php
// Interfaces
class Example { }
?>', '<?php
// Interfaces
class Example { }
?>', 'Review the documentation for Interfaces.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 73, 'PHP OOP 13', 'This level covers Traits in PHP OOP.', '<?php
// Example of Traits
class Example { }
?>', 'true_false', 'Answer the question about Traits.', '<?php
// Traits
class Example { }
?>', '<?php
// Traits
class Example { }
?>', 'Review the documentation for Traits.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 74, 'PHP OOP 14', 'This level covers Final Keyword in PHP OOP.', '<?php
// Example of Final Keyword
class Example { }
?>', 'predict_output', 'Answer the question about Final Keyword.', '<?php
// Final Keyword
class Example { }
?>', '<?php
// Final Keyword
class Example { }
?>', 'Review the documentation for Final Keyword.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 75, 'PHP OOP 15', 'This level covers Constants in Classes in PHP OOP.', '<?php
// Example of Constants in Classes
class Example { }
?>', 'complete_code', 'Answer the question about Constants in Classes.', '<?php
// Constants in Classes
class Example { }
?>', '<?php
// Constants in Classes
class Example { }
?>', 'Review the documentation for Constants in Classes.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 76, 'PHP OOP 16', 'This level covers Type Hinting in PHP OOP.', '<?php
// Example of Type Hinting
class Example { }
?>', 'true_false', 'Answer the question about Type Hinting.', '<?php
// Type Hinting
class Example { }
?>', '<?php
// Type Hinting
class Example { }
?>', 'Review the documentation for Type Hinting.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 77, 'PHP OOP 17', 'This level covers Dependency Injection in PHP OOP.', '<?php
// Example of Dependency Injection
class Example { }
?>', 'predict_output', 'Answer the question about Dependency Injection.', '<?php
// Dependency Injection
class Example { }
?>', '<?php
// Dependency Injection
class Example { }
?>', 'Review the documentation for Dependency Injection.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 78, 'PHP OOP 18', 'This level covers Namespaces in PHP OOP.', '<?php
// Example of Namespaces
class Example { }
?>', 'complete_code', 'Answer the question about Namespaces.', '<?php
// Namespaces
class Example { }
?>', '<?php
// Namespaces
class Example { }
?>', 'Review the documentation for Namespaces.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 79, 'PHP OOP 19', 'This level covers Autoloading in PHP OOP.', '<?php
// Example of Autoloading
class Example { }
?>', 'true_false', 'Answer the question about Autoloading.', '<?php
// Autoloading
class Example { }
?>', '<?php
// Autoloading
class Example { }
?>', 'Review the documentation for Autoloading.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 80, 'PHP OOP 20', 'This level covers Magic Constants in PHP OOP.', '<?php
// Example of Magic Constants
class Example { }
?>', 'predict_output', 'Answer the question about Magic Constants.', '<?php
// Magic Constants
class Example { }
?>', '<?php
// Magic Constants
class Example { }
?>', 'Review the documentation for Magic Constants.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 81, 'PHP Mastery 1', 'Mastering PDO Database distinguishes expert PHP developers.', '<?php
// Advanced: PDO Database
echo ''Expert'';
?>', 'complete_code', 'Answer the question about PDO Database.', '<?php
// PDO Database
?>', '<?php
// PDO Database
echo ''done'';
?>', 'Review the documentation for PDO Database.', 150, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 82, 'PHP Mastery 2', 'Mastering PDO Prepared Statements distinguishes expert PHP developers.', '<?php
// Advanced: PDO Prepared Statements
echo ''Expert'';
?>', 'true_false', 'Answer the question about PDO Prepared Statements.', '<?php
// PDO Prepared Statements
?>', '<?php
// PDO Prepared Statements
echo ''done'';
?>', 'Review the documentation for PDO Prepared Statements.', 150, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 83, 'PHP Mastery 3', 'Mastering PDO Transactions distinguishes expert PHP developers.', '<?php
// Advanced: PDO Transactions
echo ''Expert'';
?>', 'complete_code', 'Answer the question about PDO Transactions.', '<?php
// PDO Transactions
?>', '<?php
// PDO Transactions
echo ''done'';
?>', 'Review the documentation for PDO Transactions.', 150, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 84, 'PHP Mastery 4', 'Mastering MySQLi Connection distinguishes expert PHP developers.', '<?php
// Advanced: MySQLi Connection
echo ''Expert'';
?>', 'true_false', 'Answer the question about MySQLi Connection.', '<?php
// MySQLi Connection
?>', '<?php
// MySQLi Connection
echo ''done'';
?>', 'Review the documentation for MySQLi Connection.', 150, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 85, 'PHP Mastery 5', 'Mastering MySQLi Queries distinguishes expert PHP developers.', '<?php
// Advanced: MySQLi Queries
echo ''Expert'';
?>', 'complete_code', 'Answer the question about MySQLi Queries.', '<?php
// MySQLi Queries
?>', '<?php
// MySQLi Queries
echo ''done'';
?>', 'Review the documentation for MySQLi Queries.', 150, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 86, 'PHP Mastery 6', 'Mastering CRUD Operations distinguishes expert PHP developers.', '<?php
// Advanced: CRUD Operations
echo ''Expert'';
?>', 'true_false', 'Answer the question about CRUD Operations.', '<?php
// CRUD Operations
?>', '<?php
// CRUD Operations
echo ''done'';
?>', 'Review the documentation for CRUD Operations.', 150, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 87, 'PHP Mastery 7', 'Mastering SQL Injection Prevention distinguishes expert PHP developers.', '<?php
// Advanced: SQL Injection Prevention
echo ''Expert'';
?>', 'complete_code', 'Answer the question about SQL Injection Prevention.', '<?php
// SQL Injection Prevention
?>', '<?php
// SQL Injection Prevention
echo ''done'';
?>', 'Review the documentation for SQL Injection Prevention.', 150, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 88, 'PHP Mastery 8', 'Mastering Password Hashing distinguishes expert PHP developers.', '<?php
// Advanced: Password Hashing
echo ''Expert'';
?>', 'true_false', 'Answer the question about Password Hashing.', '<?php
// Password Hashing
?>', '<?php
// Password Hashing
echo ''done'';
?>', 'Review the documentation for Password Hashing.', 150, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 89, 'PHP Mastery 9', 'Mastering File Uploads distinguishes expert PHP developers.', '<?php
// Advanced: File Uploads
echo ''Expert'';
?>', 'complete_code', 'Answer the question about File Uploads.', '<?php
// File Uploads
?>', '<?php
// File Uploads
echo ''done'';
?>', 'Review the documentation for File Uploads.', 150, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 90, 'PHP Mastery 10', 'Mastering Image Processing distinguishes expert PHP developers.', '<?php
// Advanced: Image Processing
echo ''Expert'';
?>', 'true_false', 'Answer the question about Image Processing.', '<?php
// Image Processing
?>', '<?php
// Image Processing
echo ''done'';
?>', 'Review the documentation for Image Processing.', 150, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 91, 'PHP Mastery 11', 'Mastering JSON Encoding distinguishes expert PHP developers.', '<?php
// Advanced: JSON Encoding
echo ''Expert'';
?>', 'complete_code', 'Answer the question about JSON Encoding.', '<?php
// JSON Encoding
?>', '<?php
// JSON Encoding
echo ''done'';
?>', 'Review the documentation for JSON Encoding.', 150, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 92, 'PHP Mastery 12', 'Mastering JSON Decoding distinguishes expert PHP developers.', '<?php
// Advanced: JSON Decoding
echo ''Expert'';
?>', 'true_false', 'Answer the question about JSON Decoding.', '<?php
// JSON Decoding
?>', '<?php
// JSON Decoding
echo ''done'';
?>', 'Review the documentation for JSON Decoding.', 150, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 93, 'PHP Mastery 13', 'Mastering REST API Basics distinguishes expert PHP developers.', '<?php
// Advanced: REST API Basics
echo ''Expert'';
?>', 'complete_code', 'Answer the question about REST API Basics.', '<?php
// REST API Basics
?>', '<?php
// REST API Basics
echo ''done'';
?>', 'Review the documentation for REST API Basics.', 150, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 94, 'PHP Mastery 14', 'Mastering cURL Requests distinguishes expert PHP developers.', '<?php
// Advanced: cURL Requests
echo ''Expert'';
?>', 'true_false', 'Answer the question about cURL Requests.', '<?php
// cURL Requests
?>', '<?php
// cURL Requests
echo ''done'';
?>', 'Review the documentation for cURL Requests.', 150, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 95, 'PHP Mastery 15', 'Mastering API Authentication distinguishes expert PHP developers.', '<?php
// Advanced: API Authentication
echo ''Expert'';
?>', 'complete_code', 'Answer the question about API Authentication.', '<?php
// API Authentication
?>', '<?php
// API Authentication
echo ''done'';
?>', 'Review the documentation for API Authentication.', 150, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 96, 'PHP Mastery 16', 'Mastering Middleware Pattern distinguishes expert PHP developers.', '<?php
// Advanced: Middleware Pattern
echo ''Expert'';
?>', 'true_false', 'Answer the question about Middleware Pattern.', '<?php
// Middleware Pattern
?>', '<?php
// Middleware Pattern
echo ''done'';
?>', 'Review the documentation for Middleware Pattern.', 150, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 97, 'PHP Mastery 17', 'Mastering MVC Pattern distinguishes expert PHP developers.', '<?php
// Advanced: MVC Pattern
echo ''Expert'';
?>', 'complete_code', 'Answer the question about MVC Pattern.', '<?php
// MVC Pattern
?>', '<?php
// MVC Pattern
echo ''done'';
?>', 'Review the documentation for MVC Pattern.', 150, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 98, 'PHP Mastery 18', 'Mastering Routing distinguishes expert PHP developers.', '<?php
// Advanced: Routing
echo ''Expert'';
?>', 'true_false', 'Answer the question about Routing.', '<?php
// Routing
?>', '<?php
// Routing
echo ''done'';
?>', 'Review the documentation for Routing.', 150, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 99, 'PHP Mastery 19', 'Mastering Dependency Injection Container distinguishes expert PHP developers.', '<?php
// Advanced: Dependency Injection Container
echo ''Expert'';
?>', 'complete_code', 'Answer the question about Dependency Injection Container.', '<?php
// Dependency Injection Container
?>', '<?php
// Dependency Injection Container
echo ''done'';
?>', 'Review the documentation for Dependency Injection Container.', 150, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('php', 100, 'PHP Mastery 20', 'Mastering PHP Best Practices distinguishes expert PHP developers.', '<?php
// Advanced: PHP Best Practices
echo ''Expert'';
?>', 'true_false', 'Answer the question about PHP Best Practices.', '<?php
// PHP Best Practices
?>', '<?php
// PHP Best Practices
echo ''done'';
?>', 'Review the documentation for PHP Best Practices.', 150, 'hard', 1);