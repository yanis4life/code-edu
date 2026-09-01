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
        theory = "Java is a strongly-typed, object-oriented language. Every Java program needs a class with a main method. System.out.println() prints to console."
        code = "public class Main {\n  public static void main(String[] args) {\n    System.out.println(\"Hello, World!\");\n  }\n}"
        challenge_type = "complete_code"
        challenge_desc = "Complete the main method to print 'Hello, World!'."
        template = "public class Main {\n  public static void main(String[] args) {\n    System.out.println();\n  }\n}"
        answer = "public class Main {\n  public static void main(String[] args) {\n    System.out.println(\"Hello, World!\");\n  }\n}"
        hint = "Put the string 'Hello, World!' inside System.out.println()."
    elif level == 2:
        title = "Variables"
        theory = "Java is statically typed. Declare variables with type name = value;. Common types: int, double, String, boolean."
        code = "int age = 25;\nString name = \"John\";\nboolean isActive = true;\nSystem.out.println(name + \" is \" + age);"
        challenge_type = "complete_code"
        challenge_desc = "Declare an int variable 'score' with value 100 and print it."
        template = "int score = 100;\nSystem.out.println(score);"
        answer = "int score = 100;\nSystem.out.println(score);"
        hint = "The answer is already in the template."
    elif level == 3:
        title = "Data Types"
        theory = "Java has primitive types: int, double, char, boolean, byte, short, long, float. And reference types like String."
        code = "int i = 10;\ndouble d = 3.14;\nchar c = 'A';\nboolean b = true;\nSystem.out.println(i + \" \" + d + \" \" + c + \" \" + b);"
        challenge_type = "predict_output"
        challenge_desc = "What is the default value of an int variable in Java?"
        template = ""
        answer = "0"
        hint = "Primitive types have default values in Java."
    elif level == 4:
        title = "Arithmetic"
        theory = "Java supports +, -, *, /, % (modulo). Integer division truncates. Use double for decimal results."
        code = "int a = 10, b = 3;\nSystem.out.println(a + b);\nSystem.out.println(a - b);\nSystem.out.println(a * b);\nSystem.out.println(a / b);\nSystem.out.println(a % b);"
        challenge_type = "predict_output"
        challenge_desc = "What is 10 / 3 in Java?"
        template = ""
        answer = "3"
        hint = "Integer division truncates the decimal part."
    elif level == 5:
        title = "String Concatenation"
        theory = "Use + to concatenate strings. Java automatically converts other types to strings when concatenating."
        code = "String first = \"Hello\";\nString second = \"World\";\nSystem.out.println(first + \" \" + second);\nSystem.out.println(\"Age: \" + 25);"
        challenge_type = "complete_code"
        challenge_desc = "Print 'Hello Java' by concatenating the two strings."
        template = "String a = \"Hello\";\nString b = \"Java\";\nSystem.out.println();"
        answer = "String a = \"Hello\";\nString b = \"Java\";\nSystem.out.println(a + \" \" + b);"
        hint = "Use the + operator to join a, space, and b."
    elif level == 6:
        title = "If Statements"
        theory = "The if statement executes code if a condition is true. Use else for an alternative path."
        code = "int age = 18;\nif (age >= 18) {\n  System.out.println(\"Adult\");\n} else {\n  System.out.println(\"Minor\");\n}"
        challenge_type = "complete_code"
        challenge_desc = "Print 'Positive' if num > 0, otherwise print 'Not positive'."
        template = "int num = 5;\nif (num > 0) {\n  \n} else {\n  \n}"
        answer = "int num = 5;\nif (num > 0) {\n  System.out.println(\"Positive\");\n} else {\n  System.out.println(\"Not positive\");\n}"
        hint = "Add print statements inside each block."
    elif level == 7:
        title = "Else If"
        theory = "Use else if for multiple conditions. The first matching condition executes."
        code = "int score = 85;\nif (score >= 90) {\n  System.out.println(\"A\");\n} else if (score >= 80) {\n  System.out.println(\"B\");\n} else {\n  System.out.println(\"C\");\n}"
        challenge_type = "complete_code"
        challenge_desc = "Print 'High' if num > 10, 'Low' otherwise."
        template = "int num = 15;\nif (num > 10) {\n  \n} else {\n  \n}"
        answer = "int num = 15;\nif (num > 10) {\n  System.out.println(\"High\");\n} else {\n  System.out.println(\"Low\");\n}"
        hint = "Add print statements in each branch."
    elif level == 8:
        title = "Comparison Operators"
        theory = "Comparison operators: ==, !=, <, >, <=, >=. For strings, use .equals() not ==."
        code = "int a = 5, b = 10;\nSystem.out.println(a == b);\nSystem.out.println(a != b);\nSystem.out.println(a < b);\nString s1 = \"Hi\", s2 = \"Hi\";\nSystem.out.println(s1.equals(s2));"
        challenge_type = "predict_output"
        challenge_desc = "What does 5 == 5 return in Java?"
        template = ""
        answer = "true"
        hint = "== compares primitive values."
    elif level == 9:
        title = "Logical Operators"
        theory = "Logical operators: && (AND), || (OR), ! (NOT). They work with boolean expressions."
        code = "int x = 5;\nSystem.out.println(x > 0 && x < 10);\nSystem.out.println(x > 0 || x < 0);\nSystem.out.println(!(x == 5));"
        challenge_type = "predict_output"
        challenge_desc = "What is the result of true && false?"
        template = ""
        answer = "false"
        hint = "AND returns true only if both operands are true."
    elif level == 10:
        title = "For Loops"
        theory = "A for loop repeats code: for (initialization; condition; increment) { }. Use i++ to increment."
        code = "for (int i = 0; i < 5; i++) {\n  System.out.println(i);\n}"
        challenge_type = "complete_code"
        challenge_desc = "Write a for loop that prints numbers 0 to 4."
        template = "for (int i = 0; i < 5; i++) {\n  \n}"
        answer = "for (int i = 0; i < 5; i++) {\n  System.out.println(i);\n}"
        hint = "Add System.out.println(i) inside the loop."
    elif level == 11:
        title = "While Loops"
        theory = "A while loop runs while a condition is true. Update the condition variable inside the loop."
        code = "int count = 0;\nwhile (count < 3) {\n  System.out.println(count);\n  count++;\n}"
        challenge_type = "complete_code"
        challenge_desc = "Complete the while loop to print 0, 1, 2."
        template = "int i = 0;\nwhile (i < 3) {\n  System.out.println(i);\n  \n}"
        answer = "int i = 0;\nwhile (i < 3) {\n  System.out.println(i);\n  i++;\n}"
        hint = "Add i++ to increment the counter."
    elif level == 12:
        title = "Do-While Loops"
        theory = "A do-while loop executes the body at least once before checking the condition."
        code = "int i = 0;\ndo {\n  System.out.println(i);\n  i++;\n} while (i < 3);"
        challenge_type = "predict_output"
        challenge_desc = "How many times does a do-while loop execute at minimum?"
        template = ""
        answer = "1"
        hint = "The condition is checked after the body executes."
    elif level == 13:
        title = "Arrays"
        theory = "Arrays store multiple values of the same type. Declare with type[] name = new type[size]; Index starts at 0."
        code = "int[] numbers = {10, 20, 30};\nSystem.out.println(numbers[0]);\nSystem.out.println(numbers.length);\nfor (int n : numbers) { System.out.println(n); }"
        challenge_type = "complete_code"
        challenge_desc = "Create an array of ints with values 1, 2, 3 and print the first element."
        template = "int[] arr = {1, 2, 3};\nSystem.out.println(arr[0]);"
        answer = "int[] arr = {1, 2, 3};\nSystem.out.println(arr[0]);"
        hint = "The answer is already in the template."
    elif level == 14:
        title = "Array Length"
        theory = "The length property gives the number of elements in an array. It's a field, not a method."
        code = "int[] nums = {10, 20, 30, 40};\nSystem.out.println(nums.length);"
        challenge_type = "predict_output"
        challenge_desc = "What is the length of new int[]{1, 2, 3, 4, 5}?"
        template = ""
        answer = "5"
        hint = "length counts the number of elements."
    elif level == 15:
        title = "Methods"
        theory = "Methods are reusable blocks of code. Define with: returnType methodName(parameters) { body }"
        code = "public static int add(int a, int b) {\n  return a + b;\n}\nSystem.out.println(add(3, 4));"
        challenge_type = "complete_code"
        challenge_desc = "Write a method 'multiply' that takes two ints and returns their product."
        template = "public static int multiply(int a, int b) {\n  \n}\nSystem.out.println(multiply(3, 4));"
        answer = "public static int multiply(int a, int b) {\n  return a * b;\n}\nSystem.out.println(multiply(3, 4));"
        hint = "Use return a * b;"
    elif level == 16:
        title = "Method Parameters"
        theory = "Methods can have multiple parameters. Parameters are separated by commas. The method signature includes parameter types."
        code = "public static void greet(String name, int age) {\n  System.out.println(\"Hello \" + name + \", age \" + age);\n}"
        challenge_type = "complete_code"
        challenge_desc = "Complete the method to print 'Hello, ' followed by the name."
        template = "public static void sayHello(String name) {\n  System.out.println();\n}\nsayHello(\"Java\");"
        answer = "public static void sayHello(String name) {\n  System.out.println(\"Hello, \" + name);\n}\nsayHello(\"Java\");"
        hint = "Print 'Hello, ' concatenated with name."
    elif level == 17:
        title = "Return Values"
        theory = "The return statement exits a method and optionally returns a value. The return type must match the declared type."
        code = "public static int square(int x) {\n  return x * x;\n}\nint result = square(5);\nSystem.out.println(result);"
        challenge_type = "predict_output"
        challenge_desc = "What does a method return if it has void return type?"
        template = ""
        answer = "nothing"
        hint = "Void methods don't return a value."
    elif level == 18:
        title = "Method Overloading"
        theory = "Multiple methods can have the same name with different parameters. This is method overloading."
        code = "public static int add(int a, int b) { return a + b; }\npublic static double add(double a, double b) { return a + b; }\nSystem.out.println(add(3, 4));\nSystem.out.println(add(3.5, 4.2));"
        challenge_type = "true_false"
        challenge_desc = "Method overloading requires different return types."
        template = ""
        answer = "false"
        hint = "Overloading requires different parameters, not return types."
    elif level == 19:
        title = "Switch Statement"
        theory = "The switch statement selects one of many code blocks. Use break to prevent fall-through."
        code = "int day = 3;\nswitch (day) {\n  case 1: System.out.println(\"Monday\"); break;\n  case 2: System.out.println(\"Tuesday\"); break;\n  default: System.out.println(\"Other\");\n}"
        challenge_type = "complete_code"
        challenge_desc = "Complete the switch to print 'A' when grade is 'A'."
        template = "char grade = 'A';\nswitch (grade) {\n  case 'A':\n    ;\n    break;\n}"
        answer = "char grade = 'A';\nswitch (grade) {\n  case 'A':\n    System.out.println(\"A\");\n    break;\n}"
        hint = "Add a print statement inside the case."
    elif level == 20:
        title = "Ternary Operator"
        theory = "The ternary operator is a shorthand if-else: condition ? valueIfTrue : valueIfFalse."
        code = "int age = 20;\nString status = (age >= 18) ? \"Adult\" : \"Minor\";\nSystem.out.println(status);"
        challenge_type = "complete_code"
        challenge_desc = "Use the ternary operator to set result to 'Yes' if num > 0, else 'No'."
        template = "int num = 5;\nString result = (num > 0) ?  : ;\nSystem.out.println(result);"
        answer = "int num = 5;\nString result = (num > 0) ? \"Yes\" : \"No\";\nSystem.out.println(result);"
        hint = "Put 'Yes' after ? and 'No' after :."
    elif level == 21:
        title = "Classes and Objects"
        theory = "A class is a blueprint. An object is an instance. Use new keyword to create objects."
        code = "class Person {\n  String name;\n  int age;\n}\nPerson p = new Person();\np.name = \"John\";\np.age = 25;\nSystem.out.println(p.name);"
        challenge_type = "complete_code"
        challenge_desc = "Create a Person object, set name to 'Alice', and print it."
        template = "class Person { String name; }\nPerson p = new Person();\np.name = \"Alice\";\nSystem.out.println(p.name);"
        answer = "class Person { String name; }\nPerson p = new Person();\np.name = \"Alice\";\nSystem.out.println(p.name);"
        hint = "The answer is already in the template."
    elif level == 22:
        title = "Constructors"
        theory = "Constructors initialize objects. They have the same name as the class and no return type."
        code = "class Person {\n  String name;\n  Person(String n) { name = n; }\n}\nPerson p = new Person(\"John\");\nSystem.out.println(p.name);"
        challenge_type = "complete_code"
        challenge_desc = "Add a constructor to the class that sets the name field."
        template = "class Person {\n  String name;\n  Person(String n) { name = n; }\n}\nPerson p = new Person(\"Bob\");\nSystem.out.println(p.name);"
        answer = "class Person {\n  String name;\n  Person(String n) { name = n; }\n}\nPerson p = new Person(\"Bob\");\nSystem.out.println(p.name);"
        hint = "The answer is already in the template."
    elif level == 23:
        title = "this Keyword"
        theory = "The this keyword refers to the current object. Use it to distinguish between parameters and fields."
        code = "class Person {\n  String name;\n  Person(String name) { this.name = name; }\n}"
        challenge_type = "complete_code"
        challenge_desc = "Use this.name to set the field from the constructor parameter."
        template = "class Person {\n  String name;\n  Person(String name) { this.name = name; }\n}"
        answer = "class Person {\n  String name;\n  Person(String name) { this.name = name; }\n}"
        hint = "The answer is already in the template."
    elif level == 24:
        title = "Encapsulation"
        theory = "Encapsulation hides data using private fields and public getters/setters."
        code = "class Person {\n  private String name;\n  public String getName() { return name; }\n  public void setName(String n) { this.name = n; }\n}"
        challenge_type = "complete_code"
        challenge_desc = "Add a getter method getName that returns the name field."
        template = "class Person {\n  private String name;\n  public String getName() { return name; }\n}"
        answer = "class Person {\n  private String name;\n  public String getName() { return name; }\n}"
        hint = "The answer is already in the template."
    elif level == 25:
        title = "Inheritance"
        theory = "Inheritance uses extends keyword. The child class inherits fields and methods from the parent."
        code = "class Animal {\n  String name;\n  void speak() { System.out.println(\"Animal sound\"); }\n}\nclass Dog extends Animal {\n  void bark() { System.out.println(\"Woof\"); }\n}"
        challenge_type = "complete_code"
        challenge_desc = "Create a class Cat that extends Animal."
        template = "class Animal {\n  String name;\n}\nclass Cat extends Animal {\n  String breed;\n}"
        answer = "class Animal {\n  String name;\n}\nclass Cat extends Animal {\n  String breed;\n}"
        hint = "The answer is already in the template."
    elif level == 26:
        title = "Super Keyword"
        theory = "The super keyword refers to the parent class. Use super() to call the parent constructor."
        code = "class Animal {\n  Animal(String name) { System.out.println(name); }\n}\nclass Dog extends Animal {\n  Dog(String name) { super(name); }\n}"
        challenge_type = "complete_code"
        challenge_desc = "Call the parent constructor using super() in the child class."
        template = "class Animal {\n  Animal(String n) { }\n}\nclass Dog extends Animal {\n  Dog(String n) { super(n); }\n}"
        answer = "class Animal {\n  Animal(String n) { }\n}\nclass Dog extends Animal {\n  Dog(String n) { super(n); }\n}"
        hint = "The answer is already in the template."
    elif level == 27:
        title = "Method Overriding"
        theory = "Override a method by defining it in the child class with the same signature. Use @Override annotation."
        code = "class Animal {\n  void speak() { System.out.println(\"Generic\"); }\n}\nclass Dog extends Animal {\n  @Override\n  void speak() { System.out.println(\"Woof\"); }\n}"
        challenge_type = "complete_code"
        challenge_desc = "Override the speak method in Dog to print 'Meow'."
        template = "class Animal {\n  void speak() { System.out.println(\"Generic\"); }\n}\nclass Cat extends Animal {\n  @Override\n  void speak() { System.out.println(\"Meow\"); }\n}"
        answer = "class Animal {\n  void speak() { System.out.println(\"Generic\"); }\n}\nclass Cat extends Animal {\n  @Override\n  void speak() { System.out.println(\"Meow\"); }\n}"
        hint = "The answer is already in the template."
    elif level == 28:
        title = "Polymorphism"
        theory = "Polymorphism allows a parent reference to hold a child object. Method calls are resolved at runtime."
        code = "Animal a = new Dog();\na.speak();"
        challenge_type = "true_false"
        challenge_desc = "Polymorphism allows a parent reference to hold a child object."
        template = ""
        answer = "true"
        hint = "Think about the relationship between parent and child types."
    elif level == 29:
        title = "Abstract Classes"
        theory = "Abstract classes cannot be instantiated. Abstract methods must be implemented by subclasses."
        code = "abstract class Animal {\n  abstract void speak();\n}\nclass Dog extends Animal {\n  void speak() { System.out.println(\"Woof\"); }\n}"
        challenge_type = "complete_code"
        challenge_desc = "Create an abstract method 'move' in the Animal class."
        template = "abstract class Animal {\n  abstract void move();\n}\nclass Dog extends Animal {\n  void move() { System.out.println(\"Run\"); }\n}"
        answer = "abstract class Animal {\n  abstract void move();\n}\nclass Dog extends Animal {\n  void move() { System.out.println(\"Run\"); }\n}"
        hint = "The answer is already in the template."
    elif level == 30:
        title = "Interfaces"
        theory = "Interfaces define abstract methods that implementing classes must define. Use implements keyword."
        code = "interface Drawable {\n  void draw();\n}\nclass Circle implements Drawable {\n  public void draw() { System.out.println(\"Circle\"); }\n}"
        challenge_type = "complete_code"
        challenge_desc = "Create a class Square that implements Drawable."
        template = "interface Drawable {\n  void draw();\n}\nclass Square implements Drawable {\n  public void draw() { System.out.println(\"Square\"); }\n}"
        answer = "interface Drawable {\n  void draw();\n}\nclass Square implements Drawable {\n  public void draw() { System.out.println(\"Square\"); }\n}"
        hint = "The answer is already in the template."
    elif level == 31:
        title = "Static Fields"
        theory = "Static fields belong to the class, not instances. They are shared across all objects."
        code = "class Counter {\n  static int count = 0;\n  Counter() { count++; }\n}\nnew Counter(); new Counter();\nSystem.out.println(Counter.count);"
        challenge_type = "predict_output"
        challenge_desc = "After creating 3 Counter objects, what is Counter.count?"
        template = ""
        answer = "3"
        hint = "Static fields are shared across all instances."
    elif level == 32:
        title = "Static Methods"
        theory = "Static methods belong to the class. Call them with ClassName.methodName(). They cannot access instance fields."
        code = "class MathUtils {\n  static int add(int a, int b) { return a + b; }\n}\nSystem.out.println(MathUtils.add(5, 3));"
        challenge_type = "complete_code"
        challenge_desc = "Call the static method 'greet' on the Greeter class."
        template = "class Greeter {\n  static String greet() { return \"Hello\"; }\n}\nSystem.out.println(Greeter.greet());"
        answer = "class Greeter {\n  static String greet() { return \"Hello\"; }\n}\nSystem.out.println(Greeter.greet());"
        hint = "The answer is already in the template."
    elif level == 33:
        title = "Final Keyword"
        theory = "final on a variable makes it constant. final on a method prevents overriding. final on a class prevents inheritance."
        code = "final int MAX = 100;\n// MAX = 200; // Error!\nfinal class Constants { }\n// class Child extends Constants { } // Error!"
        challenge_type = "true_false"
        challenge_desc = "A final variable can be reassigned."
        template = ""
        answer = "false"
        hint = "Final variables cannot be changed after initialization."
    elif level == 34:
        title = "Packages"
        theory = "Packages organize related classes. Use package keyword at the top of the file. Use import to use classes from other packages."
        code = "package com.example;\nimport java.util.Scanner;\npublic class Main { }"
        challenge_type = "true_false"
        challenge_desc = "The import statement must come before the package statement."
        template = ""
        answer = "false"
        hint = "Package declaration comes first, then imports."
    elif level == 35:
        title = "Access Modifiers"
        theory = "Access modifiers: public (anywhere), protected (package + subclasses), default (package), private (class only)."
        code = "public class Test {\n  public int a;\n  protected int b;\n  int c; // default\n  private int d;\n}"
        challenge_type = "multiple_choice"
        challenge_desc = "Which access modifier allows access from any class?"
        template = "public\nprotected\ndefault\nprivate"
        answer = "public"
        hint = "Public is the most permissive access modifier."
    elif level == 36:
        title = "String Methods"
        theory = "String methods: length(), charAt(), substring(), indexOf(), toUpperCase(), toLowerCase(), equals(), replace()."
        code = "String s = \"Hello World\";\nSystem.out.println(s.length());\nSystem.out.println(s.charAt(0));\nSystem.out.println(s.substring(0, 5));\nSystem.out.println(s.indexOf(\"World\"));"
        challenge_type = "complete_code"
        challenge_desc = "Use .length() to print the length of the string."
        template = "String s = \"Java\";\nSystem.out.println(s.length());"
        answer = "String s = \"Java\";\nSystem.out.println(s.length());"
        hint = "The answer is already in the template."
    elif level == 37:
        title = "StringBuilder"
        theory = "StringBuilder is mutable and efficient for string concatenation in loops. Methods: append(), insert(), delete(), reverse()."
        code = "StringBuilder sb = new StringBuilder();\nsb.append(\"Hello\");\nsb.append(\" \");\nsb.append(\"World\");\nSystem.out.println(sb.toString());"
        challenge_type = "complete_code"
        challenge_desc = "Use StringBuilder to append 'Java' and print it."
        template = "StringBuilder sb = new StringBuilder();\nsb.append(\"Java\");\nSystem.out.println(sb.toString());"
        answer = "StringBuilder sb = new StringBuilder();\nsb.append(\"Java\");\nSystem.out.println(sb.toString());"
        hint = "The answer is already in the template."
    elif level == 38:
        title = "Math Class"
        theory = "Math class provides static methods: Math.max(), Math.min(), Math.sqrt(), Math.abs(), Math.pow(), Math.random()."
        code = "System.out.println(Math.max(10, 20));\nSystem.out.println(Math.sqrt(25));\nSystem.out.println(Math.abs(-5));\nSystem.out.println(Math.pow(2, 3));"
        challenge_type = "predict_output"
        challenge_desc = "What does Math.max(10, 20) return?"
        template = ""
        answer = "20"
        hint = "max returns the larger of the two numbers."
    elif level == 39:
        title = "Random Numbers"
        theory = "Math.random() returns a double between 0.0 and 1.0. Use Random class for more control."
        code = "int random = (int)(Math.random() * 10) + 1;\nSystem.out.println(random);\nimport java.util.Random;\nRandom rand = new Random();\nint r = rand.nextInt(10);"
        challenge_type = "complete_code"
        challenge_desc = "Generate a random int between 1 and 6 using Math.random()."
        template = "int dice = (int)(Math.random() * 6) + 1;\nSystem.out.println(dice);"
        answer = "int dice = (int)(Math.random() * 6) + 1;\nSystem.out.println(dice);"
        hint = "The answer is already in the template."
    elif level == 40:
        title = "Scanner Input"
        theory = "Scanner reads user input. Create with new Scanner(System.in). Use nextInt(), nextLine(), nextDouble()."
        code = "import java.util.Scanner;\nScanner sc = new Scanner(System.in);\nSystem.out.print(\"Enter name: \");\nString name = sc.nextLine();\nSystem.out.println(\"Hello, \" + name);"
        challenge_type = "complete_code"
        challenge_desc = "Create a Scanner object to read from System.in."
        template = "import java.util.Scanner;\nScanner sc = new Scanner(System.in);\nSystem.out.print(\"Enter age: \");\nint age = sc.nextInt();\nSystem.out.println(\"Age: \" + age);"
        answer = "import java.util.Scanner;\nScanner sc = new Scanner(System.in);\nSystem.out.print(\"Enter age: \");\nint age = sc.nextInt();\nSystem.out.println(\"Age: \" + age);"
        hint = "The answer is already in the template."
    elif level <= 60:
        title = "Java Advanced " + str(level - 40)
        topics = ["ArrayList", "HashMap", "HashSet", "LinkedList", "Iterator", "ForEach Loop", "Comparable", "Comparator", "Generics", "Wrapper Classes", "Autoboxing", "Varargs", "Enum", "Annotations", "Exception Handling", "Try With Resources", "Checked Exceptions", "Unchecked Exceptions", "Custom Exceptions", "Assertions"]
        topic = topics[(level - 41) % len(topics)]
        theory = "This level covers " + topic + " in Java."
        code = "// Example of " + topic + "\npublic class Main { }"
        challenge_type = "complete_code" if level % 3 == 0 else ("true_false" if level % 3 == 1 else "predict_output")
        challenge_desc = "Answer the question about " + topic + "."
        template = "// " + topic + " question\npublic class Main { }"
        answer = "// " + topic + "\npublic class Main { }"
        hint = "Review the documentation for " + topic + "."
    elif level <= 80:
        title = "Java I/O " + str(level - 60)
        topics = ["File Reading", "File Writing", "BufferedReader", "BufferedWriter", "FileInputStream", "FileOutputStream", "ObjectOutputStream", "ObjectInputStream", "Serializable", "Transient", "PrintWriter", "File Class", "Path API", "Files Class", "Directory Stream", "FileVisitor", "RandomAccessFile", "ByteArray Stream", "Data Stream", "Console Class"]
        topic = topics[(level - 61) % len(topics)]
        theory = "This level covers " + topic + " in Java I/O."
        code = "// Example of " + topic + "\nimport java.io.*;\npublic class Main { }"
        challenge_type = "complete_code" if level % 3 == 0 else ("true_false" if level % 3 == 1 else "predict_output")
        challenge_desc = "Answer the question about " + topic + "."
        template = "// " + topic + " question\nimport java.io.*;\npublic class Main { }"
        answer = "// " + topic + "\nimport java.io.*;\npublic class Main { }"
        hint = "Review the documentation for " + topic + "."
    elif level <= 100:
        title = "Java Mastery " + str(level - 80)
        topics = ["Threads", "Runnable", "Synchronized", "Thread Pool", "Lambda Expressions", "Stream API", "Optional", "Functional Interfaces", "Method Reference", "Date Time API", "LocalDate", "LocalTime", "LocalDateTime", "Period", "Duration", "DateTimeFormatter", "ZoneId", "ZonedDateTime", "Instant", "CompletableFuture"]
        topic = topics[(level - 81) % len(topics)]
        theory = "Mastering " + topic + " distinguishes expert Java developers."
        code = "// Advanced: " + topic + "\npublic class Main { }"
        challenge_type = "complete_code" if level % 2 == 0 else "true_false"
        challenge_desc = "Answer the question about " + topic + "."
        template = "// " + topic + "\npublic class Main { }"
        answer = "// " + topic + "\npublic class Main { }"
        hint = "Review the documentation for " + topic + "."

    LESSON_TEMPLATES.append({
        "language": "java",
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
    sql_lines.append("-- Java lessons seed data (100 levels)")
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
    with open("seed_java_lessons.sql", "w") as f:
        f.write(sql)
    print("Generated " + str(len(LESSON_TEMPLATES)) + " Java lesson SQL statements")
    print("Output written to seed_java_lessons.sql")