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
        title = "Hello World"
        theory = "PHP is a server-side scripting language. PHP code is embedded in HTML using <?php ?>. Use echo to output text."
        code = "<?php\necho 'Hello, World!';\n?>"
        challenge_type = "complete_code"
        challenge_desc = "Write PHP code to echo 'Hello, World!'."
        template = "<?php\necho ;\n?>"
        answer = "<?php\necho 'Hello, World!';\n?>"
        hint = "Put the string 'Hello, World!' inside the echo statement."
    elif level == 2:
        title = "Variables"
        theory = "PHP variables start with $. They are loosely typed. Common types: string, int, float, bool."
        code = "<?php\n$name = 'John';\n$age = 25;\necho $name;\n?>"
        challenge_type = "complete_code"
        challenge_desc = "Declare a variable $city with value 'Paris' and echo it."
        template = "<?php\n$city = 'Paris';\necho $city;\n?>"
        answer = "<?php\n$city = 'Paris';\necho $city;\n?>"
        hint = "The answer is already in the template."
    elif level == 3:
        title = "Data Types"
        theory = "PHP supports: string, int, float, bool, array, object, null. var_dump() shows type and value."
        code = "<?php\n$x = 10;\n$y = 3.14;\n$z = true;\necho var_dump($x);\n?>"
        challenge_type = "complete_code"
        challenge_desc = "Use var_dump() to show the type of variable $name."
        template = "<?php\n$name = 'Hello';\nvar_dump($name);\n?>"
        answer = "<?php\n$name = 'Hello';\nvar_dump($name);\n?>"
        hint = "The answer is already in the template."
    elif level == 4:
        title = "String Concatenation"
        theory = "Use . (dot) to concatenate strings in PHP. .= appends to a string."
        code = "<?php\n$first = 'Hello';\n$second = 'World';\necho $first . ' ' . $second;\n?>"
        challenge_type = "complete_code"
        challenge_desc = "Concatenate $a and $b with a space between them."
        template = "<?php\n$a = 'Hello';\n$b = 'PHP';\necho $a . ' ' . $b;\n?>"
        answer = "<?php\n$a = 'Hello';\n$b = 'PHP';\necho $a . ' ' . $b;\n?>"
        hint = "The answer is already in the template."
    elif level == 5:
        title = "If Statements"
        theory = "PHP if/else works like other languages. Use if, elseif, else. Curly braces enclose blocks."
        code = "<?php\n$age = 18;\nif ($age >= 18) {\n  echo 'Adult';\n} else {\n  echo 'Minor';\n}\n?>"
        challenge_type = "complete_code"
        challenge_desc = "Echo 'Positive' if $num > 0, else echo 'Not positive'."
        template = "<?php\n$num = 5;\nif ($num > 0) {\n  echo 'Positive';\n} else {\n  echo 'Not positive';\n}\n?>"
        answer = "<?php\n$num = 5;\nif ($num > 0) {\n  echo 'Positive';\n} else {\n  echo 'Not positive';\n}\n?>"
        hint = "The answer is already in the template."
    elif level == 6:
        title = "Comparison Operators"
        theory = "PHP comparison: == (value), === (value+type), !=, <>, !==, <, >, <=, >=."
        code = "<?php\n$a = 5;\n$b = '5';\nvar_dump($a == $b);\nvar_dump($a === $b);\n?>"
        challenge_type = "predict_output"
        challenge_desc = "What does 5 == '5' return in PHP?"
        template = ""
        answer = "true"
        hint = "== compares value only, not type."
    elif level == 7:
        title = "Logical Operators"
        theory = "PHP logical: && (AND), || (OR), ! (NOT), and, or, xor."
        code = "<?php\n$x = 5;\nvar_dump($x > 0 && $x < 10);\nvar_dump($x > 0 || $x < 0);\nvar_dump(!($x == 5));\n?>"
        challenge_type = "predict_output"
        challenge_desc = "What does true && false return?"
        template = ""
        answer = "false"
        hint = "AND returns true only if both are true."
    elif level == 8:
        title = "For Loops"
        theory = "PHP for loops: for (init; condition; increment) { }. Use $i++ to increment."
        code = "<?php\nfor ($i = 0; $i < 5; $i++) {\n  echo $i;\n}\n?>"
        challenge_type = "complete_code"
        challenge_desc = "Write a for loop that echoes numbers 0 to 4."
        template = "<?php\nfor ($i = 0; $i < 5; $i++) {\n  echo $i;\n}\n?>"
        answer = "<?php\nfor ($i = 0; $i < 5; $i++) {\n  echo $i;\n}\n?>"
        hint = "The answer is already in the template."
    elif level == 9:
        title = "While Loops"
        theory = "PHP while loops: while (condition) { }. Update the condition variable inside the loop."
        code = "<?php\n$i = 0;\nwhile ($i < 3) {\n  echo $i;\n  $i++;\n}\n?>"
        challenge_type = "complete_code"
        challenge_desc = "Complete the while loop to echo 0, 1, 2."
        template = "<?php\n$i = 0;\nwhile ($i < 3) {\n  echo $i;\n  $i++;\n}\n?>"
        answer = "<?php\n$i = 0;\nwhile ($i < 3) {\n  echo $i;\n  $i++;\n}\n?>"
        hint = "The answer is already in the template."
    elif level == 10:
        title = "Arrays"
        theory = "PHP arrays: indexed $arr = [1, 2, 3]; or $arr = array(1, 2, 3);. Access with $arr[0]."
        code = "<?php\n$colors = ['red', 'green', 'blue'];\necho $colors[0];\necho count($colors);\n?>"
        challenge_type = "complete_code"
        challenge_desc = "Create an indexed array with 'a', 'b', 'c' and echo the first element."
        template = "<?php\n$letters = ['a', 'b', 'c'];\necho $letters[0];\n?>"
        answer = "<?php\n$letters = ['a', 'b', 'c'];\necho $letters[0];\n?>"
        hint = "The answer is already in the template."
    elif level == 11:
        title = "Associative Arrays"
        theory = "Associative arrays use named keys: $person = ['name' => 'John', 'age' => 30];"
        code = "<?php\n$person = ['name' => 'John', 'age' => 30];\necho $person['name'];\n?>"
        challenge_type = "complete_code"
        challenge_desc = "Create an associative array with key 'name' value 'Alice' and echo it."
        template = "<?php\n$user = ['name' => 'Alice'];\necho $user['name'];\n?>"
        answer = "<?php\n$user = ['name' => 'Alice'];\necho $user['name'];\n?>"
        hint = "The answer is already in the template."
    elif level == 12:
        title = "Array Push"
        theory = "array_push() adds elements to the end of an array. $arr[] = value also works."
        code = "<?php\n$fruits = ['apple'];\n$fruits[] = 'banana';\narray_push($fruits, 'cherry');\nprint_r($fruits);\n?>"
        challenge_type = "complete_code"
        challenge_desc = "Add 'd' to the array using \$arr[]."
        template = "<?php\n$letters = ['a', 'b', 'c'];\n$letters[] = 'd';\nprint_r($letters);\n?>"
        answer = "<?php\n$letters = ['a', 'b', 'c'];\n$letters[] = 'd';\nprint_r($letters);\n?>"
        hint = "The answer is already in the template."
    elif level == 13:
        title = "Functions"
        theory = "PHP functions: function name($params) { return value; }. Call with name(args)."
        code = "<?php\nfunction add($a, $b) {\n  return $a + $b;\n}\necho add(3, 4);\n?>"
        challenge_type = "complete_code"
        challenge_desc = "Write a function multiply that takes $a and $b and returns $a * $b."
        template = "<?php\nfunction multiply($a, $b) {\n  return $a * $b;\n}\necho multiply(3, 4);\n?>"
        answer = "<?php\nfunction multiply($a, $b) {\n  return $a * $b;\n}\necho multiply(3, 4);\n?>"
        hint = "The answer is already in the template."
    elif level == 14:
        title = "Default Parameters"
        theory = "PHP functions can have default parameter values: function greet($name = 'Guest') { }."
        code = "<?php\nfunction greet($name = 'Guest') {\n  return 'Hello, ' . $name;\n}\necho greet();\necho greet('Bob');\n?>"
        challenge_type = "complete_code"
        challenge_desc = "Create a function with default parameter value of 1."
        template = "<?php\nfunction multiply($a, $b = 1) {\n  return $a * $b;\n}\necho multiply(5);\necho multiply(5, 2);\n?>"
        answer = "<?php\nfunction multiply($a, $b = 1) {\n  return $a * $b;\n}\necho multiply(5);\necho multiply(5, 2);\n?>"
        hint = "The answer is already in the template."
    elif level == 15:
        title = "Return Values"
        theory = "Functions return values with return. Without return, the function returns null."
        code = "<?php\nfunction square($x) {\n  return $x * $x;\n}\n$result = square(5);\necho $result;\n?>"
        challenge_type = "predict_output"
        challenge_desc = "What does a PHP function return if it has no return statement?"
        template = ""
        answer = "null"
        hint = "Functions without return return null."
    elif level == 16:
        title = "Scope"
        theory = "Variables defined outside functions are global. Use global keyword to access them inside functions."
        code = "<?php\n$x = 10;\nfunction test() {\n  global $x;\n  echo $x;\n}\ntest();\n?>"
        challenge_type = "complete_code"
        challenge_desc = "Use the global keyword to access $x inside the function."
        template = "<?php\n$x = 5;\nfunction show() {\n  global $x;\n  echo $x;\n}\nshow();\n?>"
        answer = "<?php\n$x = 5;\nfunction show() {\n  global $x;\n  echo $x;\n}\nshow();\n?>"
        hint = "The answer is already in the template."
    elif level == 17:
        title = "String Functions"
        theory = "PHP string functions: strlen(), strpos(), substr(), str_replace(), strtolower(), strtoupper(), trim()."
        code = "<?php\n$text = 'Hello World';\necho strlen($text);\necho strpos($text, 'World');\necho strtolower($text);\n?>"
        challenge_type = "complete_code"
        challenge_desc = "Use strlen() to get the length of the string."
        template = "<?php\n$msg = 'Hello';\necho strlen($msg);\n?>"
        answer = "<?php\n$msg = 'Hello';\necho strlen($msg);\n?>"
        hint = "The answer is already in the template."
    elif level == 18:
        title = "Math Functions"
        theory = "PHP math: abs(), sqrt(), round(), ceil(), floor(), max(), min(), rand(), pi()."
        code = "<?php\necho abs(-5);\necho sqrt(25);\necho max(10, 20);\necho rand(1, 10);\n?>"
        challenge_type = "predict_output"
        challenge_desc = "What does max(10, 20) return?"
        template = ""
        answer = "20"
        hint = "max returns the larger value."
    elif level == 19:
        title = "Constants"
        theory = "define('NAME', value) creates a constant. Constants are global and cannot be changed."
        code = "<?php\ndefine('SITE_NAME', 'My Site');\necho SITE_NAME;\n?>"
        challenge_type = "complete_code"
        challenge_desc = "Define a constant MAX_SIZE with value 100 and echo it."
        template = "<?php\ndefine('MAX_SIZE', 100);\necho MAX_SIZE;\n?>"
        answer = "<?php\ndefine('MAX_SIZE', 100);\necho MAX_SIZE;\n?>"
        hint = "The answer is already in the template."
    elif level == 20:
        title = "Superglobals"
        theory = "PHP superglobals: $_GET, $_POST, $_SESSION, $_COOKIE, $_SERVER, $_FILES, $_REQUEST, $GLOBALS."
        code = "<?php\necho $_SERVER['SERVER_NAME'];\necho $_GET['id'] ?? 'none';\n?>"
        challenge_type = "true_false"
        challenge_desc = "\$_SERVER is a PHP superglobal."
        template = ""
        answer = "true"
        hint = "Superglobals are built-in variables available everywhere."
    elif level == 21:
        title = "GET Parameters"
        theory = "GET parameters are in the URL query string. Access with $_GET['key']. Use ?? for default."
        code = "<?php\n$name = $_GET['name'] ?? 'Guest';\necho 'Hello, ' . $name;\n?>"
        challenge_type = "complete_code"
        challenge_desc = "Get the 'id' GET parameter with default 'none'."
        template = "<?php\n$id = $_GET['id'] ?? 'none';\necho $id;\n?>"
        answer = "<?php\n$id = $_GET['id'] ?? 'none';\necho $id;\n?>"
        hint = "The answer is already in the template."
    elif level == 22:
        title = "POST Parameters"
        theory = "POST parameters come from form submissions. Access with $_POST['key']. Use $_REQUEST for both GET/POST."
        code = "<?php\n$email = $_POST['email'] ?? '';\necho $email;\n?>"
        challenge_type = "complete_code"
        challenge_desc = "Get the 'name' POST parameter with default ''."
        template = "<?php\n$name = $_POST['name'] ?? '';\necho $name;\n?>"
        answer = "<?php\n$name = $_POST['name'] ?? '';\necho $name;\n?>"
        hint = "The answer is already in the template."
    elif level == 23:
        title = "Include Files"
        theory = "include('file.php') includes a file. require() errors on failure. include_once() and require_once() prevent duplicates."
        code = "<?php\ninclude 'header.php';\nrequire_once 'config.php';\necho 'Content';\ninclude 'footer.php';\n?>"
        challenge_type = "complete_code"
        challenge_desc = "Use include to include 'header.php'."
        template = "<?php\ninclude 'header.php';\necho 'Body';\n?>"
        answer = "<?php\ninclude 'header.php';\necho 'Body';\n?>"
        hint = "The answer is already in the template."
    elif level == 24:
        title = "Sessions"
        theory = "session_start() starts a session. Store data in $_SESSION. Data persists across pages."
        code = "<?php\nsession_start();\n$_SESSION['user'] = 'John';\necho $_SESSION['user'];\n?>"
        challenge_type = "complete_code"
        challenge_desc = "Start a session and set $_SESSION['name'] to 'Alice'."
        template = "<?php\nsession_start();\n$_SESSION['name'] = 'Alice';\necho $_SESSION['name'];\n?>"
        answer = "<?php\nsession_start();\n$_SESSION['name'] = 'Alice';\necho $_SESSION['name'];\n?>"
        hint = "The answer is already in the template."
    elif level == 25:
        title = "Cookies"
        theory = "setcookie(name, value, expire) sets a cookie. $_COOKIE reads it. Cookies are stored on the client."
        code = "<?php\nsetcookie('theme', 'dark', time() + 86400);\necho $_COOKIE['theme'] ?? 'none';\n?>"
        challenge_type = "complete_code"
        challenge_desc = "Set a cookie 'lang' with value 'en' that expires in 1 hour."
        template = "<?php\nsetcookie('lang', 'en', time() + 3600);\necho $_COOKIE['lang'] ?? 'none';\n?>"
        answer = "<?php\nsetcookie('lang', 'en', time() + 3600);\necho $_COOKIE['lang'] ?? 'none';\n?>"
        hint = "The answer is already in the template."
    elif level == 26:
        title = "Date and Time"
        theory = "date(format, timestamp) formats dates. time() returns current Unix timestamp. strtotime() parses date strings."
        code = "<?php\necho date('Y-m-d H:i:s');\necho date('l', strtotime('next Monday'));\n?>"
        challenge_type = "complete_code"
        challenge_desc = "Echo the current year using date('Y')."
        template = "<?php\necho date('Y');\n?>"
        answer = "<?php\necho date('Y');\n?>"
        hint = "The answer is already in the template."
    elif level == 27:
        title = "File Read"
        theory = "file_get_contents() reads a file into a string. fopen()/fread() for more control."
        code = "<?php\n$content = file_get_contents('data.txt');\necho $content;\n?>"
        challenge_type = "complete_code"
        challenge_desc = "Read the contents of 'file.txt' using file_get_contents."
        template = "<?php\n$content = file_get_contents('file.txt');\necho $content;\n?>"
        answer = "<?php\n$content = file_get_contents('file.txt');\necho $content;\n?>"
        hint = "The answer is already in the template."
    elif level == 28:
        title = "File Write"
        theory = "file_put_contents() writes data to a file. It overwrites by default. Use FILE_APPEND flag to append."
        code = "<?php\nfile_put_contents('log.txt', 'New entry\\n', FILE_APPEND);\n?>"
        challenge_type = "complete_code"
        challenge_desc = "Write 'Hello' to 'test.txt' using file_put_contents."
        template = "<?php\nfile_put_contents('test.txt', 'Hello');\n?>"
        answer = "<?php\nfile_put_contents('test.txt', 'Hello');\n?>"
        hint = "The answer is already in the template."
    elif level == 29:
        title = "Explode and Implode"
        theory = "explode(separator, string) splits a string into an array. implode(glue, array) joins array into a string."
        code = "<?php\n$csv = 'a,b,c';\n$arr = explode(',', $csv);\nprint_r($arr);\necho implode('-', $arr);\n?>"
        challenge_type = "complete_code"
        challenge_desc = "Split 'apple,banana' by comma using explode."
        template = "<?php\n$text = 'apple,banana';\n$arr = explode(',', $text);\nprint_r($arr);\n?>"
        answer = "<?php\n$text = 'apple,banana';\n$arr = explode(',', $text);\nprint_r($arr);\n?>"
        hint = "The answer is already in the template."
    elif level == 30:
        title = "Foreach Loop"
        theory = "foreach iterates over arrays: foreach ($array as $key => $value) { }."
        code = "<?php\n$colors = ['red', 'green', 'blue'];\nforeach ($colors as $color) {\n  echo $color;\n}\n?>"
        challenge_type = "complete_code"
        challenge_desc = "Use foreach to echo each element of the array."
        template = "<?php\n$items = ['a', 'b', 'c'];\nforeach ($items as $item) {\n  echo $item;\n}\n?>"
        answer = "<?php\n$items = ['a', 'b', 'c'];\nforeach ($items as $item) {\n  echo $item;\n}\n?>"
        hint = "The answer is already in the template."
    elif level == 31:
        title = "Foreach with Keys"
        theory = "foreach ($array as $key => $value) gives both key and value. Useful for associative arrays."
        code = "<?php\n$ages = ['John' => 30, 'Jane' => 25];\nforeach ($ages as $name => $age) {\n  echo '$name is $age';\n}\n?>"
        challenge_type = "complete_code"
        challenge_desc = "Use foreach to echo each key and value."
        template = "<?php\n$data = ['a' => 1, 'b' => 2];\nforeach ($data as $key => $val) {\n  echo '$key: $val';\n}\n?>"
        answer = "<?php\n$data = ['a' => 1, 'b' => 2];\nforeach ($data as $key => $val) {\n  echo '$key: $val';\n}\n?>"
        hint = "The answer is already in the template."
    elif level == 32:
        title = "Array Functions"
        theory = "PHP array functions: count(), sort(), array_merge(), array_keys(), array_values(), in_array(), array_push()."
        code = "<?php\n$arr = [3, 1, 2];\nsort($arr);\nprint_r($arr);\necho count($arr);\necho in_array(2, $arr);\n?>"
        challenge_type = "complete_code"
        challenge_desc = "Use count() to get the number of elements."
        template = "<?php\n$items = [1, 2, 3];\necho count($items);\n?>"
        answer = "<?php\n$items = [1, 2, 3];\necho count($items);\n?>"
        hint = "The answer is already in the template."
    elif level == 33:
        title = "Array Merge"
        theory = "array_merge() combines two arrays. For string keys, later values overwrite earlier ones."
        code = "<?php\n$a = [1, 2];\n$b = [3, 4];\n$c = array_merge($a, $b);\nprint_r($c);\n?>"
        challenge_type = "complete_code"
        challenge_desc = "Merge $arr1 and $arr2 using array_merge."
        template = "<?php\n$arr1 = ['a', 'b'];\n$arr2 = ['c', 'd'];\n$result = array_merge($arr1, $arr2);\nprint_r($result);\n?>"
        answer = "<?php\n$arr1 = ['a', 'b'];\n$arr2 = ['c', 'd'];\n$result = array_merge($arr1, $arr2);\nprint_r($result);\n?>"
        hint = "The answer is already in the template."
    elif level == 34:
        title = "Switch Statement"
        theory = "PHP switch: switch ($var) { case 'value': break; default: }."
        code = "<?php\n$day = 3;\nswitch ($day) {\n  case 1: echo 'Mon'; break;\n  case 2: echo 'Tue'; break;\n  default: echo 'Other';\n}\n?>"
        challenge_type = "complete_code"
        challenge_desc = "Complete the switch to echo 'A' when \$grade is 'A'."
        template = "<?php\n$grade = 'A';\nswitch ($grade) {\n  case 'A':\n    echo 'A';\n    break;\n}\n?>"
        answer = "<?php\n$grade = 'A';\nswitch ($grade) {\n  case 'A':\n    echo 'A';\n    break;\n}\n?>"
        hint = "The answer is already in the template."
    elif level == 35:
        title = "Ternary Operator"
        theory = "PHP ternary: $var = (condition) ? valueIfTrue : valueIfFalse;"
        code = "<?php\n$age = 20;\n$status = ($age >= 18) ? 'Adult' : 'Minor';\necho $status;\n?>"
        challenge_type = "complete_code"
        challenge_desc = "Use ternary to set \$result to 'Yes' if \$num > 0, else 'No'."
        template = "<?php\n$num = 5;\n$result = ($num > 0) ? 'Yes' : 'No';\necho $result;\n?>"
        answer = "<?php\n$num = 5;\n$result = ($num > 0) ? 'Yes' : 'No';\necho $result;\n?>"
        hint = "The answer is already in the template."
    elif level == 36:
        title = "Null Coalescing"
        theory = "PHP 7+ null coalescing operator ?? returns the first non-null value. $var = $_GET['key'] ?? 'default';"
        code = "<?php\n$name = $_GET['name'] ?? 'Guest';\necho $name;\n?>"
        challenge_type = "complete_code"
        challenge_desc = "Use ?? to set \$color to 'red' if \$input is null."
        template = "<?php\n$input = null;\n$color = $input ?? 'red';\necho $color;\n?>"
        answer = "<?php\n$input = null;\n$color = $input ?? 'red';\necho $color;\n?>"
        hint = "The answer is already in the template."
    elif level == 37:
        title = "Match Expression"
        theory = "PHP 8+ match expression is like switch but returns a value. No break needed."
        code = "<?php\n$day = 3;\n$name = match($day) {\n  1 => 'Mon',\n  2 => 'Tue',\n  default => 'Other'\n};\necho $name;\n?>"
        challenge_type = "complete_code"
        challenge_desc = "Use match to return 'Yes' if \$val is true, 'No' otherwise."
        template = "<?php\n$val = true;\n$result = match($val) {\n  true => 'Yes',\n  false => 'No'\n};\necho $result;\n?>"
        answer = "<?php\n$val = true;\n$result = match($val) {\n  true => 'Yes',\n  false => 'No'\n};\necho $result;\n?>"
        hint = "The answer is already in the template."
    elif level == 38:
        title = "HTML in PHP"
        theory = "PHP can be embedded in HTML. You can switch between PHP and HTML modes freely."
        code = "<h1><?php echo 'Title'; ?></h1>\n<p><?= 'Short echo tag' ?></p>"
        challenge_type = "complete_code"
        challenge_desc = "Use the short echo tag <?= to output 'Hello'."
        template = "<p><?= 'Hello' ?></p>"
        answer = "<p><?= 'Hello' ?></p>"
        hint = "The answer is already in the template."
    elif level == 39:
        title = "Form Handling"
        theory = "PHP forms: form with method='post' sends data to $_POST. method='get' sends to $_GET."
        code = "<form method='post'>\n  <input type='text' name='name'>\n  <input type='submit'>\n</form>\n<?php\nif ($_POST) {\n  echo $_POST['name'];\n}\n?>"
        challenge_type = "complete_code"
        challenge_desc = "Echo the 'email' POST field if it exists."
        template = "<?php\nif ($_POST) {\n  echo $_POST['email'];\n}\n?>"
        answer = "<?php\nif ($_POST) {\n  echo $_POST['email'];\n}\n?>"
        hint = "The answer is already in the template."
    elif level == 40:
        title = "Form Validation"
        theory = "Validate form data: empty(), isset(), filter_var() for email/URL. Always sanitize user input."
        code = "<?php\n$email = $_POST['email'] ?? '';\nif (filter_var($email, FILTER_VALIDATE_EMAIL)) {\n  echo 'Valid';\n} else {\n  echo 'Invalid';\n}\n?>"
        challenge_type = "complete_code"
        challenge_desc = "Use filter_var with FILTER_VALIDATE_EMAIL to validate \$email."
        template = "<?php\n$email = 'test@test.com';\nif (filter_var($email, FILTER_VALIDATE_EMAIL)) {\n  echo 'Valid';\n} else {\n  echo 'Invalid';\n}\n?>"
        answer = "<?php\n$email = 'test@test.com';\nif (filter_var($email, FILTER_VALIDATE_EMAIL)) {\n  echo 'Valid';\n} else {\n  echo 'Invalid';\n}\n?>"
        hint = "The answer is already in the template."
    elif level <= 60:
        title = "PHP Advanced " + str(level - 40)
        topics = ["Multidimensional Arrays", "Variable Variables", "Anonymous Functions", "Closures", "Arrow Functions", "Generators", "Iterators", "Magic Methods", "Error Handling", "Custom Errors", "Exception Class", "Try Catch Finally", "Throwable Interface", "Type Declarations", "Strict Types", "Nullable Types", "Union Types", "Mixed Type", "Void Type", "Never Type"]
        topic = topics[(level - 41) % len(topics)]
        theory = "This level covers " + topic + " in PHP."
        code = "<?php\n// Example of " + topic + "\necho 'PHP';\n?>"
        challenge_type = "true_false" if level % 2 == 0 else "predict_output"
        challenge_desc = "Answer the question about " + topic + "."
        template = ""
        answer = "true" if level % 2 == 0 else "PHP"
        hint = "Review the documentation for " + topic + "."
    elif level <= 80:
        title = "PHP OOP " + str(level - 60)
        topics = ["Classes", "Constructors", "Properties", "Methods", "this Keyword", "Inheritance", "Parent Keyword", "Visibility", "Static Methods", "Static Properties", "Abstract Classes", "Interfaces", "Traits", "Final Keyword", "Constants in Classes", "Type Hinting", "Dependency Injection", "Namespaces", "Autoloading", "Magic Constants"]
        topic = topics[(level - 61) % len(topics)]
        theory = "This level covers " + topic + " in PHP OOP."
        code = "<?php\n// Example of " + topic + "\nclass Example { }\n?>"
        challenge_type = "complete_code" if level % 3 == 0 else ("true_false" if level % 3 == 1 else "predict_output")
        challenge_desc = "Answer the question about " + topic + "."
        template = "<?php\n// " + topic + "\nclass Example { }\n?>"
        answer = "<?php\n// " + topic + "\nclass Example { }\n?>"
        hint = "Review the documentation for " + topic + "."
    elif level <= 100:
        title = "PHP Mastery " + str(level - 80)
        topics = ["PDO Database", "PDO Prepared Statements", "PDO Transactions", "MySQLi Connection", "MySQLi Queries", "CRUD Operations", "SQL Injection Prevention", "Password Hashing", "File Uploads", "Image Processing", "JSON Encoding", "JSON Decoding", "REST API Basics", "cURL Requests", "API Authentication", "Middleware Pattern", "MVC Pattern", "Routing", "Dependency Injection Container", "PHP Best Practices"]
        topic = topics[(level - 81) % len(topics)]
        theory = "Mastering " + topic + " distinguishes expert PHP developers."
        code = "<?php\n// Advanced: " + topic + "\necho 'Expert';\n?>"
        challenge_type = "true_false" if level % 2 == 0 else "complete_code"
        challenge_desc = "Answer the question about " + topic + "."
        template = "<?php\n// " + topic + "\n?>"
        answer = "<?php\n// " + topic + "\necho 'done';\n?>"
        hint = "Review the documentation for " + topic + "."

    LESSON_TEMPLATES.append({
        "language": "php",
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
    sql_lines.append("-- PHP lessons seed data (100 levels)")
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

        sql = "INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('" + lang + "', " + str(num) + ", '" + title + "', '" + theory + "', '" + code + "', '" + ctype + "', '" + cdesc + "', '" + template + "', '" + answer + "', '" + hint + "', " + str(xp) + ", '" + diff + "', 1);"
        sql_lines.append(sql)

    return "\n".join(sql_lines)

if __name__ == "__main__":
    sql = generate_sql()
    with open("seed_php_lessons.sql", "w") as f:
        f.write(sql)
    print("Generated " + str(len(LESSON_TEMPLATES)) + " PHP lesson SQL statements")
    print("Output written to seed_php_lessons.sql")