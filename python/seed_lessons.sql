-- Python lessons seed data (100 levels)

INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 1, 'Hello, World!', 'The print() function is used to output text to the console. In Python, you can print text strings by enclosing them in quotes.', 'print(''Hello, World!'')', 'complete_code', 'Write a program that prints ''Hello, World!'' to the console.', 'print()', 'print(''Hello, World!'')', 'Put the text ''Hello, World!'' inside the print() function with quotes.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 2, 'Variables and Data Types', 'Variables store data in memory. Python has several data types: integers (int), floating-point numbers (float), strings (str), and booleans (bool).', 'name = ''Alice''
age = 25
height = 5.6
is_student = True
print(name, age, height, is_student)', 'fix_bug', 'The code has a bug. Fix the variable assignment to make it work.', 'name = ''Alice''
nane = ''Bob''
print(name)', 'name = ''Alice''
name = ''Bob''
print(name)', 'Check the variable name on the second line.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 3, 'Basic Arithmetic', 'Python supports all standard arithmetic operations.', 'a = 10
b = 3
print(a + b)
print(a - b)
print(a * b)
print(a / b)
print(a // b)
print(a % b)
print(a ** b)', 'predict_output', 'What is the output of 10 // 3?', '', '3', 'Floor division rounds down to the nearest integer.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 4, 'String Operations', 'Strings can be concatenated with +, repeated with *, and you can access individual characters with indexing.', 'first = ''Hello''
second = ''World''
message = first + '' '' + second
print(message)', 'complete_code', 'Complete the code to concatenate ''Hello'' and ''Python'' with a space.', 'greeting = ''Hello''
language = ''Python''
message = 
print(message)', 'greeting = ''Hello''
language = ''Python''
message = greeting + '' '' + language
print(message)', 'Use the + operator to join strings.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 5, 'User Input', 'The input() function allows users to enter data. It always returns a string.', 'name = input(''Enter your name: '')
print(''Hello, '' + name + ''!'')', 'true_false', 'The input() function always returns a string.', '', 'true', 'Think about what type input() returns.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 6, 'If Statements', 'Conditional statements allow your code to make decisions. Use if, elif, and else.', 'age = 18
if age >= 18:
    print(''Adult'')
else:
    print(''Minor'')', 'complete_code', 'Complete the code to check if a number is positive, negative, or zero.', 'num = 5
if num > 0:
    print(''Positive'')
 num < 0:
    print(''Negative'')
else:
    print(''Zero'')', 'num = 5
if num > 0:
    print(''Positive'')
elif num < 0:
    print(''Negative'')
else:
    print(''Zero'')', 'You need to use ''elif'' for the second condition.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 7, 'Logical Operators', 'Python supports logical operators: and, or, not.', 'x = 5
print(x > 0 and x < 10)
print(x > 0 or x < 0)
print(not x == 5)', 'predict_output', 'What is the output of: print(True and False)', '', 'False', 'The ''and'' operator returns True only if both operands are True.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 8, 'For Loops', 'For loops iterate over sequences. The range() function generates a sequence of numbers.', 'for i in range(5):
    print(i)', 'complete_code', 'Complete the loop to print numbers from 1 to 5.', 'for i in range(, 6):
    print(i)', 'for i in range(1, 6):
    print(i)', 'The range() function takes start and stop parameters.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 9, 'While Loops', 'While loops execute as long as a condition remains True.', 'count = 0
while count < 5:
    print(count)
    count += 1', 'fix_bug', 'Fix the infinite loop by adding the missing increment.', 'count = 0
while count < 5:
    print(count)', 'count = 0
while count < 5:
    print(count)
    count += 1', 'The loop variable needs to be incremented inside the loop.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 10, 'Lists', 'Lists are ordered, mutable collections. They can hold items of different types.', 'fruits = [''apple'', ''banana'', ''cherry'']
print(fruits[0])
fruits.append(''date'')
print(len(fruits))', 'multiple_choice', 'What method adds an item to the end of a list?', 'append()
add()
insert()
push()', 'append()', 'Think about the method used in the code example.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 11, 'List Operations', 'Lists support slicing, concatenation, and methods like sort(), reverse(), pop().', 'nums = [3, 1, 4, 1, 5, 9]
nums.sort()
print(nums)', 'fix_bug', 'Fix the code to correctly remove the first occurrence of 3.', 'nums = [1, 2, 3, 4, 3, 5]
nums.remove(3)
print(nums)', 'nums = [1, 2, 3, 4, 3, 5]
nums.remove(3)
print(nums)', 'The code is actually correct. remove() removes the first occurrence.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 12, 'Tuples', 'Tuples are immutable sequences, defined with parentheses.', 'point = (3, 4)
x, y = point
print(x, y)', 'true_false', 'Tuples can be modified after creation.', '', 'false', 'Remember the definition of immutable.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 13, 'Dictionaries', 'Dictionaries store key-value pairs. Keys must be unique and immutable.', 'student = {''name'': ''Alice'', ''age'': 20}
print(student[''name''])', 'complete_code', 'Add a new key ''city'' with value ''New York'' to the dictionary.', 'person = {''name'': ''Bob'', ''age'': 25}
person[''city''] = 
print(person)', 'person = {''name'': ''Bob'', ''age'': 25}
person[''city''] = ''New York''
print(person)', 'Use square brackets and assignment.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 14, 'Sets', 'Sets are unordered collections of unique elements.', 'a = {1, 2, 3, 4}
b = {3, 4, 5, 6}
print(a & b)', 'predict_output', 'What is the output of {1, 2, 3} & {2, 3, 4}?', '', '{2, 3}', 'The & operator performs set intersection.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 15, 'Functions', 'Functions are defined with def and can accept parameters and return values.', 'def greet(name):
    return ''Hello, '' + name + ''!''

print(greet(''Alice''))', 'complete_code', 'Complete the function to add two numbers and return the result.', 'def add(a, b):
    ', 'def add(a, b):
    return a + b', 'Use the return statement.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 16, 'Function Parameters', 'Functions can have default parameters and keyword arguments.', 'def power(base, exp=2):
    return base ** exp
print(power(3))', 'fix_bug', 'Fix the function call to avoid division by zero.', 'def divide(a, b):
    return a / b
print(divide(10, 0))', 'def divide(a, b):
    return a / b
print(divide(10, 2))', 'Division by zero causes an error. Change the second argument.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 17, 'Scope', 'Variables defined inside a function have local scope. Variables outside have global scope.', 'x = 10
def change_x():
    global x
    x = 20
change_x()
print(x)', 'true_false', 'Variables defined inside a function are accessible outside.', '', 'false', 'Think about local vs global scope.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 18, 'Lambda Functions', 'Lambda functions are small anonymous functions defined with the lambda keyword.', 'square = lambda x: x ** 2
print(square(5))', 'complete_code', 'Complete the lambda function to double a number.', 'double = lambda x: ', 'double = lambda x: x * 2', 'The lambda should return the input multiplied by 2.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 19, 'List Comprehensions', 'List comprehensions provide a concise way to create lists.', 'squares = [x**2 for x in range(10)]
print(squares)', 'complete_code', 'Create a list of cubes for numbers 1 through 5.', 'cubes = [x for x in range(1, 6)]
print(cubes)', 'cubes = [x**3 for x in range(1, 6)]
print(cubes)', 'The expression should be x**3 (x cubed).', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 20, 'String Methods', 'Python strings have many useful methods: strip(), split(), join(), replace().', 'text = ''  Hello, World!  ''
print(text.strip())', 'multiple_choice', 'Which method removes whitespace from both ends?', 'strip()
trim()
clean()
remove()', 'strip()', 'It is the method used in the code example.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 21, 'Advanced Python 1', 'This level covers File I/O in Python.', '# Example of File I/O
import math
print(math.sqrt(16))', 'multiple_choice', 'Test your knowledge of File I/O.', '', 'math', 'Review the documentation for File I/O.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 22, 'Advanced Python 2', 'This level covers Exception Handling in Python.', '# Example of Exception Handling
import math
print(math.sqrt(16))', 'true_false', 'Test your knowledge of Exception Handling.', '', 'true', 'Review the documentation for Exception Handling.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 23, 'Advanced Python 3', 'This level covers Modules in Python.', '# Example of Modules
import math
print(math.sqrt(16))', 'multiple_choice', 'Test your knowledge of Modules.', '', 'math', 'Review the documentation for Modules.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 24, 'Advanced Python 4', 'This level covers Packages in Python.', '# Example of Packages
import math
print(math.sqrt(16))', 'true_false', 'Test your knowledge of Packages.', '', 'true', 'Review the documentation for Packages.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 25, 'Advanced Python 5', 'This level covers JSON in Python.', '# Example of JSON
import math
print(math.sqrt(16))', 'multiple_choice', 'Test your knowledge of JSON.', '', 'math', 'Review the documentation for JSON.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 26, 'Advanced Python 6', 'This level covers CSV in Python.', '# Example of CSV
import math
print(math.sqrt(16))', 'true_false', 'Test your knowledge of CSV.', '', 'true', 'Review the documentation for CSV.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 27, 'Advanced Python 7', 'This level covers Regular Expressions in Python.', '# Example of Regular Expressions
import math
print(math.sqrt(16))', 'multiple_choice', 'Test your knowledge of Regular Expressions.', '', 'math', 'Review the documentation for Regular Expressions.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 28, 'Advanced Python 8', 'This level covers Date and Time in Python.', '# Example of Date and Time
import math
print(math.sqrt(16))', 'true_false', 'Test your knowledge of Date and Time.', '', 'true', 'Review the documentation for Date and Time.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 29, 'Advanced Python 9', 'This level covers Math Module in Python.', '# Example of Math Module
import math
print(math.sqrt(16))', 'multiple_choice', 'Test your knowledge of Math Module.', '', 'math', 'Review the documentation for Math Module.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 30, 'Advanced Python 10', 'This level covers Random Module in Python.', '# Example of Random Module
import math
print(math.sqrt(16))', 'true_false', 'Test your knowledge of Random Module.', '', 'true', 'Review the documentation for Random Module.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 31, 'Advanced Python 11', 'This level covers OS Module in Python.', '# Example of OS Module
import math
print(math.sqrt(16))', 'multiple_choice', 'Test your knowledge of OS Module.', '', 'math', 'Review the documentation for OS Module.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 32, 'Advanced Python 12', 'This level covers Sys Module in Python.', '# Example of Sys Module
import math
print(math.sqrt(16))', 'true_false', 'Test your knowledge of Sys Module.', '', 'true', 'Review the documentation for Sys Module.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 33, 'Advanced Python 13', 'This level covers Argparse in Python.', '# Example of Argparse
import math
print(math.sqrt(16))', 'multiple_choice', 'Test your knowledge of Argparse.', '', 'math', 'Review the documentation for Argparse.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 34, 'Advanced Python 14', 'This level covers Logging in Python.', '# Example of Logging
import math
print(math.sqrt(16))', 'true_false', 'Test your knowledge of Logging.', '', 'true', 'Review the documentation for Logging.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 35, 'Advanced Python 15', 'This level covers ConfigParser in Python.', '# Example of ConfigParser
import math
print(math.sqrt(16))', 'multiple_choice', 'Test your knowledge of ConfigParser.', '', 'math', 'Review the documentation for ConfigParser.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 36, 'Advanced Python 16', 'This level covers Enum in Python.', '# Example of Enum
import math
print(math.sqrt(16))', 'true_false', 'Test your knowledge of Enum.', '', 'true', 'Review the documentation for Enum.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 37, 'Advanced Python 17', 'This level covers Dataclasses in Python.', '# Example of Dataclasses
import math
print(math.sqrt(16))', 'multiple_choice', 'Test your knowledge of Dataclasses.', '', 'math', 'Review the documentation for Dataclasses.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 38, 'Advanced Python 18', 'This level covers Type Hints in Python.', '# Example of Type Hints
import math
print(math.sqrt(16))', 'true_false', 'Test your knowledge of Type Hints.', '', 'true', 'Review the documentation for Type Hints.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 39, 'Advanced Python 19', 'This level covers Generators in Python.', '# Example of Generators
import math
print(math.sqrt(16))', 'multiple_choice', 'Test your knowledge of Generators.', '', 'math', 'Review the documentation for Generators.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 40, 'Advanced Python 20', 'This level covers Iterators in Python.', '# Example of Iterators
import math
print(math.sqrt(16))', 'true_false', 'Test your knowledge of Iterators.', '', 'true', 'Review the documentation for Iterators.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 41, 'OOP Python 1', 'This level explores Classes in object-oriented Python.', 'class Example:
    def __init__(self, value):
        self.value = value
    def display(self):
        return ''Value: '' + str(self.value)', 'true_false', 'Apply your knowledge of Classes.', '# Write code for Classes
class MyClass:
    pass', 'class MyClass:
    def __init__(self):
        pass', 'Think about how Classes works in Python.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 42, 'OOP Python 2', 'This level explores Inheritance in object-oriented Python.', 'class Example:
    def __init__(self, value):
        self.value = value
    def display(self):
        return ''Value: '' + str(self.value)', 'complete_code', 'Apply your knowledge of Inheritance.', '# Write code for Inheritance
class MyClass:
    pass', 'class MyClass:
    def __init__(self):
        pass', 'Think about how Inheritance works in Python.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 43, 'OOP Python 3', 'This level explores Polymorphism in object-oriented Python.', 'class Example:
    def __init__(self, value):
        self.value = value
    def display(self):
        return ''Value: '' + str(self.value)', 'fix_bug', 'Apply your knowledge of Polymorphism.', '# Write code for Polymorphism
class MyClass:
    pass', 'class MyClass:
    def __init__(self):
        pass', 'Think about how Polymorphism works in Python.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 44, 'OOP Python 4', 'This level explores Encapsulation in object-oriented Python.', 'class Example:
    def __init__(self, value):
        self.value = value
    def display(self):
        return ''Value: '' + str(self.value)', 'true_false', 'Apply your knowledge of Encapsulation.', '# Write code for Encapsulation
class MyClass:
    pass', 'class MyClass:
    def __init__(self):
        pass', 'Think about how Encapsulation works in Python.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 45, 'OOP Python 5', 'This level explores Magic Methods in object-oriented Python.', 'class Example:
    def __init__(self, value):
        self.value = value
    def display(self):
        return ''Value: '' + str(self.value)', 'complete_code', 'Apply your knowledge of Magic Methods.', '# Write code for Magic Methods
class MyClass:
    pass', 'class MyClass:
    def __init__(self):
        pass', 'Think about how Magic Methods works in Python.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 46, 'OOP Python 6', 'This level explores Property Decorators in object-oriented Python.', 'class Example:
    def __init__(self, value):
        self.value = value
    def display(self):
        return ''Value: '' + str(self.value)', 'fix_bug', 'Apply your knowledge of Property Decorators.', '# Write code for Property Decorators
class MyClass:
    pass', 'class MyClass:
    def __init__(self):
        pass', 'Think about how Property Decorators works in Python.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 47, 'OOP Python 7', 'This level explores Class Methods in object-oriented Python.', 'class Example:
    def __init__(self, value):
        self.value = value
    def display(self):
        return ''Value: '' + str(self.value)', 'true_false', 'Apply your knowledge of Class Methods.', '# Write code for Class Methods
class MyClass:
    pass', 'class MyClass:
    def __init__(self):
        pass', 'Think about how Class Methods works in Python.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 48, 'OOP Python 8', 'This level explores Static Methods in object-oriented Python.', 'class Example:
    def __init__(self, value):
        self.value = value
    def display(self):
        return ''Value: '' + str(self.value)', 'complete_code', 'Apply your knowledge of Static Methods.', '# Write code for Static Methods
class MyClass:
    pass', 'class MyClass:
    def __init__(self):
        pass', 'Think about how Static Methods works in Python.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 49, 'OOP Python 9', 'This level explores Abstract Classes in object-oriented Python.', 'class Example:
    def __init__(self, value):
        self.value = value
    def display(self):
        return ''Value: '' + str(self.value)', 'fix_bug', 'Apply your knowledge of Abstract Classes.', '# Write code for Abstract Classes
class MyClass:
    pass', 'class MyClass:
    def __init__(self):
        pass', 'Think about how Abstract Classes works in Python.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 50, 'OOP Python 10', 'This level explores Multiple Inheritance in object-oriented Python.', 'class Example:
    def __init__(self, value):
        self.value = value
    def display(self):
        return ''Value: '' + str(self.value)', 'true_false', 'Apply your knowledge of Multiple Inheritance.', '# Write code for Multiple Inheritance
class MyClass:
    pass', 'class MyClass:
    def __init__(self):
        pass', 'Think about how Multiple Inheritance works in Python.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 51, 'OOP Python 11', 'This level explores Method Resolution Order in object-oriented Python.', 'class Example:
    def __init__(self, value):
        self.value = value
    def display(self):
        return ''Value: '' + str(self.value)', 'complete_code', 'Apply your knowledge of Method Resolution Order.', '# Write code for Method Resolution Order
class MyClass:
    pass', 'class MyClass:
    def __init__(self):
        pass', 'Think about how Method Resolution Order works in Python.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 52, 'OOP Python 12', 'This level explores Composition in object-oriented Python.', 'class Example:
    def __init__(self, value):
        self.value = value
    def display(self):
        return ''Value: '' + str(self.value)', 'fix_bug', 'Apply your knowledge of Composition.', '# Write code for Composition
class MyClass:
    pass', 'class MyClass:
    def __init__(self):
        pass', 'Think about how Composition works in Python.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 53, 'OOP Python 13', 'This level explores Aggregation in object-oriented Python.', 'class Example:
    def __init__(self, value):
        self.value = value
    def display(self):
        return ''Value: '' + str(self.value)', 'true_false', 'Apply your knowledge of Aggregation.', '# Write code for Aggregation
class MyClass:
    pass', 'class MyClass:
    def __init__(self):
        pass', 'Think about how Aggregation works in Python.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 54, 'OOP Python 14', 'This level explores Descriptors in object-oriented Python.', 'class Example:
    def __init__(self, value):
        self.value = value
    def display(self):
        return ''Value: '' + str(self.value)', 'complete_code', 'Apply your knowledge of Descriptors.', '# Write code for Descriptors
class MyClass:
    pass', 'class MyClass:
    def __init__(self):
        pass', 'Think about how Descriptors works in Python.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 55, 'OOP Python 15', 'This level explores Metaclasses in object-oriented Python.', 'class Example:
    def __init__(self, value):
        self.value = value
    def display(self):
        return ''Value: '' + str(self.value)', 'fix_bug', 'Apply your knowledge of Metaclasses.', '# Write code for Metaclasses
class MyClass:
    pass', 'class MyClass:
    def __init__(self):
        pass', 'Think about how Metaclasses works in Python.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 56, 'OOP Python 16', 'This level explores Slots in object-oriented Python.', 'class Example:
    def __init__(self, value):
        self.value = value
    def display(self):
        return ''Value: '' + str(self.value)', 'true_false', 'Apply your knowledge of Slots.', '# Write code for Slots
class MyClass:
    pass', 'class MyClass:
    def __init__(self):
        pass', 'Think about how Slots works in Python.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 57, 'OOP Python 17', 'This level explores Named Tuples in object-oriented Python.', 'class Example:
    def __init__(self, value):
        self.value = value
    def display(self):
        return ''Value: '' + str(self.value)', 'complete_code', 'Apply your knowledge of Named Tuples.', '# Write code for Named Tuples
class MyClass:
    pass', 'class MyClass:
    def __init__(self):
        pass', 'Think about how Named Tuples works in Python.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 58, 'OOP Python 18', 'This level explores Data Classes in object-oriented Python.', 'class Example:
    def __init__(self, value):
        self.value = value
    def display(self):
        return ''Value: '' + str(self.value)', 'fix_bug', 'Apply your knowledge of Data Classes.', '# Write code for Data Classes
class MyClass:
    pass', 'class MyClass:
    def __init__(self):
        pass', 'Think about how Data Classes works in Python.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 59, 'OOP Python 19', 'This level explores Protocols in object-oriented Python.', 'class Example:
    def __init__(self, value):
        self.value = value
    def display(self):
        return ''Value: '' + str(self.value)', 'true_false', 'Apply your knowledge of Protocols.', '# Write code for Protocols
class MyClass:
    pass', 'class MyClass:
    def __init__(self):
        pass', 'Think about how Protocols works in Python.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 60, 'OOP Python 20', 'This level explores Context Managers in object-oriented Python.', 'class Example:
    def __init__(self, value):
        self.value = value
    def display(self):
        return ''Value: '' + str(self.value)', 'complete_code', 'Apply your knowledge of Context Managers.', '# Write code for Context Managers
class MyClass:
    pass', 'class MyClass:
    def __init__(self):
        pass', 'Think about how Context Managers works in Python.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 61, 'Data Structures 1', 'This level covers Stacks, a fundamental data structure or algorithm.', '# Example: Stacks
def example():
    pass', 'complete_code', 'Implement or analyze Stacks.', '# Implement Stacks
def solution():
    pass', 'def solution():
    return True', 'Consider the time and space complexity of Stacks.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 62, 'Data Structures 2', 'This level covers Queues, a fundamental data structure or algorithm.', '# Example: Queues
def example():
    pass', 'fix_bug', 'Implement or analyze Queues.', '# Implement Queues
def solution():
    pass', 'def solution():
    return True', 'Consider the time and space complexity of Queues.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 63, 'Data Structures 3', 'This level covers Linked Lists, a fundamental data structure or algorithm.', '# Example: Linked Lists
def example():
    pass', 'predict_output', 'Implement or analyze Linked Lists.', '# Implement Linked Lists
def solution():
    pass', 'def solution():
    return True', 'Consider the time and space complexity of Linked Lists.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 64, 'Data Structures 4', 'This level covers Trees, a fundamental data structure or algorithm.', '# Example: Trees
def example():
    pass', 'complete_code', 'Implement or analyze Trees.', '# Implement Trees
def solution():
    pass', 'def solution():
    return True', 'Consider the time and space complexity of Trees.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 65, 'Data Structures 5', 'This level covers Binary Search Trees, a fundamental data structure or algorithm.', '# Example: Binary Search Trees
def example():
    pass', 'fix_bug', 'Implement or analyze Binary Search Trees.', '# Implement Binary Search Trees
def solution():
    pass', 'def solution():
    return True', 'Consider the time and space complexity of Binary Search Trees.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 66, 'Data Structures 6', 'This level covers Graphs, a fundamental data structure or algorithm.', '# Example: Graphs
def example():
    pass', 'predict_output', 'Implement or analyze Graphs.', '# Implement Graphs
def solution():
    pass', 'def solution():
    return True', 'Consider the time and space complexity of Graphs.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 67, 'Data Structures 7', 'This level covers Hash Tables, a fundamental data structure or algorithm.', '# Example: Hash Tables
def example():
    pass', 'complete_code', 'Implement or analyze Hash Tables.', '# Implement Hash Tables
def solution():
    pass', 'def solution():
    return True', 'Consider the time and space complexity of Hash Tables.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 68, 'Data Structures 8', 'This level covers Heaps, a fundamental data structure or algorithm.', '# Example: Heaps
def example():
    pass', 'fix_bug', 'Implement or analyze Heaps.', '# Implement Heaps
def solution():
    pass', 'def solution():
    return True', 'Consider the time and space complexity of Heaps.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 69, 'Data Structures 9', 'This level covers Tries, a fundamental data structure or algorithm.', '# Example: Tries
def example():
    pass', 'predict_output', 'Implement or analyze Tries.', '# Implement Tries
def solution():
    pass', 'def solution():
    return True', 'Consider the time and space complexity of Tries.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 70, 'Data Structures 10', 'This level covers Sorting Algorithms, a fundamental data structure or algorithm.', '# Example: Sorting Algorithms
def example():
    pass', 'complete_code', 'Implement or analyze Sorting Algorithms.', '# Implement Sorting Algorithms
def solution():
    pass', 'def solution():
    return True', 'Consider the time and space complexity of Sorting Algorithms.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 71, 'Data Structures 11', 'This level covers Searching Algorithms, a fundamental data structure or algorithm.', '# Example: Searching Algorithms
def example():
    pass', 'fix_bug', 'Implement or analyze Searching Algorithms.', '# Implement Searching Algorithms
def solution():
    pass', 'def solution():
    return True', 'Consider the time and space complexity of Searching Algorithms.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 72, 'Data Structures 12', 'This level covers Recursion, a fundamental data structure or algorithm.', '# Example: Recursion
def example():
    pass', 'predict_output', 'Implement or analyze Recursion.', '# Implement Recursion
def solution():
    pass', 'def solution():
    return True', 'Consider the time and space complexity of Recursion.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 73, 'Data Structures 13', 'This level covers Dynamic Programming, a fundamental data structure or algorithm.', '# Example: Dynamic Programming
def example():
    pass', 'complete_code', 'Implement or analyze Dynamic Programming.', '# Implement Dynamic Programming
def solution():
    pass', 'def solution():
    return True', 'Consider the time and space complexity of Dynamic Programming.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 74, 'Data Structures 14', 'This level covers Greedy Algorithms, a fundamental data structure or algorithm.', '# Example: Greedy Algorithms
def example():
    pass', 'fix_bug', 'Implement or analyze Greedy Algorithms.', '# Implement Greedy Algorithms
def solution():
    pass', 'def solution():
    return True', 'Consider the time and space complexity of Greedy Algorithms.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 75, 'Data Structures 15', 'This level covers Backtracking, a fundamental data structure or algorithm.', '# Example: Backtracking
def example():
    pass', 'predict_output', 'Implement or analyze Backtracking.', '# Implement Backtracking
def solution():
    pass', 'def solution():
    return True', 'Consider the time and space complexity of Backtracking.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 76, 'Data Structures 16', 'This level covers BFS, a fundamental data structure or algorithm.', '# Example: BFS
def example():
    pass', 'complete_code', 'Implement or analyze BFS.', '# Implement BFS
def solution():
    pass', 'def solution():
    return True', 'Consider the time and space complexity of BFS.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 77, 'Data Structures 17', 'This level covers DFS, a fundamental data structure or algorithm.', '# Example: DFS
def example():
    pass', 'fix_bug', 'Implement or analyze DFS.', '# Implement DFS
def solution():
    pass', 'def solution():
    return True', 'Consider the time and space complexity of DFS.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 78, 'Data Structures 18', 'This level covers Dijkstra, a fundamental data structure or algorithm.', '# Example: Dijkstra
def example():
    pass', 'predict_output', 'Implement or analyze Dijkstra.', '# Implement Dijkstra
def solution():
    pass', 'def solution():
    return True', 'Consider the time and space complexity of Dijkstra.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 79, 'Data Structures 19', 'This level covers Memoization, a fundamental data structure or algorithm.', '# Example: Memoization
def example():
    pass', 'complete_code', 'Implement or analyze Memoization.', '# Implement Memoization
def solution():
    pass', 'def solution():
    return True', 'Consider the time and space complexity of Memoization.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 80, 'Data Structures 20', 'This level covers Divide and Conquer, a fundamental data structure or algorithm.', '# Example: Divide and Conquer
def example():
    pass', 'fix_bug', 'Implement or analyze Divide and Conquer.', '# Implement Divide and Conquer
def solution():
    pass', 'def solution():
    return True', 'Consider the time and space complexity of Divide and Conquer.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 81, 'Mastery Level 1', 'Mastering Decorators distinguishes expert Python developers.', '# Advanced: Decorators
# This is expert-level Python', 'fix_bug', 'Complete this advanced challenge on Decorators.', '# Expert challenge: Decorators
# Write your solution here', '# Solution for Decorators
result = True', 'Review the Python documentation for Decorators.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 82, 'Mastery Level 2', 'Mastering Context Managers distinguishes expert Python developers.', '# Advanced: Context Managers
# This is expert-level Python', 'complete_code', 'Complete this advanced challenge on Context Managers.', '# Expert challenge: Context Managers
# Write your solution here', '# Solution for Context Managers
result = True', 'Review the Python documentation for Context Managers.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 83, 'Mastery Level 3', 'Mastering Coroutines distinguishes expert Python developers.', '# Advanced: Coroutines
# This is expert-level Python', 'fix_bug', 'Complete this advanced challenge on Coroutines.', '# Expert challenge: Coroutines
# Write your solution here', '# Solution for Coroutines
result = True', 'Review the Python documentation for Coroutines.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 84, 'Mastery Level 4', 'Mastering Async/Await distinguishes expert Python developers.', '# Advanced: Async/Await
# This is expert-level Python', 'complete_code', 'Complete this advanced challenge on Async/Await.', '# Expert challenge: Async/Await
# Write your solution here', '# Solution for Async/Await
result = True', 'Review the Python documentation for Async/Await.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 85, 'Mastery Level 5', 'Mastering Threading distinguishes expert Python developers.', '# Advanced: Threading
# This is expert-level Python', 'fix_bug', 'Complete this advanced challenge on Threading.', '# Expert challenge: Threading
# Write your solution here', '# Solution for Threading
result = True', 'Review the Python documentation for Threading.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 86, 'Mastery Level 6', 'Mastering Multiprocessing distinguishes expert Python developers.', '# Advanced: Multiprocessing
# This is expert-level Python', 'complete_code', 'Complete this advanced challenge on Multiprocessing.', '# Expert challenge: Multiprocessing
# Write your solution here', '# Solution for Multiprocessing
result = True', 'Review the Python documentation for Multiprocessing.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 87, 'Mastery Level 7', 'Mastering Networking distinguishes expert Python developers.', '# Advanced: Networking
# This is expert-level Python', 'fix_bug', 'Complete this advanced challenge on Networking.', '# Expert challenge: Networking
# Write your solution here', '# Solution for Networking
result = True', 'Review the Python documentation for Networking.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 88, 'Mastery Level 8', 'Mastering Web Scraping distinguishes expert Python developers.', '# Advanced: Web Scraping
# This is expert-level Python', 'complete_code', 'Complete this advanced challenge on Web Scraping.', '# Expert challenge: Web Scraping
# Write your solution here', '# Solution for Web Scraping
result = True', 'Review the Python documentation for Web Scraping.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 89, 'Mastery Level 9', 'Mastering API Design distinguishes expert Python developers.', '# Advanced: API Design
# This is expert-level Python', 'fix_bug', 'Complete this advanced challenge on API Design.', '# Expert challenge: API Design
# Write your solution here', '# Solution for API Design
result = True', 'Review the Python documentation for API Design.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 90, 'Mastery Level 10', 'Mastering Database Access distinguishes expert Python developers.', '# Advanced: Database Access
# This is expert-level Python', 'complete_code', 'Complete this advanced challenge on Database Access.', '# Expert challenge: Database Access
# Write your solution here', '# Solution for Database Access
result = True', 'Review the Python documentation for Database Access.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 91, 'Mastery Level 11', 'Mastering Testing distinguishes expert Python developers.', '# Advanced: Testing
# This is expert-level Python', 'fix_bug', 'Complete this advanced challenge on Testing.', '# Expert challenge: Testing
# Write your solution here', '# Solution for Testing
result = True', 'Review the Python documentation for Testing.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 92, 'Mastery Level 12', 'Mastering Documentation distinguishes expert Python developers.', '# Advanced: Documentation
# This is expert-level Python', 'complete_code', 'Complete this advanced challenge on Documentation.', '# Expert challenge: Documentation
# Write your solution here', '# Solution for Documentation
result = True', 'Review the Python documentation for Documentation.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 93, 'Mastery Level 13', 'Mastering Profiling distinguishes expert Python developers.', '# Advanced: Profiling
# This is expert-level Python', 'fix_bug', 'Complete this advanced challenge on Profiling.', '# Expert challenge: Profiling
# Write your solution here', '# Solution for Profiling
result = True', 'Review the Python documentation for Profiling.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 94, 'Mastery Level 14', 'Mastering Optimization distinguishes expert Python developers.', '# Advanced: Optimization
# This is expert-level Python', 'complete_code', 'Complete this advanced challenge on Optimization.', '# Expert challenge: Optimization
# Write your solution here', '# Solution for Optimization
result = True', 'Review the Python documentation for Optimization.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 95, 'Mastery Level 15', 'Mastering Security distinguishes expert Python developers.', '# Advanced: Security
# This is expert-level Python', 'fix_bug', 'Complete this advanced challenge on Security.', '# Expert challenge: Security
# Write your solution here', '# Solution for Security
result = True', 'Review the Python documentation for Security.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 96, 'Mastery Level 16', 'Mastering Design Patterns distinguishes expert Python developers.', '# Advanced: Design Patterns
# This is expert-level Python', 'complete_code', 'Complete this advanced challenge on Design Patterns.', '# Expert challenge: Design Patterns
# Write your solution here', '# Solution for Design Patterns
result = True', 'Review the Python documentation for Design Patterns.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 97, 'Mastery Level 17', 'Mastering Factory Pattern distinguishes expert Python developers.', '# Advanced: Factory Pattern
# This is expert-level Python', 'fix_bug', 'Complete this advanced challenge on Factory Pattern.', '# Expert challenge: Factory Pattern
# Write your solution here', '# Solution for Factory Pattern
result = True', 'Review the Python documentation for Factory Pattern.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 98, 'Mastery Level 18', 'Mastering Singleton Pattern distinguishes expert Python developers.', '# Advanced: Singleton Pattern
# This is expert-level Python', 'complete_code', 'Complete this advanced challenge on Singleton Pattern.', '# Expert challenge: Singleton Pattern
# Write your solution here', '# Solution for Singleton Pattern
result = True', 'Review the Python documentation for Singleton Pattern.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 99, 'Mastery Level 19', 'Mastering Observer Pattern distinguishes expert Python developers.', '# Advanced: Observer Pattern
# This is expert-level Python', 'fix_bug', 'Complete this advanced challenge on Observer Pattern.', '# Expert challenge: Observer Pattern
# Write your solution here', '# Solution for Observer Pattern
result = True', 'Review the Python documentation for Observer Pattern.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('python', 100, 'Mastery Level 20', 'Mastering Strategy Pattern distinguishes expert Python developers.', '# Advanced: Strategy Pattern
# This is expert-level Python', 'complete_code', 'Complete this advanced challenge on Strategy Pattern.', '# Expert challenge: Strategy Pattern
# Write your solution here', '# Solution for Strategy Pattern
result = True', 'Review the Python documentation for Strategy Pattern.', 150, 'hard', 1);