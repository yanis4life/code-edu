#!/usr/bin/env python3
import json

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
        title = "Hello, World!"
        theory = "The print() function is used to output text to the console. In Python, you can print text strings by enclosing them in quotes."
        code = "print('Hello, World!')"
        challenge_type = "complete_code"
        challenge_desc = "Write a program that prints 'Hello, World!' to the console."
        template = "print()"
        answer = "print('Hello, World!')"
        hint = "Put the text 'Hello, World!' inside the print() function with quotes."
    elif level == 2:
        title = "Variables and Data Types"
        theory = "Variables store data in memory. Python has several data types: integers (int), floating-point numbers (float), strings (str), and booleans (bool)."
        code = "name = 'Alice'\nage = 25\nheight = 5.6\nis_student = True\nprint(name, age, height, is_student)"
        challenge_type = "fix_bug"
        challenge_desc = "The code has a bug. Fix the variable assignment to make it work."
        template = "name = 'Alice'\nnane = 'Bob'\nprint(name)"
        answer = "name = 'Alice'\nname = 'Bob'\nprint(name)"
        hint = "Check the variable name on the second line."
    elif level == 3:
        title = "Basic Arithmetic"
        theory = "Python supports all standard arithmetic operations."
        code = "a = 10\nb = 3\nprint(a + b)\nprint(a - b)\nprint(a * b)\nprint(a / b)\nprint(a // b)\nprint(a % b)\nprint(a ** b)"
        challenge_type = "predict_output"
        challenge_desc = "What is the output of 10 // 3?"
        template = ""
        answer = "3"
        hint = "Floor division rounds down to the nearest integer."
    elif level == 4:
        title = "String Operations"
        theory = "Strings can be concatenated with +, repeated with *, and you can access individual characters with indexing."
        code = "first = 'Hello'\nsecond = 'World'\nmessage = first + ' ' + second\nprint(message)"
        challenge_type = "complete_code"
        challenge_desc = "Complete the code to concatenate 'Hello' and 'Python' with a space."
        template = "greeting = 'Hello'\nlanguage = 'Python'\nmessage = \nprint(message)"
        answer = "greeting = 'Hello'\nlanguage = 'Python'\nmessage = greeting + ' ' + language\nprint(message)"
        hint = "Use the + operator to join strings."
    elif level == 5:
        title = "User Input"
        theory = "The input() function allows users to enter data. It always returns a string."
        code = "name = input('Enter your name: ')\nprint('Hello, ' + name + '!')"
        challenge_type = "true_false"
        challenge_desc = "The input() function always returns a string."
        template = ""
        answer = "true"
        hint = "Think about what type input() returns."
    elif level == 6:
        title = "If Statements"
        theory = "Conditional statements allow your code to make decisions. Use if, elif, and else."
        code = "age = 18\nif age >= 18:\n    print('Adult')\nelse:\n    print('Minor')"
        challenge_type = "complete_code"
        challenge_desc = "Complete the code to check if a number is positive, negative, or zero."
        template = "num = 5\nif num > 0:\n    print('Positive')\n num < 0:\n    print('Negative')\nelse:\n    print('Zero')"
        answer = "num = 5\nif num > 0:\n    print('Positive')\nelif num < 0:\n    print('Negative')\nelse:\n    print('Zero')"
        hint = "You need to use 'elif' for the second condition."
    elif level == 7:
        title = "Logical Operators"
        theory = "Python supports logical operators: and, or, not."
        code = "x = 5\nprint(x > 0 and x < 10)\nprint(x > 0 or x < 0)\nprint(not x == 5)"
        challenge_type = "predict_output"
        challenge_desc = "What is the output of: print(True and False)"
        template = ""
        answer = "False"
        hint = "The 'and' operator returns True only if both operands are True."
    elif level == 8:
        title = "For Loops"
        theory = "For loops iterate over sequences. The range() function generates a sequence of numbers."
        code = "for i in range(5):\n    print(i)"
        challenge_type = "complete_code"
        challenge_desc = "Complete the loop to print numbers from 1 to 5."
        template = "for i in range(, 6):\n    print(i)"
        answer = "for i in range(1, 6):\n    print(i)"
        hint = "The range() function takes start and stop parameters."
    elif level == 9:
        title = "While Loops"
        theory = "While loops execute as long as a condition remains True."
        code = "count = 0\nwhile count < 5:\n    print(count)\n    count += 1"
        challenge_type = "fix_bug"
        challenge_desc = "Fix the infinite loop by adding the missing increment."
        template = "count = 0\nwhile count < 5:\n    print(count)"
        answer = "count = 0\nwhile count < 5:\n    print(count)\n    count += 1"
        hint = "The loop variable needs to be incremented inside the loop."
    elif level == 10:
        title = "Lists"
        theory = "Lists are ordered, mutable collections. They can hold items of different types."
        code = "fruits = ['apple', 'banana', 'cherry']\nprint(fruits[0])\nfruits.append('date')\nprint(len(fruits))"
        challenge_type = "multiple_choice"
        challenge_desc = "What method adds an item to the end of a list?"
        template = "append()\nadd()\ninsert()\npush()"
        answer = "append()"
        hint = "Think about the method used in the code example."
    elif level == 11:
        title = "List Operations"
        theory = "Lists support slicing, concatenation, and methods like sort(), reverse(), pop()."
        code = "nums = [3, 1, 4, 1, 5, 9]\nnums.sort()\nprint(nums)"
        challenge_type = "fix_bug"
        challenge_desc = "Fix the code to correctly remove the first occurrence of 3."
        template = "nums = [1, 2, 3, 4, 3, 5]\nnums.remove(3)\nprint(nums)"
        answer = "nums = [1, 2, 3, 4, 3, 5]\nnums.remove(3)\nprint(nums)"
        hint = "The code is actually correct. remove() removes the first occurrence."
    elif level == 12:
        title = "Tuples"
        theory = "Tuples are immutable sequences, defined with parentheses."
        code = "point = (3, 4)\nx, y = point\nprint(x, y)"
        challenge_type = "true_false"
        challenge_desc = "Tuples can be modified after creation."
        template = ""
        answer = "false"
        hint = "Remember the definition of immutable."
    elif level == 13:
        title = "Dictionaries"
        theory = "Dictionaries store key-value pairs. Keys must be unique and immutable."
        code = "student = {'name': 'Alice', 'age': 20}\nprint(student['name'])"
        challenge_type = "complete_code"
        challenge_desc = "Add a new key 'city' with value 'New York' to the dictionary."
        template = "person = {'name': 'Bob', 'age': 25}\nperson['city'] = \nprint(person)"
        answer = "person = {'name': 'Bob', 'age': 25}\nperson['city'] = 'New York'\nprint(person)"
        hint = "Use square brackets and assignment."
    elif level == 14:
        title = "Sets"
        theory = "Sets are unordered collections of unique elements."
        code = "a = {1, 2, 3, 4}\nb = {3, 4, 5, 6}\nprint(a & b)"
        challenge_type = "predict_output"
        challenge_desc = "What is the output of {1, 2, 3} & {2, 3, 4}?"
        template = ""
        answer = "{2, 3}"
        hint = "The & operator performs set intersection."
    elif level == 15:
        title = "Functions"
        theory = "Functions are defined with def and can accept parameters and return values."
        code = "def greet(name):\n    return 'Hello, ' + name + '!'\n\nprint(greet('Alice'))"
        challenge_type = "complete_code"
        challenge_desc = "Complete the function to add two numbers and return the result."
        template = "def add(a, b):\n    "
        answer = "def add(a, b):\n    return a + b"
        hint = "Use the return statement."
    elif level == 16:
        title = "Function Parameters"
        theory = "Functions can have default parameters and keyword arguments."
        code = "def power(base, exp=2):\n    return base ** exp\nprint(power(3))"
        challenge_type = "fix_bug"
        challenge_desc = "Fix the function call to avoid division by zero."
        template = "def divide(a, b):\n    return a / b\nprint(divide(10, 0))"
        answer = "def divide(a, b):\n    return a / b\nprint(divide(10, 2))"
        hint = "Division by zero causes an error. Change the second argument."
    elif level == 17:
        title = "Scope"
        theory = "Variables defined inside a function have local scope. Variables outside have global scope."
        code = "x = 10\ndef change_x():\n    global x\n    x = 20\nchange_x()\nprint(x)"
        challenge_type = "true_false"
        challenge_desc = "Variables defined inside a function are accessible outside."
        template = ""
        answer = "false"
        hint = "Think about local vs global scope."
    elif level == 18:
        title = "Lambda Functions"
        theory = "Lambda functions are small anonymous functions defined with the lambda keyword."
        code = "square = lambda x: x ** 2\nprint(square(5))"
        challenge_type = "complete_code"
        challenge_desc = "Complete the lambda function to double a number."
        template = "double = lambda x: "
        answer = "double = lambda x: x * 2"
        hint = "The lambda should return the input multiplied by 2."
    elif level == 19:
        title = "List Comprehensions"
        theory = "List comprehensions provide a concise way to create lists."
        code = "squares = [x**2 for x in range(10)]\nprint(squares)"
        challenge_type = "complete_code"
        challenge_desc = "Create a list of cubes for numbers 1 through 5."
        template = "cubes = [x for x in range(1, 6)]\nprint(cubes)"
        answer = "cubes = [x**3 for x in range(1, 6)]\nprint(cubes)"
        hint = "The expression should be x**3 (x cubed)."
    elif level == 20:
        title = "String Methods"
        theory = "Python strings have many useful methods: strip(), split(), join(), replace()."
        code = "text = '  Hello, World!  '\nprint(text.strip())"
        challenge_type = "multiple_choice"
        challenge_desc = "Which method removes whitespace from both ends?"
        template = "strip()\ntrim()\nclean()\nremove()"
        answer = "strip()"
        hint = "It is the method used in the code example."
    elif level <= 40:
        title = "Advanced Python " + str(level - 20)
        topics = ["File I/O", "Exception Handling", "Modules", "Packages", "JSON", "CSV", "Regular Expressions", "Date and Time", "Math Module", "Random Module", "OS Module", "Sys Module", "Argparse", "Logging", "ConfigParser", "Enum", "Dataclasses", "Type Hints", "Generators", "Iterators"]
        topic = topics[(level - 21) % len(topics)]
        theory = "This level covers " + topic + " in Python."
        code = "# Example of " + topic + "\nimport math\nprint(math.sqrt(16))"
        challenge_type = "true_false" if level % 2 == 0 else "multiple_choice"
        challenge_desc = "Test your knowledge of " + topic + "."
        template = ""
        answer = "true" if level % 2 == 0 else "math"
        hint = "Review the documentation for " + topic + "."
    elif level <= 60:
        title = "OOP Python " + str(level - 40)
        topics = ["Classes", "Inheritance", "Polymorphism", "Encapsulation", "Magic Methods", "Property Decorators", "Class Methods", "Static Methods", "Abstract Classes", "Multiple Inheritance", "Method Resolution Order", "Composition", "Aggregation", "Descriptors", "Metaclasses", "Slots", "Named Tuples", "Data Classes", "Protocols", "Context Managers"]
        topic = topics[(level - 41) % len(topics)]
        theory = "This level explores " + topic + " in object-oriented Python."
        code = "class Example:\n    def __init__(self, value):\n        self.value = value\n    def display(self):\n        return 'Value: ' + str(self.value)"
        challenge_type = "complete_code" if level % 3 == 0 else ("fix_bug" if level % 3 == 1 else "true_false")
        challenge_desc = "Apply your knowledge of " + topic + "."
        template = "# Write code for " + topic + "\nclass MyClass:\n    pass"
        answer = "class MyClass:\n    def __init__(self):\n        pass"
        hint = "Think about how " + topic + " works in Python."
    elif level <= 80:
        title = "Data Structures " + str(level - 60)
        topics = ["Stacks", "Queues", "Linked Lists", "Trees", "Binary Search Trees", "Graphs", "Hash Tables", "Heaps", "Tries", "Sorting Algorithms", "Searching Algorithms", "Recursion", "Dynamic Programming", "Greedy Algorithms", "Backtracking", "BFS", "DFS", "Dijkstra", "Memoization", "Divide and Conquer"]
        topic = topics[(level - 61) % len(topics)]
        theory = "This level covers " + topic + ", a fundamental data structure or algorithm."
        code = "# Example: " + topic + "\ndef example():\n    pass"
        challenge_type = "predict_output" if level % 3 == 0 else ("complete_code" if level % 3 == 1 else "fix_bug")
        challenge_desc = "Implement or analyze " + topic + "."
        template = "# Implement " + topic + "\ndef solution():\n    pass"
        answer = "def solution():\n    return True"
        hint = "Consider the time and space complexity of " + topic + "."
    else:
        title = "Mastery Level " + str(level - 80)
        topics = ["Decorators", "Context Managers", "Coroutines", "Async/Await", "Threading", "Multiprocessing", "Networking", "Web Scraping", "API Design", "Database Access", "Testing", "Documentation", "Profiling", "Optimization", "Security", "Design Patterns", "Factory Pattern", "Singleton Pattern", "Observer Pattern", "Strategy Pattern"]
        topic = topics[(level - 81) % len(topics)]
        theory = "Mastering " + topic + " distinguishes expert Python developers."
        code = "# Advanced: " + topic + "\n# This is expert-level Python"
        challenge_type = "complete_code" if level % 2 == 0 else "fix_bug"
        challenge_desc = "Complete this advanced challenge on " + topic + "."
        template = "# Expert challenge: " + topic + "\n# Write your solution here"
        answer = "# Solution for " + topic + "\nresult = True"
        hint = "Review the Python documentation for " + topic + "."

    LESSON_TEMPLATES.append({
        "language": "python",
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
    sql_lines.append("-- Python lessons seed data (100 levels)")
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
    with open("seed_lessons.sql", "w") as f:
        f.write(sql)
    print("Generated " + str(len(LESSON_TEMPLATES)) + " lesson SQL statements")
    print("Output written to seed_lessons.sql")