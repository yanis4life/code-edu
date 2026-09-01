-- JavaScript lessons seed data (100 levels)

INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 1, 'Hello World', 'JavaScript is a programming language for the web. Use console.log() to print output to the browser console.', 'console.log(''Hello, World!'');', 'complete_code', 'Write a console.log statement that prints ''Hello, World!''.', 'console.log();', 'console.log(''Hello, World!'');', 'Put the string ''Hello, World!'' inside the parentheses.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 2, 'Variables with let', 'The let keyword declares a variable. Use = to assign a value. Variable names are case-sensitive.', 'let name = ''Alice'';
console.log(name);', 'complete_code', 'Declare a variable named ''message'' with the value ''Hello''.', 'console.log(message);', 'let message = ''Hello'';
console.log(message);', 'Use let message = ''Hello''; before the console.log.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 3, 'Constants with const', 'The const keyword declares a constant that cannot be reassigned. Use it for values that should not change.', 'const PI = 3.14;
console.log(PI);', 'complete_code', 'Declare a constant named ''greeting'' with value ''Hi'' and log it.', 'console.log(greeting);', 'const greeting = ''Hi'';
console.log(greeting);', 'Use const greeting = ''Hi''; before the console.log.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 4, 'Data Types', 'JavaScript has types: string, number, boolean, null, undefined, object. Use typeof to check type.', 'let name = ''John'';
let age = 25;
let isStudent = true;
console.log(typeof name, typeof age, typeof isStudent);', 'predict_output', 'What is the typeof ''Hello''?', '', 'string', 'The typeof operator returns the type as a string.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 5, 'Numbers and Arithmetic', 'JavaScript supports +, -, *, /, %, ** (exponentiation). The Math object has additional methods.', 'let sum = 10 + 5;
let product = 3 * 4;
let power = 2 ** 3;
console.log(sum, product, power);', 'predict_output', 'What is the result of 2 ** 3?', '', '8', 'The ** operator is exponentiation (2 cubed).', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 6, 'String Concatenation', 'Strings can be joined with + or template literals with backticks and ${}.', 'let first = ''Hello'';
let second = ''World'';
console.log(first + '' '' + second);
console.log(`${first} ${second}`);', 'complete_code', 'Log the string ''Hello World'' using concatenation with a space.', 'let a = ''Hello'';
let b = ''World'';
console.log();', 'let a = ''Hello'';
let b = ''World'';
console.log(a + '' '' + b);', 'Use the + operator to join a, space, and b.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 7, 'Template Literals', 'Template literals use backticks and ${} to embed expressions in strings.', 'let name = ''Bob'';
console.log(`Hello, ${name}!`);', 'complete_code', 'Use a template literal to log ''Hello, JS!'' where JS is the variable.', 'let lang = ''JS'';
console.log();', 'let lang = ''JS'';
console.log(`Hello, ${lang}!`);', 'Use backticks and ${lang} inside.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 8, 'If Statements', 'The if statement executes code if a condition is truthy. Use else for alternate path.', 'let age = 18;
if (age >= 18) {
  console.log(''Adult'');
} else {
  console.log(''Minor'');
}', 'complete_code', 'Log ''Positive'' if num > 0, otherwise log ''Not positive''.', 'let num = 5;
if (num > 0) {
  
} else {
  
}', 'let num = 5;
if (num > 0) {
  console.log(''Positive'');
} else {
  console.log(''Not positive'');
}', 'Add console.log statements inside the if and else blocks.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 9, 'Else If', 'Use else if for multiple conditions. The first true condition executes.', 'let score = 85;
if (score >= 90) {
  console.log(''A'');
} else if (score >= 80) {
  console.log(''B'');
} else {
  console.log(''C'');
}', 'complete_code', 'Complete the code to log ''Medium'' if num > 10, or ''Small'' otherwise.', 'let num = 15;
if (num > 10) {
  
} else {
  
}', 'let num = 15;
if (num > 10) {
  console.log(''Medium'');
} else {
  console.log(''Small'');
}', 'Add console.log statements in each branch.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 10, 'Comparison Operators', 'Comparison operators: == (loose), === (strict), !=, !==, >, <, >=, <=. Strict checks type and value.', 'console.log(5 == ''5'');
console.log(5 === ''5'');
console.log(5 !== ''5'');', 'predict_output', 'What does 5 === ''5'' return?', '', 'false', 'Strict equality (===) checks both type and value.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 11, 'Logical Operators', 'Logical operators: && (AND), || (OR), ! (NOT). They work with boolean values.', 'console.log(true && false);
console.log(true || false);
console.log(!true);', 'predict_output', 'What is the result of true && false?', '', 'false', 'AND returns true only if both operands are true.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 12, 'For Loops', 'A for loop repeats code: for (initialization; condition; increment) { }.', 'for (let i = 0; i < 5; i++) {
  console.log(i);
}', 'complete_code', 'Write a for loop that logs numbers 0 to 4.', 'for (let i = 0; i < 5; i++) {
  
}', 'for (let i = 0; i < 5; i++) {
  console.log(i);
}', 'Add console.log(i) inside the loop body.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 13, 'While Loops', 'A while loop runs as long as the condition is true. Be careful to update the condition variable.', 'let count = 0;
while (count < 3) {
  console.log(count);
  count++;
}', 'complete_code', 'Complete the while loop to log numbers 0 to 2.', 'let i = 0;
while (i < 3) {
  console.log(i);
  
}', 'let i = 0;
while (i < 3) {
  console.log(i);
  i++;
}', 'Add i++ to increment the counter.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 14, 'Arrays', 'Arrays store ordered collections. Access elements with index starting at 0. Use .length for size.', 'let fruits = [''apple'', ''banana'', ''cherry''];
console.log(fruits[0]);
console.log(fruits.length);', 'complete_code', 'Create an array with ''red'', ''green'', ''blue'' and log the first element.', 'let colors = ;
console.log(colors[0]);', 'let colors = [''red'', ''green'', ''blue''];
console.log(colors[0]);', 'Use square brackets to create the array.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 15, 'Array Methods', 'Arrays have methods: push() adds to end, pop() removes from end, shift() removes from start, unshift() adds to start.', 'let nums = [1, 2, 3];
nums.push(4);
console.log(nums);
nums.pop();
console.log(nums);', 'complete_code', 'Add the number 4 to the end of the array using push.', 'let nums = [1, 2, 3];
;
console.log(nums);', 'let nums = [1, 2, 3];
nums.push(4);
console.log(nums);', 'Use nums.push(4).', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 16, 'Array Length', 'The length property returns the number of elements. You can also set it to truncate the array.', 'let arr = [10, 20, 30, 40];
console.log(arr.length);', 'predict_output', 'What is the length of [''a'', ''b'', ''c'']?', '', '3', 'Length counts the number of elements.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 17, 'Functions', 'Functions are reusable blocks of code. Use function keyword or arrow syntax (=>).', 'function greet(name) {
  return ''Hello, '' + name + ''!'';
}
console.log(greet(''Alice''));', 'complete_code', 'Write a function add that takes a and b and returns their sum.', 'function add(a, b) {
  
}
console.log(add(3, 4));', 'function add(a, b) {
  return a + b;
}
console.log(add(3, 4));', 'Use the return statement to return a + b.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 18, 'Arrow Functions', 'Arrow functions are a shorter syntax: const fn = (params) => expression. If one param, parentheses optional.', 'const square = (x) => x * x;
console.log(square(5));', 'complete_code', 'Write an arrow function double that returns x * 2.', 'const double = (x) => ;
console.log(double(4));', 'const double = (x) => x * 2;
console.log(double(4));', 'The arrow function returns x * 2.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 19, 'Return Values', 'Functions return a value using return. If no return, the function returns undefined.', 'function add(a, b) { return a + b; }
let result = add(5, 3);
console.log(result);', 'predict_output', 'What does a function return if it has no return statement?', '', 'undefined', 'Think about what happens when a function doesn''t explicitly return.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 20, 'Parameters and Arguments', 'Functions can have default parameters: function greet(name = ''Guest'') { }.', 'function greet(name = ''Guest'') {
  return ''Hello, '' + name;
}
console.log(greet());
console.log(greet(''Bob''));', 'complete_code', 'Create a function multiply that takes a and b (default 1) and returns a * b.', 'function multiply(a, b = 1) {
  
}
console.log(multiply(5));
console.log(multiply(5, 2));', 'function multiply(a, b = 1) {
  return a * b;
}
console.log(multiply(5));
console.log(multiply(5, 2));', 'Return a * b inside the function.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 21, 'Objects', 'Objects store key-value pairs. Access properties with dot notation or bracket notation.', 'let person = { name: ''Alice'', age: 25 };
console.log(person.name);
console.log(person[''age'']);', 'complete_code', 'Create an object with key ''title'' and value ''Book'' and log the title.', 'let item = {  };
console.log(item.title);', 'let item = { title: ''Book'' };
console.log(item.title);', 'Use key: value syntax inside the curly braces.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 22, 'Object Properties', 'Add or modify properties with assignment. Delete properties with delete operator.', 'let car = { brand: ''Toyota'' };
car.year = 2020;
car.brand = ''Honda'';
delete car.year;
console.log(car);', 'complete_code', 'Add a property ''color'' with value ''red'' to the object.', 'let car = { brand: ''Ford'' };
;
console.log(car);', 'let car = { brand: ''Ford'' };
car.color = ''red'';
console.log(car);', 'Use dot notation to add the property.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 23, 'For...of Loop', 'The for...of loop iterates over iterable values like arrays.', 'let colors = [''red'', ''green'', ''blue''];
for (let color of colors) {
  console.log(color);
}', 'complete_code', 'Use a for...of loop to log each item in the array.', 'let items = [''a'', ''b'', ''c''];
for (let item of items) {
  
}', 'let items = [''a'', ''b'', ''c''];
for (let item of items) {
  console.log(item);
}', 'Add console.log(item) inside the loop.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 24, 'For...in Loop', 'The for...in loop iterates over object keys (property names).', 'let person = { name: ''John'', age: 30 };
for (let key in person) {
  console.log(key + '': '' + person[key]);
}', 'complete_code', 'Use a for...in loop to log each key of the object.', 'let obj = { a: 1, b: 2 };
for (let key in obj) {
  
}', 'let obj = { a: 1, b: 2 };
for (let key in obj) {
  console.log(key);
}', 'Add console.log(key) inside the loop.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 25, 'Array forEach', 'The forEach method executes a function for each array element.', 'let nums = [1, 2, 3];
nums.forEach(function(n) {
  console.log(n * 2);
});', 'complete_code', 'Use forEach to log each element of the array.', 'let nums = [10, 20, 30];
nums.forEach(function(n) {
  
});', 'let nums = [10, 20, 30];
nums.forEach(function(n) {
  console.log(n);
});', 'Add console.log(n) inside the function.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 26, 'Array Map', 'The map() method creates a new array by transforming each element.', 'let nums = [1, 2, 3];
let doubled = nums.map(n => n * 2);
console.log(doubled);', 'complete_code', 'Use map to create a new array with each number squared.', 'let nums = [1, 2, 3];
let squares = nums.map(n => );
console.log(squares);', 'let nums = [1, 2, 3];
let squares = nums.map(n => n * n);
console.log(squares);', 'The arrow function should return n * n.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 27, 'Array Filter', 'The filter() method creates a new array with elements that pass a test.', 'let nums = [1, 2, 3, 4, 5];
let evens = nums.filter(n => n % 2 === 0);
console.log(evens);', 'complete_code', 'Use filter to keep only numbers greater than 2.', 'let nums = [1, 2, 3, 4];
let big = nums.filter(n => );
console.log(big);', 'let nums = [1, 2, 3, 4];
let big = nums.filter(n => n > 2);
console.log(big);', 'The arrow function should return n > 2.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 28, 'Array Reduce', 'The reduce() method accumulates values to a single result.', 'let nums = [1, 2, 3, 4];
let sum = nums.reduce((acc, n) => acc + n, 0);
console.log(sum);', 'predict_output', 'What does [1, 2, 3].reduce((a, b) => a + b, 0) return?', '', '6', 'Reduce adds all elements together.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 29, 'String Methods', 'Strings have methods: toUpperCase(), toLowerCase(), trim(), split(), join(), includes(), slice().', 'let text = ''  Hello World  '';
console.log(text.trim());
console.log(text.toLowerCase());
console.log(text.includes(''World''));', 'complete_code', 'Convert the string to uppercase using toUpperCase().', 'let msg = ''hello'';
console.log();', 'let msg = ''hello'';
console.log(msg.toUpperCase());', 'Use msg.toUpperCase().', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 30, 'String Split and Join', 'split() converts a string to an array. join() converts an array to a string.', 'let csv = ''a,b,c'';
let arr = csv.split('','');
console.log(arr);
console.log(arr.join(''-''));', 'complete_code', 'Split the string ''apple,banana'' by comma into an array.', 'let text = ''apple,banana'';
let arr = text.split();
console.log(arr);', 'let text = ''apple,banana'';
let arr = text.split('','');
console.log(arr);', 'Use split('','') with the comma separator.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 31, 'Math Object', 'The Math object has methods: Math.round(), Math.floor(), Math.ceil(), Math.random(), Math.max(), Math.min().', 'console.log(Math.round(4.7));
console.log(Math.floor(4.7));
console.log(Math.ceil(4.2));
console.log(Math.random());', 'predict_output', 'What does Math.floor(4.9) return?', '', '4', 'floor rounds down to the nearest integer.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 32, 'Random Numbers', 'Math.random() returns a number between 0 (inclusive) and 1 (exclusive). Multiply and floor for integers.', 'let random = Math.floor(Math.random() * 10) + 1;
console.log(random);', 'complete_code', 'Generate a random integer between 1 and 6 (like a dice).', 'let dice = Math.floor(Math.random() * 6) + ;
console.log(dice);', 'let dice = Math.floor(Math.random() * 6) + 1;
console.log(dice);', 'Multiply by 6 and add 1.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 33, 'Date Object', 'The Date object handles dates and times. new Date() creates the current date. Methods: getFullYear(), getMonth(), getDate().', 'let now = new Date();
console.log(now.getFullYear());
console.log(now.getMonth());
console.log(now.getDate());', 'complete_code', 'Create a new Date object and log the full year.', 'let now = new Date();
console.log();', 'let now = new Date();
console.log(now.getFullYear());', 'Use now.getFullYear().', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 34, 'Type Conversion', 'Convert types: Number() to number, String() to string, Boolean() to boolean. parseInt() and parseFloat() for strings.', 'console.log(Number(''123''));
console.log(String(123));
console.log(Boolean(''''));
console.log(parseInt(''10.5''));', 'predict_output', 'What does Boolean('''') return?', '', 'false', 'Empty string is falsy.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 35, 'Truthy and Falsy', 'Falsy values: false, 0, '''' (empty string), null, undefined, NaN. Everything else is truthy.', 'console.log(Boolean(0));
console.log(Boolean(''''));
console.log(Boolean(''hello''));
console.log(Boolean([]));', 'multiple_choice', 'Which of these is falsy?', '0
''false''
[]
{}', '0', 'Zero is one of the falsy values.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 36, 'Null and Undefined', 'undefined means a variable has been declared but not assigned. null is an intentional absence of value.', 'let a;
let b = null;
console.log(a);
console.log(b);
console.log(typeof a);
console.log(typeof b);', 'true_false', 'null and undefined are the same type.', '', 'false', 'typeof null returns ''object'', typeof undefined returns ''undefined''.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 37, 'Ternary Operator', 'The ternary operator is a shorthand if-else: condition ? valueIfTrue : valueIfFalse.', 'let age = 20;
let status = age >= 18 ? ''Adult'' : ''Minor'';
console.log(status);', 'complete_code', 'Use the ternary operator to set result to ''Yes'' if num > 0, else ''No''.', 'let num = 5;
let result = num > 0 ?  : ;
console.log(result);', 'let num = 5;
let result = num > 0 ? ''Yes'' : ''No'';
console.log(result);', 'Put ''Yes'' after ? and ''No'' after :.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 38, 'Switch Statement', 'The switch statement evaluates an expression and matches cases. Use break to prevent fall-through.', 'let day = 3;
switch (day) {
  case 1: console.log(''Monday''); break;
  case 2: console.log(''Tuesday''); break;
  default: console.log(''Other'');
}', 'complete_code', 'Complete the switch to log ''A'' when grade is ''A''.', 'let grade = ''A'';
switch (grade) {
  case ''A'':
    ;
    break;
}', 'let grade = ''A'';
switch (grade) {
  case ''A'':
    console.log(''A'');
    break;
}', 'Add console.log(''A'') inside the case.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 39, 'Template Strings with Expressions', 'Template literals can evaluate any JavaScript expression inside ${}.', 'let a = 5, b = 10;
console.log(`Sum: ${a + b}`);', 'complete_code', 'Use a template literal to log ''5 + 3 = 8'' using variables.', 'let x = 5, y = 3;
console.log();', 'let x = 5, y = 3;
console.log(`${x} + ${y} = ${x + y}`);', 'Use backticks and ${} to embed expressions.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 40, 'Block Scope', 'let and const are block-scoped. var is function-scoped. A block is defined by { }.', 'if (true) {
  let x = 10;
  var y = 20;
}
console.log(y);
console.log(typeof x);', 'predict_output', 'What is the output of console.log(typeof x) after the if block?', '', 'undefined', 'let is block-scoped, so x is not accessible outside the block.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 41, 'DOM Selection', 'The DOM (Document Object Model) represents the page. Use document.getElementById(), querySelector(), querySelectorAll().', 'let el = document.getElementById(''main'');
let first = document.querySelector(''.item'');
let all = document.querySelectorAll(''p'');', 'complete_code', 'Select the element with id ''title'' using getElementById.', 'let heading = document.getElementById();
console.log(heading);', 'let heading = document.getElementById(''title'');
console.log(heading);', 'Pass the id ''title'' as a string to getElementById.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 42, 'DOM Content', 'textContent gets/sets the text inside an element. innerHTML gets/sets the HTML markup.', 'let el = document.getElementById(''main'');
console.log(el.textContent);
el.textContent = ''New text'';', 'complete_code', 'Set the textContent of the element with id ''info'' to ''Hello''.', 'let el = document.getElementById(''info'');
;', 'let el = document.getElementById(''info'');
el.textContent = ''Hello'';', 'Use el.textContent = ''Hello''.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 43, 'DOM Attributes', 'Set attributes with setAttribute() or direct property access. Get with getAttribute().', 'let img = document.querySelector(''img'');
img.setAttribute(''alt'', ''Description'');
img.src = ''photo.jpg'';', 'complete_code', 'Set the src attribute of the image to ''logo.png''.', 'let img = document.querySelector(''img'');
;', 'let img = document.querySelector(''img'');
img.src = ''logo.png'';', 'Use img.src = ''logo.png''.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 44, 'DOM Styles', 'Change styles with the style property. Use camelCase for multi-word properties (backgroundColor).', 'let el = document.querySelector(''p'');
el.style.color = ''red'';
el.style.backgroundColor = ''yellow'';', 'complete_code', 'Change the div''s text color to blue using the style property.', 'let div = document.querySelector(''div'');
;', 'let div = document.querySelector(''div'');
div.style.color = ''blue'';', 'Use div.style.color = ''blue''.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 45, 'DOM Classes', 'classList.add() adds a class, classList.remove() removes, classList.toggle() toggles, classList.contains() checks.', 'let el = document.querySelector(''div'');
el.classList.add(''active'');
el.classList.remove(''hidden'');
console.log(el.classList.contains(''active''));', 'complete_code', 'Add the class ''highlight'' to the element.', 'let el = document.querySelector(''p'');
;', 'let el = document.querySelector(''p'');
el.classList.add(''highlight'');', 'Use el.classList.add(''highlight'').', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 46, 'Creating Elements', 'document.createElement() creates a new element. appendChild() adds it to the DOM.', 'let newDiv = document.createElement(''div'');
newDiv.textContent = ''Hello'';
document.body.appendChild(newDiv);', 'complete_code', 'Create a new p element with text ''New paragraph'' and add it to the body.', 'let p = document.createElement(''p'');
;
document.body.appendChild(p);', 'let p = document.createElement(''p'');
p.textContent = ''New paragraph'';
document.body.appendChild(p);', 'Set textContent and then appendChild.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 47, 'Event Listeners', 'addEventListener() attaches an event handler. Common events: click, mouseover, keydown, submit.', 'let btn = document.querySelector(''button'');
btn.addEventListener(''click'', function() {
  console.log(''Clicked!'');
});', 'complete_code', 'Add a click event listener to the button that logs ''Clicked''.', 'let btn = document.querySelector(''button'');
btn.addEventListener(''click'', function() {
  
});', 'let btn = document.querySelector(''button'');
btn.addEventListener(''click'', function() {
  console.log(''Clicked'');
});', 'Add console.log(''Clicked'') inside the function.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 48, 'Event Object', 'Event handlers receive an event object with info about the event: target, type, clientX, clientY.', 'document.querySelector(''button'').addEventListener(''click'', function(e) {
  console.log(e.target);
  console.log(e.type);
});', 'true_false', 'The event object''s target property refers to the element that triggered the event.', '', 'true', 'Think about what e.target represents.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 49, 'Form Events', 'The submit event fires on forms. Use preventDefault() to stop the form from submitting.', 'document.querySelector(''form'').addEventListener(''submit'', function(e) {
  e.preventDefault();
  console.log(''Form submitted'');
});', 'complete_code', 'Add a submit event listener to the form that logs ''Sent''.', 'let form = document.querySelector(''form'');
form.addEventListener(''submit'', function(e) {
  e.preventDefault();
  
});', 'let form = document.querySelector(''form'');
form.addEventListener(''submit'', function(e) {
  e.preventDefault();
  console.log(''Sent'');
});', 'Add console.log(''Sent'') inside the handler.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 50, 'Keyboard Events', 'keydown fires when a key is pressed. keyup fires when released. The key property gives the key value.', 'document.addEventListener(''keydown'', function(e) {
  console.log(''Key pressed: '' + e.key);
});', 'complete_code', 'Add a keydown listener on the input that logs the key pressed.', 'let input = document.querySelector(''input'');
input.addEventListener(''keydown'', function(e) {
  
});', 'let input = document.querySelector(''input'');
input.addEventListener(''keydown'', function(e) {
  console.log(e.key);
});', 'Add console.log(e.key) inside the function.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 51, 'Timers: setTimeout', 'setTimeout() executes a function after a delay (in milliseconds). clearTimeout() cancels it.', 'setTimeout(function() {
  console.log(''3 seconds later'');
}, 3000);', 'complete_code', 'Use setTimeout to log ''Hello'' after 1 second (1000ms).', 'setTimeout(function() {
  
}, 1000);', 'setTimeout(function() {
  console.log(''Hello'');
}, 1000);', 'Add console.log(''Hello'') inside the function.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 52, 'Timers: setInterval', 'setInterval() executes a function repeatedly at a specified interval. clearInterval() stops it.', 'let count = 0;
let interval = setInterval(function() {
  count++;
  console.log(count);
  if (count >= 3) clearInterval(interval);
}, 1000);', 'complete_code', 'Use setInterval to log ''Tick'' every 500ms.', 'setInterval(function() {
  
}, 500);', 'setInterval(function() {
  console.log(''Tick'');
}, 500);', 'Add console.log(''Tick'') inside the function.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 53, 'JSON', 'JSON.stringify() converts objects to JSON strings. JSON.parse() converts JSON strings to objects.', 'let obj = { name: ''John'', age: 30 };
let json = JSON.stringify(obj);
console.log(json);
let parsed = JSON.parse(json);
console.log(parsed.name);', 'complete_code', 'Convert the object to a JSON string using JSON.stringify.', 'let person = { name: ''Alice'', age: 25 };
let json = ;
console.log(json);', 'let person = { name: ''Alice'', age: 25 };
let json = JSON.stringify(person);
console.log(json);', 'Use JSON.stringify(person).', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 54, 'Try Catch', 'try/catch handles errors gracefully. The code in try executes, and if an error occurs, catch runs.', 'try {
  let result = riskyOperation();
  console.log(result);
} catch (error) {
  console.log(''Error:'', error.message);
}', 'complete_code', 'Wrap the code in a try/catch to handle the error.', 'try {
  let x = y + 1;
} catch (e) {
  
}', 'try {
  let x = y + 1;
} catch (e) {
  console.log(e.message);
}', 'Add console.log(e.message) inside catch.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 55, 'Throw Error', 'Use throw new Error(''message'') to create custom errors. They can be caught by try/catch.', 'function divide(a, b) {
  if (b === 0) throw new Error(''Cannot divide by zero'');
  return a / b;
}', 'true_false', 'Throwing an error stops the execution of the current function.', '', 'true', 'Think about what throw does to the call stack.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 56, 'Strict Mode', '''use strict'' enables strict mode, which catches common coding mistakes and throws more errors.', '''use strict'';
x = 10;
console.log(x);', 'predict_output', 'In strict mode, what happens when you assign to an undeclared variable?', '', 'ReferenceError', 'Strict mode prevents accidental global variables.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 57, 'this Keyword', 'The value of ''this'' depends on how a function is called. In a method, it refers to the object. In the global scope, it''s the window.', 'let person = {
  name: ''John'',
  greet: function() {
    console.log(''Hi, '' + this.name);
  }
};
person.greet();', 'complete_code', 'Access the object''s ''name'' property using this.name inside the method.', 'let user = {
  name: ''Alice'',
  sayHi: function() {
    console.log(''Hi, '' + );
  }
};
user.sayHi();', 'let user = {
  name: ''Alice'',
  sayHi: function() {
    console.log(''Hi, '' + this.name);
  }
};
user.sayHi();', 'Use this.name to access the object''s property.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 58, 'Arrow Function this', 'Arrow functions don''t have their own ''this''. They inherit ''this'' from the surrounding scope.', 'let person = {
  name: ''John'',
  greet: function() {
    let arrow = () => console.log(this.name);
    arrow();
  }
};
person.greet();', 'true_false', 'Arrow functions have their own ''this'' binding.', '', 'false', 'Arrow functions inherit this from the parent scope.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 59, 'Spread Operator', 'The spread operator (...) expands arrays or objects. Useful for copying and merging.', 'let arr1 = [1, 2, 3];
let arr2 = [...arr1, 4, 5];
console.log(arr2);
let obj1 = { a: 1 };
let obj2 = { ...obj1, b: 2 };
console.log(obj2);', 'complete_code', 'Use the spread operator to copy the array into a new array.', 'let original = [1, 2, 3];
let copy = [];
console.log(copy);', 'let original = [1, 2, 3];
let copy = [...original];
console.log(copy);', 'Use [...original] to spread the elements.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 60, 'Rest Parameters', 'Rest parameters (...) collect remaining arguments into an array. They must be the last parameter.', 'function sum(...numbers) {
  return numbers.reduce((a, b) => a + b, 0);
}
console.log(sum(1, 2, 3, 4));', 'complete_code', 'Write a function that uses rest parameters to collect all arguments.', 'function collect(...args) {
  console.log(args);
}
collect(1, 2, 3);', 'function collect(...args) {
  console.log(args);
}
collect(1, 2, 3);', 'The answer is already in the template. Just submit it.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 61, 'Destructuring Arrays', 'Array destructuring unpacks array elements into variables: let [a, b] = [1, 2];', 'let [first, second] = [''red'', ''green''];
console.log(first);
console.log(second);', 'complete_code', 'Use array destructuring to get ''x'' and ''y'' from the array.', 'let [x, y] = [10, 20];
console.log(x);
console.log(y);', 'let [x, y] = [10, 20];
console.log(x);
console.log(y);', 'The answer is already in the template.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 62, 'Destructuring Objects', 'Object destructuring unpacks properties: let { name, age } = person;', 'let person = { name: ''John'', age: 30 };
let { name, age } = person;
console.log(name, age);', 'complete_code', 'Use object destructuring to get ''title'' and ''price'' from the object.', 'let item = { title: ''Book'', price: 15 };
let { title, price } = item;
console.log(title, price);', 'let item = { title: ''Book'', price: 15 };
let { title, price } = item;
console.log(title, price);', 'The answer is already in the template.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 63, 'Modules Import', 'ES modules use import and export. Use export to expose functions/variables, import to use them.', '// file: math.js
export function add(a, b) { return a + b; }
// file: main.js
import { add } from ''./math.js'';', 'true_false', 'ES modules use the ''import'' keyword to load exported code.', '', 'true', 'Think about how modules work in modern JavaScript.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 64, 'Modules Export', 'export default exports a single value per module. Named exports use export { name }.', 'export default function greet() { return ''Hello''; }
export const PI = 3.14;', 'true_false', 'A module can have multiple default exports.', '', 'false', 'There can be only one default export per module.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 65, 'Callbacks', 'A callback is a function passed as an argument to another function, executed later.', 'function process(data, callback) {
  let result = data * 2;
  callback(result);
}
process(5, function(r) { console.log(r); });', 'complete_code', 'Write a function that takes a callback and calls it with ''Done''.', 'function finish(msg, callback) {
  callback(msg);
}
finish(''Done'', function(m) { console.log(m); });', 'function finish(msg, callback) {
  callback(msg);
}
finish(''Done'', function(m) { console.log(m); });', 'The answer is already in the template.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 66, 'Promises', 'A Promise represents a future value. It has states: pending, resolved, rejected. Use .then() and .catch().', 'let promise = new Promise((resolve, reject) => {
  setTimeout(() => resolve(''Done''), 1000);
});
promise.then(result => console.log(result));', 'complete_code', 'Create a Promise that resolves with ''Success''.', 'let p = new Promise((resolve, reject) => {
  resolve(''Success'');
});
p.then(r => console.log(r));', 'let p = new Promise((resolve, reject) => {
  resolve(''Success'');
});
p.then(r => console.log(r));', 'The answer is already in the template.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 67, 'Promise Chaining', 'Promises can be chained. Each .then() returns a new promise, allowing sequential async operations.', 'fetch(''/data'')
  .then(response => response.json())
  .then(data => console.log(data))
  .catch(error => console.error(error));', 'predict_output', 'What method is used to handle promise errors?', '', 'catch', 'The .catch() method handles rejected promises.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 68, 'Async/Await', 'async functions return a Promise. await pauses execution until the promise resolves.', 'async function getData() {
  let response = await fetch(''/data'');
  let data = await response.json();
  return data;
}', 'complete_code', 'Write an async function that awaits a promise resolving to ''Hello''.', 'async function sayHello() {
  let result = await Promise.resolve(''Hello'');
  console.log(result);
}
sayHello();', 'async function sayHello() {
  let result = await Promise.resolve(''Hello'');
  console.log(result);
}
sayHello();', 'The answer is already in the template.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 69, 'Fetch API', 'The fetch() function makes HTTP requests. It returns a Promise that resolves to the Response object.', 'fetch(''https://api.example.com/data'')
  .then(res => res.json())
  .then(data => console.log(data));', 'complete_code', 'Use fetch to get data from ''/api/data'' and log the response.', 'fetch(''/api/data'')
  .then(res => res.json())
  .then(data => console.log(data));', 'fetch(''/api/data'')
  .then(res => res.json())
  .then(data => console.log(data));', 'The answer is already in the template.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 70, 'Local Storage in JS', 'localStorage.setItem(key, value) stores data. localStorage.getItem(key) retrieves. localStorage.removeItem(key) deletes.', 'localStorage.setItem(''theme'', ''dark'');
console.log(localStorage.getItem(''theme''));
localStorage.removeItem(''theme'');', 'complete_code', 'Store the value ''blue'' with key ''color'' in localStorage.', 'localStorage.setItem(''color'', ''blue'');
console.log(localStorage.getItem(''color''));', 'localStorage.setItem(''color'', ''blue'');
console.log(localStorage.getItem(''color''));', 'The answer is already in the template.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 71, 'Classes', 'ES6 classes are syntactic sugar over prototypes. Use class, constructor, and methods.', 'class Person {
  constructor(name) {
    this.name = name;
  }
  greet() {
    return ''Hello, '' + this.name;
  }
}
let p = new Person(''John'');
console.log(p.greet());', 'complete_code', 'Create a class Animal with a constructor that sets this.name.', 'class Animal {
  constructor(name) {
    this.name = name;
  }
}
let dog = new Animal(''Dog'');
console.log(dog.name);', 'class Animal {
  constructor(name) {
    this.name = name;
  }
}
let dog = new Animal(''Dog'');
console.log(dog.name);', 'The answer is already in the template.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 72, 'Class Methods', 'Classes can have methods (functions inside the class). Methods are shared across all instances.', 'class Calculator {
  add(a, b) { return a + b; }
}
let calc = new Calculator();
console.log(calc.add(2, 3));', 'complete_code', 'Add a method ''sayHello'' to the class that returns ''Hi''.', 'class Greeter {
  sayHello() {
    return ''Hi'';
  }
}
let g = new Greeter();
console.log(g.sayHello());', 'class Greeter {
  sayHello() {
    return ''Hi'';
  }
}
let g = new Greeter();
console.log(g.sayHello());', 'The answer is already in the template.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 73, 'Class Inheritance', 'The extends keyword creates a child class. super() calls the parent constructor.', 'class Animal {
  constructor(name) { this.name = name; }
  speak() { return this.name + '' makes noise''; }
}
class Dog extends Animal {
  speak() { return this.name + '' barks''; }
}
let d = new Dog(''Rex'');
console.log(d.speak());', 'complete_code', 'Create a class Cat that extends Animal and has a meow method.', 'class Animal {
  constructor(name) { this.name = name; }
}
class Cat extends Animal {
  meow() { return this.name + '' meows''; }
}
let c = new Cat(''Kitty'');
console.log(c.meow());', 'class Animal {
  constructor(name) { this.name = name; }
}
class Cat extends Animal {
  meow() { return this.name + '' meows''; }
}
let c = new Cat(''Kitty'');
console.log(c.meow());', 'The answer is already in the template.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 74, 'Getters and Setters', 'Getters (get) and setters (set) allow controlled access to properties. They look like properties but are functions.', 'class Person {
  constructor(name) { this._name = name; }
  get name() { return this._name; }
  set name(value) { this._name = value; }
}', 'true_false', 'Getters are called like functions with parentheses.', '', 'false', 'Getters are accessed like properties, not methods.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 75, 'Static Methods', 'Static methods are called on the class itself, not on instances. Use the static keyword.', 'class MathUtils {
  static add(a, b) { return a + b; }
}
console.log(MathUtils.add(5, 3));', 'complete_code', 'Create a static method ''greet'' that returns ''Hello''.', 'class Greeter {
  static greet() { return ''Hello''; }
}
console.log(Greeter.greet());', 'class Greeter {
  static greet() { return ''Hello''; }
}
console.log(Greeter.greet());', 'The answer is already in the template.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 76, 'Map Object', 'Map stores key-value pairs where keys can be any type (not just strings). Methods: set(), get(), has(), delete(), size.', 'let map = new Map();
map.set(''name'', ''John'');
map.set(42, ''answer'');
console.log(map.get(''name''));
console.log(map.has(42));
console.log(map.size);', 'complete_code', 'Create a Map, add a key ''a'' with value 1, and log the size.', 'let map = new Map();
map.set(''a'', 1);
console.log(map.size);', 'let map = new Map();
map.set(''a'', 1);
console.log(map.size);', 'The answer is already in the template.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 77, 'Set Object', 'Set stores unique values of any type. Duplicate values are ignored. Methods: add(), has(), delete(), size.', 'let set = new Set();
set.add(1);
set.add(2);
set.add(1);
console.log(set.size);
console.log(set.has(1));', 'predict_output', 'What is the size of a Set after adding 1, 2, 1?', '', '2', 'Set only stores unique values.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 78, 'Symbol', 'Symbol is a unique primitive value. Every Symbol() call creates a unique identifier. Useful for object keys.', 'let sym1 = Symbol(''id'');
let sym2 = Symbol(''id'');
console.log(sym1 === sym2);
let obj = { [sym1]: ''secret'' };
console.log(obj[sym1]);', 'true_false', 'Two Symbols with the same description are equal.', '', 'false', 'Each Symbol is unique regardless of the description.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 79, 'Generators', 'Generator functions (function*) can pause and resume. yield returns a value and pauses. next() resumes.', 'function* countToThree() {
  yield 1;
  yield 2;
  yield 3;
}
let gen = countToThree();
console.log(gen.next().value);
console.log(gen.next().value);
console.log(gen.next().value);', 'predict_output', 'What does gen.next().value return after yielding 1?', '', '2', 'Each next() call executes until the next yield.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 80, 'Error Handling', 'Use try/catch/finally. The finally block always executes, regardless of errors.', 'try {
  console.log(''Try'');
} catch (e) {
  console.log(''Catch'');
} finally {
  console.log(''Finally'');
}', 'predict_output', 'Does the finally block execute if there is no error?', '', 'yes', 'finally always runs, with or without an error.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 81, 'Closures', 'A closure is a function that remembers its outer scope even after the outer function has returned.', 'function createCounter() {
  let count = 0;
  return function() {
    count++;
    return count;
  };
}
let counter = createCounter();
console.log(counter());
console.log(counter());', 'complete_code', 'Create a function that returns a closure incrementing a count.', 'function createCounter() {
  let count = 0;
  return function() {
    count++;
    return count;
  };
}
let c = createCounter();
console.log(c());
console.log(c());', 'function createCounter() {
  let count = 0;
  return function() {
    count++;
    return count;
  };
}
let c = createCounter();
console.log(c());
console.log(c());', 'The answer is already in the template.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 82, 'IIFE', 'An IIFE (Immediately Invoked Function Expression) runs as soon as it''s defined. Syntax: (function() { })();', '(function() {
  let message = ''IIFE executed'';
  console.log(message);
})();', 'complete_code', 'Write an IIFE that logs ''Run''.', '(function() {
  console.log(''Run'');
})();', '(function() {
  console.log(''Run'');
})();', 'The answer is already in the template.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 83, 'Hoisting', 'var declarations are hoisted to the top of their scope. let and const are hoisted but not initialized (Temporal Dead Zone).', 'console.log(x);
var x = 5;
console.log(y);
let y = 10;', 'predict_output', 'What does console.log(x) output before var x = 5?', '', 'undefined', 'var declarations are hoisted and initialized with undefined.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 84, 'Currying', 'Currying transforms a function with multiple arguments into a sequence of nested functions.', 'function add(a) {
  return function(b) {
    return a + b;
  };
}
console.log(add(5)(3));', 'complete_code', 'Create a curried function multiply that takes a then b and returns a * b.', 'function multiply(a) {
  return function(b) {
    return a * b;
  };
}
console.log(multiply(4)(3));', 'function multiply(a) {
  return function(b) {
    return a * b;
  };
}
console.log(multiply(4)(3));', 'The answer is already in the template.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 85, 'Debouncing', 'Debouncing delays a function call until after a period of inactivity. Useful for search inputs.', 'function debounce(fn, delay) {
  let timer;
  return function(...args) {
    clearTimeout(timer);
    timer = setTimeout(() => fn.apply(this, args), delay);
  };
}', 'true_false', 'Debouncing ensures a function runs immediately on every call.', '', 'false', 'Debouncing delays the function until after a pause.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 86, 'Throttling', 'Throttling ensures a function runs at most once in a specified time period. Useful for scroll events.', 'function throttle(fn, limit) {
  let inThrottle;
  return function(...args) {
    if (!inThrottle) {
      fn.apply(this, args);
      inThrottle = true;
      setTimeout(() => inThrottle = false, limit);
    }
  };
}', 'true_false', 'Throttling guarantees a function runs at most once per specified interval.', '', 'true', 'Think about the difference between debounce and throttle.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 87, 'Memoization', 'Memoization caches function results to avoid repeated expensive computations.', 'function memoize(fn) {
  let cache = {};
  return function(arg) {
    if (cache[arg] !== undefined) return cache[arg];
    let result = fn(arg);
    cache[arg] = result;
    return result;
  };
}', 'complete_code', 'Create a simple memoized function that caches results.', 'function memoize(fn) {
  let cache = {};
  return function(arg) {
    if (cache[arg] !== undefined) return cache[arg];
    let result = fn(arg);
    cache[arg] = result;
    return result;
  };
}', 'function memoize(fn) {
  let cache = {};
  return function(arg) {
    if (cache[arg] !== undefined) return cache[arg];
    let result = fn(arg);
    cache[arg] = result;
    return result;
  };
}', 'The answer is already in the template.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 88, 'Proxy', 'The Proxy object wraps another object and intercepts operations like get, set, delete.', 'let handler = {
  get(target, prop) {
    return prop in target ? target[prop] : ''Default'';
  }
};
let p = new Proxy({}, handler);
p.name = ''John'';
console.log(p.name);
console.log(p.age);', 'predict_output', 'What does p.age return if age is not in the proxied object?', '', 'Default', 'The get handler returns ''Default'' for missing properties.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 89, 'Reflect', 'The Reflect object provides methods for interceptable JavaScript operations. Often used with Proxy.', 'let obj = { a: 1 };
console.log(Reflect.get(obj, ''a''));
console.log(Reflect.has(obj, ''a''));
console.log(Reflect.ownKeys(obj));', 'complete_code', 'Use Reflect.get to get the ''name'' property from the object.', 'let person = { name: ''Alice'' };
console.log();', 'let person = { name: ''Alice'' };
console.log(Reflect.get(person, ''name''));', 'Use Reflect.get(person, ''name'').', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 90, 'Intl Object', 'The Intl object provides language-sensitive formatting: Intl.DateTimeFormat, Intl.NumberFormat.', 'let date = new Date();
let formatter = new Intl.DateTimeFormat(''en-US'');
console.log(formatter.format(date));', 'complete_code', 'Format the number 1234567 using Intl.NumberFormat(''en-US'').', 'let formatted = new Intl.NumberFormat(''en-US'').format(1234567);
console.log(formatted);', 'let formatted = new Intl.NumberFormat(''en-US'').format(1234567);
console.log(formatted);', 'The answer is already in the template.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 91, 'Web Storage', 'sessionStorage is like localStorage but data is cleared when the page session ends.', 'sessionStorage.setItem(''temp'', ''data'');
console.log(sessionStorage.getItem(''temp''));
sessionStorage.clear();', 'true_false', 'sessionStorage data persists across browser restarts.', '', 'false', 'sessionStorage is cleared when the tab is closed.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 92, 'Console Methods', 'console has methods: log, warn, error, table, group, time, count. Useful for debugging.', 'console.log(''Info'');
console.warn(''Warning'');
console.error(''Error'');
console.table([{a: 1}, {a: 2}]);', 'multiple_choice', 'Which console method is used for error messages?', 'console.log()
console.warn()
console.error()
console.info()', 'console.error()', 'Error messages are shown in red.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 93, 'Performance', 'The Performance API measures code execution time. Use performance.now() for high-resolution timestamps.', 'let start = performance.now();
for (let i = 0; i < 1000; i++) {}
let end = performance.now();
console.log(`Took ${end - start}ms`);', 'complete_code', 'Log the current time in milliseconds using performance.now().', 'console.log(performance.now());', 'console.log(performance.now());', 'The answer is already in the template.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 94, 'Event Loop', 'The event loop processes tasks. Microtasks (Promises) run before macrotasks (setTimeout, DOM events).', 'console.log(''1'');
setTimeout(() => console.log(''2''), 0);
Promise.resolve().then(() => console.log(''3''));
console.log(''4'');', 'predict_output', 'What is the order of the numbers logged?', '', '1, 4, 3, 2', 'Synchronous code runs first, then microtasks, then macrotasks.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 95, 'Custom Events', 'Custom events allow you to create and dispatch your own events using CustomEvent and dispatchEvent().', 'let event = new CustomEvent(''myEvent'', { detail: { message: ''Hello'' } });
document.addEventListener(''myEvent'', function(e) {
  console.log(e.detail.message);
});
document.dispatchEvent(event);', 'complete_code', 'Create a CustomEvent named ''update'' with detail { data: ''ok'' } and dispatch it.', 'let event = new CustomEvent(''update'', { detail: { data: ''ok'' } });
document.dispatchEvent(event);', 'let event = new CustomEvent(''update'', { detail: { data: ''ok'' } });
document.dispatchEvent(event);', 'The answer is already in the template.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 96, 'Web Workers API', 'Web Workers run scripts in background threads. Use postMessage() to send data, onmessage to receive.', '// main.js
let worker = new Worker(''worker.js'');
worker.postMessage(''start'');
worker.onmessage = function(e) { console.log(e.data); };', 'true_false', 'Web Workers can access the DOM directly.', '', 'false', 'Workers run in a separate thread without DOM access.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 97, 'Fetch with Options', 'fetch() accepts an options object for method, headers, body, mode, credentials, etc.', 'fetch(''/api/data'', {
  method: ''POST'',
  headers: { ''Content-Type'': ''application/json'' },
  body: JSON.stringify({ name: ''John'' })
});', 'complete_code', 'Make a POST fetch request to ''/api/submit'' with JSON body.', 'fetch(''/api/submit'', {
  method: ''POST'',
  headers: { ''Content-Type'': ''application/json'' },
  body: JSON.stringify({ name: ''John'' })
});', 'fetch(''/api/submit'', {
  method: ''POST'',
  headers: { ''Content-Type'': ''application/json'' },
  body: JSON.stringify({ name: ''John'' })
});', 'The answer is already in the template.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 98, 'AbortController', 'AbortController cancels fetch requests. Pass signal to fetch, call abort() to cancel.', 'let controller = new AbortController();
let signal = controller.signal;
fetch(''/slow'', { signal }).catch(err => console.log(''Aborted''));
controller.abort();', 'complete_code', 'Create an AbortController and pass its signal to fetch.', 'let controller = new AbortController();
fetch(''/data'', { signal: controller.signal });
controller.abort();', 'let controller = new AbortController();
fetch(''/data'', { signal: controller.signal });
controller.abort();', 'The answer is already in the template.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 99, 'Intersection Observer', 'IntersectionObserver detects when elements are visible in the viewport. Useful for lazy loading, infinite scroll.', 'let observer = new IntersectionObserver(entries => {
  entries.forEach(entry => {
    if (entry.isIntersecting) console.log(''Visible'');
  });
});
observer.observe(document.querySelector(''.target''));', 'complete_code', 'Create an IntersectionObserver that logs ''Seen'' when an element is visible.', 'let observer = new IntersectionObserver(entries => {
  entries.forEach(entry => {
    if (entry.isIntersecting) console.log(''Seen'');
  });
});
observer.observe(document.querySelector(''.target''));', 'let observer = new IntersectionObserver(entries => {
  entries.forEach(entry => {
    if (entry.isIntersecting) console.log(''Seen'');
  });
});
observer.observe(document.querySelector(''.target''));', 'The answer is already in the template.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('javascript', 100, 'JavaScript Final Project', 'You have mastered JavaScript! Combine everything: functions, arrays, objects, DOM, events, and async programming.', '// Final project: create a simple counter
let count = 0;
let btn = document.querySelector(''button'');
btn.addEventListener(''click'', function() {
  count++;
  console.log(''Count: '' + count);
});', 'complete_code', 'Declare a variable ''name'' with value ''JavaScript'' and log it.', 'let name = ''JavaScript'';
console.log(name);', 'let name = ''JavaScript'';
console.log(name);', 'The answer is already in the template.', 150, 'hard', 1);