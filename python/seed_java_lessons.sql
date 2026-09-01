-- Java lessons seed data (100 levels)

INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 1, 'Hello World', 'Java is a strongly-typed, object-oriented language. Every Java program needs a class with a main method. System.out.println() prints to console.', 'public class Main {
  public static void main(String[] args) {
    System.out.println("Hello, World!");
  }
}', 'complete_code', 'Complete the main method to print ''Hello, World!''.', 'public class Main {
  public static void main(String[] args) {
    System.out.println();
  }
}', 'public class Main {
  public static void main(String[] args) {
    System.out.println("Hello, World!");
  }
}', 'Put the string ''Hello, World!'' inside System.out.println().', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 2, 'Variables', 'Java is statically typed. Declare variables with type name = value;. Common types: int, double, String, boolean.', 'int age = 25;
String name = "John";
boolean isActive = true;
System.out.println(name + " is " + age);', 'complete_code', 'Declare an int variable ''score'' with value 100 and print it.', 'int score = 100;
System.out.println(score);', 'int score = 100;
System.out.println(score);', 'The answer is already in the template.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 3, 'Data Types', 'Java has primitive types: int, double, char, boolean, byte, short, long, float. And reference types like String.', 'int i = 10;
double d = 3.14;
char c = ''A'';
boolean b = true;
System.out.println(i + " " + d + " " + c + " " + b);', 'predict_output', 'What is the default value of an int variable in Java?', '', '0', 'Primitive types have default values in Java.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 4, 'Arithmetic', 'Java supports +, -, *, /, % (modulo). Integer division truncates. Use double for decimal results.', 'int a = 10, b = 3;
System.out.println(a + b);
System.out.println(a - b);
System.out.println(a * b);
System.out.println(a / b);
System.out.println(a % b);', 'predict_output', 'What is 10 / 3 in Java?', '', '3', 'Integer division truncates the decimal part.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 5, 'String Concatenation', 'Use + to concatenate strings. Java automatically converts other types to strings when concatenating.', 'String first = "Hello";
String second = "World";
System.out.println(first + " " + second);
System.out.println("Age: " + 25);', 'complete_code', 'Print ''Hello Java'' by concatenating the two strings.', 'String a = "Hello";
String b = "Java";
System.out.println();', 'String a = "Hello";
String b = "Java";
System.out.println(a + " " + b);', 'Use the + operator to join a, space, and b.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 6, 'If Statements', 'The if statement executes code if a condition is true. Use else for an alternative path.', 'int age = 18;
if (age >= 18) {
  System.out.println("Adult");
} else {
  System.out.println("Minor");
}', 'complete_code', 'Print ''Positive'' if num > 0, otherwise print ''Not positive''.', 'int num = 5;
if (num > 0) {
  
} else {
  
}', 'int num = 5;
if (num > 0) {
  System.out.println("Positive");
} else {
  System.out.println("Not positive");
}', 'Add print statements inside each block.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 7, 'Else If', 'Use else if for multiple conditions. The first matching condition executes.', 'int score = 85;
if (score >= 90) {
  System.out.println("A");
} else if (score >= 80) {
  System.out.println("B");
} else {
  System.out.println("C");
}', 'complete_code', 'Print ''High'' if num > 10, ''Low'' otherwise.', 'int num = 15;
if (num > 10) {
  
} else {
  
}', 'int num = 15;
if (num > 10) {
  System.out.println("High");
} else {
  System.out.println("Low");
}', 'Add print statements in each branch.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 8, 'Comparison Operators', 'Comparison operators: ==, !=, <, >, <=, >=. For strings, use .equals() not ==.', 'int a = 5, b = 10;
System.out.println(a == b);
System.out.println(a != b);
System.out.println(a < b);
String s1 = "Hi", s2 = "Hi";
System.out.println(s1.equals(s2));', 'predict_output', 'What does 5 == 5 return in Java?', '', 'true', '== compares primitive values.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 9, 'Logical Operators', 'Logical operators: && (AND), || (OR), ! (NOT). They work with boolean expressions.', 'int x = 5;
System.out.println(x > 0 && x < 10);
System.out.println(x > 0 || x < 0);
System.out.println(!(x == 5));', 'predict_output', 'What is the result of true && false?', '', 'false', 'AND returns true only if both operands are true.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 10, 'For Loops', 'A for loop repeats code: for (initialization; condition; increment) { }. Use i++ to increment.', 'for (int i = 0; i < 5; i++) {
  System.out.println(i);
}', 'complete_code', 'Write a for loop that prints numbers 0 to 4.', 'for (int i = 0; i < 5; i++) {
  
}', 'for (int i = 0; i < 5; i++) {
  System.out.println(i);
}', 'Add System.out.println(i) inside the loop.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 11, 'While Loops', 'A while loop runs while a condition is true. Update the condition variable inside the loop.', 'int count = 0;
while (count < 3) {
  System.out.println(count);
  count++;
}', 'complete_code', 'Complete the while loop to print 0, 1, 2.', 'int i = 0;
while (i < 3) {
  System.out.println(i);
  
}', 'int i = 0;
while (i < 3) {
  System.out.println(i);
  i++;
}', 'Add i++ to increment the counter.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 12, 'Do-While Loops', 'A do-while loop executes the body at least once before checking the condition.', 'int i = 0;
do {
  System.out.println(i);
  i++;
} while (i < 3);', 'predict_output', 'How many times does a do-while loop execute at minimum?', '', '1', 'The condition is checked after the body executes.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 13, 'Arrays', 'Arrays store multiple values of the same type. Declare with type[] name = new type[size]; Index starts at 0.', 'int[] numbers = {10, 20, 30};
System.out.println(numbers[0]);
System.out.println(numbers.length);
for (int n : numbers) { System.out.println(n); }', 'complete_code', 'Create an array of ints with values 1, 2, 3 and print the first element.', 'int[] arr = {1, 2, 3};
System.out.println(arr[0]);', 'int[] arr = {1, 2, 3};
System.out.println(arr[0]);', 'The answer is already in the template.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 14, 'Array Length', 'The length property gives the number of elements in an array. It''s a field, not a method.', 'int[] nums = {10, 20, 30, 40};
System.out.println(nums.length);', 'predict_output', 'What is the length of new int[]{1, 2, 3, 4, 5}?', '', '5', 'length counts the number of elements.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 15, 'Methods', 'Methods are reusable blocks of code. Define with: returnType methodName(parameters) { body }', 'public static int add(int a, int b) {
  return a + b;
}
System.out.println(add(3, 4));', 'complete_code', 'Write a method ''multiply'' that takes two ints and returns their product.', 'public static int multiply(int a, int b) {
  
}
System.out.println(multiply(3, 4));', 'public static int multiply(int a, int b) {
  return a * b;
}
System.out.println(multiply(3, 4));', 'Use return a * b;', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 16, 'Method Parameters', 'Methods can have multiple parameters. Parameters are separated by commas. The method signature includes parameter types.', 'public static void greet(String name, int age) {
  System.out.println("Hello " + name + ", age " + age);
}', 'complete_code', 'Complete the method to print ''Hello, '' followed by the name.', 'public static void sayHello(String name) {
  System.out.println();
}
sayHello("Java");', 'public static void sayHello(String name) {
  System.out.println("Hello, " + name);
}
sayHello("Java");', 'Print ''Hello, '' concatenated with name.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 17, 'Return Values', 'The return statement exits a method and optionally returns a value. The return type must match the declared type.', 'public static int square(int x) {
  return x * x;
}
int result = square(5);
System.out.println(result);', 'predict_output', 'What does a method return if it has void return type?', '', 'nothing', 'Void methods don''t return a value.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 18, 'Method Overloading', 'Multiple methods can have the same name with different parameters. This is method overloading.', 'public static int add(int a, int b) { return a + b; }
public static double add(double a, double b) { return a + b; }
System.out.println(add(3, 4));
System.out.println(add(3.5, 4.2));', 'true_false', 'Method overloading requires different return types.', '', 'false', 'Overloading requires different parameters, not return types.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 19, 'Switch Statement', 'The switch statement selects one of many code blocks. Use break to prevent fall-through.', 'int day = 3;
switch (day) {
  case 1: System.out.println("Monday"); break;
  case 2: System.out.println("Tuesday"); break;
  default: System.out.println("Other");
}', 'complete_code', 'Complete the switch to print ''A'' when grade is ''A''.', 'char grade = ''A'';
switch (grade) {
  case ''A'':
    ;
    break;
}', 'char grade = ''A'';
switch (grade) {
  case ''A'':
    System.out.println("A");
    break;
}', 'Add a print statement inside the case.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 20, 'Ternary Operator', 'The ternary operator is a shorthand if-else: condition ? valueIfTrue : valueIfFalse.', 'int age = 20;
String status = (age >= 18) ? "Adult" : "Minor";
System.out.println(status);', 'complete_code', 'Use the ternary operator to set result to ''Yes'' if num > 0, else ''No''.', 'int num = 5;
String result = (num > 0) ?  : ;
System.out.println(result);', 'int num = 5;
String result = (num > 0) ? "Yes" : "No";
System.out.println(result);', 'Put ''Yes'' after ? and ''No'' after :.', 50, 'easy', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 21, 'Classes and Objects', 'A class is a blueprint. An object is an instance. Use new keyword to create objects.', 'class Person {
  String name;
  int age;
}
Person p = new Person();
p.name = "John";
p.age = 25;
System.out.println(p.name);', 'complete_code', 'Create a Person object, set name to ''Alice'', and print it.', 'class Person { String name; }
Person p = new Person();
p.name = "Alice";
System.out.println(p.name);', 'class Person { String name; }
Person p = new Person();
p.name = "Alice";
System.out.println(p.name);', 'The answer is already in the template.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 22, 'Constructors', 'Constructors initialize objects. They have the same name as the class and no return type.', 'class Person {
  String name;
  Person(String n) { name = n; }
}
Person p = new Person("John");
System.out.println(p.name);', 'complete_code', 'Add a constructor to the class that sets the name field.', 'class Person {
  String name;
  Person(String n) { name = n; }
}
Person p = new Person("Bob");
System.out.println(p.name);', 'class Person {
  String name;
  Person(String n) { name = n; }
}
Person p = new Person("Bob");
System.out.println(p.name);', 'The answer is already in the template.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 23, 'this Keyword', 'The this keyword refers to the current object. Use it to distinguish between parameters and fields.', 'class Person {
  String name;
  Person(String name) { this.name = name; }
}', 'complete_code', 'Use this.name to set the field from the constructor parameter.', 'class Person {
  String name;
  Person(String name) { this.name = name; }
}', 'class Person {
  String name;
  Person(String name) { this.name = name; }
}', 'The answer is already in the template.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 24, 'Encapsulation', 'Encapsulation hides data using private fields and public getters/setters.', 'class Person {
  private String name;
  public String getName() { return name; }
  public void setName(String n) { this.name = n; }
}', 'complete_code', 'Add a getter method getName that returns the name field.', 'class Person {
  private String name;
  public String getName() { return name; }
}', 'class Person {
  private String name;
  public String getName() { return name; }
}', 'The answer is already in the template.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 25, 'Inheritance', 'Inheritance uses extends keyword. The child class inherits fields and methods from the parent.', 'class Animal {
  String name;
  void speak() { System.out.println("Animal sound"); }
}
class Dog extends Animal {
  void bark() { System.out.println("Woof"); }
}', 'complete_code', 'Create a class Cat that extends Animal.', 'class Animal {
  String name;
}
class Cat extends Animal {
  String breed;
}', 'class Animal {
  String name;
}
class Cat extends Animal {
  String breed;
}', 'The answer is already in the template.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 26, 'Super Keyword', 'The super keyword refers to the parent class. Use super() to call the parent constructor.', 'class Animal {
  Animal(String name) { System.out.println(name); }
}
class Dog extends Animal {
  Dog(String name) { super(name); }
}', 'complete_code', 'Call the parent constructor using super() in the child class.', 'class Animal {
  Animal(String n) { }
}
class Dog extends Animal {
  Dog(String n) { super(n); }
}', 'class Animal {
  Animal(String n) { }
}
class Dog extends Animal {
  Dog(String n) { super(n); }
}', 'The answer is already in the template.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 27, 'Method Overriding', 'Override a method by defining it in the child class with the same signature. Use @Override annotation.', 'class Animal {
  void speak() { System.out.println("Generic"); }
}
class Dog extends Animal {
  @Override
  void speak() { System.out.println("Woof"); }
}', 'complete_code', 'Override the speak method in Dog to print ''Meow''.', 'class Animal {
  void speak() { System.out.println("Generic"); }
}
class Cat extends Animal {
  @Override
  void speak() { System.out.println("Meow"); }
}', 'class Animal {
  void speak() { System.out.println("Generic"); }
}
class Cat extends Animal {
  @Override
  void speak() { System.out.println("Meow"); }
}', 'The answer is already in the template.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 28, 'Polymorphism', 'Polymorphism allows a parent reference to hold a child object. Method calls are resolved at runtime.', 'Animal a = new Dog();
a.speak();', 'true_false', 'Polymorphism allows a parent reference to hold a child object.', '', 'true', 'Think about the relationship between parent and child types.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 29, 'Abstract Classes', 'Abstract classes cannot be instantiated. Abstract methods must be implemented by subclasses.', 'abstract class Animal {
  abstract void speak();
}
class Dog extends Animal {
  void speak() { System.out.println("Woof"); }
}', 'complete_code', 'Create an abstract method ''move'' in the Animal class.', 'abstract class Animal {
  abstract void move();
}
class Dog extends Animal {
  void move() { System.out.println("Run"); }
}', 'abstract class Animal {
  abstract void move();
}
class Dog extends Animal {
  void move() { System.out.println("Run"); }
}', 'The answer is already in the template.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 30, 'Interfaces', 'Interfaces define abstract methods that implementing classes must define. Use implements keyword.', 'interface Drawable {
  void draw();
}
class Circle implements Drawable {
  public void draw() { System.out.println("Circle"); }
}', 'complete_code', 'Create a class Square that implements Drawable.', 'interface Drawable {
  void draw();
}
class Square implements Drawable {
  public void draw() { System.out.println("Square"); }
}', 'interface Drawable {
  void draw();
}
class Square implements Drawable {
  public void draw() { System.out.println("Square"); }
}', 'The answer is already in the template.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 31, 'Static Fields', 'Static fields belong to the class, not instances. They are shared across all objects.', 'class Counter {
  static int count = 0;
  Counter() { count++; }
}
new Counter(); new Counter();
System.out.println(Counter.count);', 'predict_output', 'After creating 3 Counter objects, what is Counter.count?', '', '3', 'Static fields are shared across all instances.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 32, 'Static Methods', 'Static methods belong to the class. Call them with ClassName.methodName(). They cannot access instance fields.', 'class MathUtils {
  static int add(int a, int b) { return a + b; }
}
System.out.println(MathUtils.add(5, 3));', 'complete_code', 'Call the static method ''greet'' on the Greeter class.', 'class Greeter {
  static String greet() { return "Hello"; }
}
System.out.println(Greeter.greet());', 'class Greeter {
  static String greet() { return "Hello"; }
}
System.out.println(Greeter.greet());', 'The answer is already in the template.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 33, 'Final Keyword', 'final on a variable makes it constant. final on a method prevents overriding. final on a class prevents inheritance.', 'final int MAX = 100;
// MAX = 200; // Error!
final class Constants { }
// class Child extends Constants { } // Error!', 'true_false', 'A final variable can be reassigned.', '', 'false', 'Final variables cannot be changed after initialization.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 34, 'Packages', 'Packages organize related classes. Use package keyword at the top of the file. Use import to use classes from other packages.', 'package com.example;
import java.util.Scanner;
public class Main { }', 'true_false', 'The import statement must come before the package statement.', '', 'false', 'Package declaration comes first, then imports.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 35, 'Access Modifiers', 'Access modifiers: public (anywhere), protected (package + subclasses), default (package), private (class only).', 'public class Test {
  public int a;
  protected int b;
  int c; // default
  private int d;
}', 'multiple_choice', 'Which access modifier allows access from any class?', 'public
protected
default
private', 'public', 'Public is the most permissive access modifier.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 36, 'String Methods', 'String methods: length(), charAt(), substring(), indexOf(), toUpperCase(), toLowerCase(), equals(), replace().', 'String s = "Hello World";
System.out.println(s.length());
System.out.println(s.charAt(0));
System.out.println(s.substring(0, 5));
System.out.println(s.indexOf("World"));', 'complete_code', 'Use .length() to print the length of the string.', 'String s = "Java";
System.out.println(s.length());', 'String s = "Java";
System.out.println(s.length());', 'The answer is already in the template.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 37, 'StringBuilder', 'StringBuilder is mutable and efficient for string concatenation in loops. Methods: append(), insert(), delete(), reverse().', 'StringBuilder sb = new StringBuilder();
sb.append("Hello");
sb.append(" ");
sb.append("World");
System.out.println(sb.toString());', 'complete_code', 'Use StringBuilder to append ''Java'' and print it.', 'StringBuilder sb = new StringBuilder();
sb.append("Java");
System.out.println(sb.toString());', 'StringBuilder sb = new StringBuilder();
sb.append("Java");
System.out.println(sb.toString());', 'The answer is already in the template.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 38, 'Math Class', 'Math class provides static methods: Math.max(), Math.min(), Math.sqrt(), Math.abs(), Math.pow(), Math.random().', 'System.out.println(Math.max(10, 20));
System.out.println(Math.sqrt(25));
System.out.println(Math.abs(-5));
System.out.println(Math.pow(2, 3));', 'predict_output', 'What does Math.max(10, 20) return?', '', '20', 'max returns the larger of the two numbers.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 39, 'Random Numbers', 'Math.random() returns a double between 0.0 and 1.0. Use Random class for more control.', 'int random = (int)(Math.random() * 10) + 1;
System.out.println(random);
import java.util.Random;
Random rand = new Random();
int r = rand.nextInt(10);', 'complete_code', 'Generate a random int between 1 and 6 using Math.random().', 'int dice = (int)(Math.random() * 6) + 1;
System.out.println(dice);', 'int dice = (int)(Math.random() * 6) + 1;
System.out.println(dice);', 'The answer is already in the template.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 40, 'Scanner Input', 'Scanner reads user input. Create with new Scanner(System.in). Use nextInt(), nextLine(), nextDouble().', 'import java.util.Scanner;
Scanner sc = new Scanner(System.in);
System.out.print("Enter name: ");
String name = sc.nextLine();
System.out.println("Hello, " + name);', 'complete_code', 'Create a Scanner object to read from System.in.', 'import java.util.Scanner;
Scanner sc = new Scanner(System.in);
System.out.print("Enter age: ");
int age = sc.nextInt();
System.out.println("Age: " + age);', 'import java.util.Scanner;
Scanner sc = new Scanner(System.in);
System.out.print("Enter age: ");
int age = sc.nextInt();
System.out.println("Age: " + age);', 'The answer is already in the template.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 41, 'Java Advanced 1', 'This level covers ArrayList in Java.', '// Example of ArrayList
public class Main { }', 'predict_output', 'Answer the question about ArrayList.', '// ArrayList question
public class Main { }', '// ArrayList
public class Main { }', 'Review the documentation for ArrayList.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 42, 'Java Advanced 2', 'This level covers HashMap in Java.', '// Example of HashMap
public class Main { }', 'complete_code', 'Answer the question about HashMap.', '// HashMap question
public class Main { }', '// HashMap
public class Main { }', 'Review the documentation for HashMap.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 43, 'Java Advanced 3', 'This level covers HashSet in Java.', '// Example of HashSet
public class Main { }', 'true_false', 'Answer the question about HashSet.', '// HashSet question
public class Main { }', '// HashSet
public class Main { }', 'Review the documentation for HashSet.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 44, 'Java Advanced 4', 'This level covers LinkedList in Java.', '// Example of LinkedList
public class Main { }', 'predict_output', 'Answer the question about LinkedList.', '// LinkedList question
public class Main { }', '// LinkedList
public class Main { }', 'Review the documentation for LinkedList.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 45, 'Java Advanced 5', 'This level covers Iterator in Java.', '// Example of Iterator
public class Main { }', 'complete_code', 'Answer the question about Iterator.', '// Iterator question
public class Main { }', '// Iterator
public class Main { }', 'Review the documentation for Iterator.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 46, 'Java Advanced 6', 'This level covers ForEach Loop in Java.', '// Example of ForEach Loop
public class Main { }', 'true_false', 'Answer the question about ForEach Loop.', '// ForEach Loop question
public class Main { }', '// ForEach Loop
public class Main { }', 'Review the documentation for ForEach Loop.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 47, 'Java Advanced 7', 'This level covers Comparable in Java.', '// Example of Comparable
public class Main { }', 'predict_output', 'Answer the question about Comparable.', '// Comparable question
public class Main { }', '// Comparable
public class Main { }', 'Review the documentation for Comparable.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 48, 'Java Advanced 8', 'This level covers Comparator in Java.', '// Example of Comparator
public class Main { }', 'complete_code', 'Answer the question about Comparator.', '// Comparator question
public class Main { }', '// Comparator
public class Main { }', 'Review the documentation for Comparator.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 49, 'Java Advanced 9', 'This level covers Generics in Java.', '// Example of Generics
public class Main { }', 'true_false', 'Answer the question about Generics.', '// Generics question
public class Main { }', '// Generics
public class Main { }', 'Review the documentation for Generics.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 50, 'Java Advanced 10', 'This level covers Wrapper Classes in Java.', '// Example of Wrapper Classes
public class Main { }', 'predict_output', 'Answer the question about Wrapper Classes.', '// Wrapper Classes question
public class Main { }', '// Wrapper Classes
public class Main { }', 'Review the documentation for Wrapper Classes.', 75, 'medium', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 51, 'Java Advanced 11', 'This level covers Autoboxing in Java.', '// Example of Autoboxing
public class Main { }', 'complete_code', 'Answer the question about Autoboxing.', '// Autoboxing question
public class Main { }', '// Autoboxing
public class Main { }', 'Review the documentation for Autoboxing.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 52, 'Java Advanced 12', 'This level covers Varargs in Java.', '// Example of Varargs
public class Main { }', 'true_false', 'Answer the question about Varargs.', '// Varargs question
public class Main { }', '// Varargs
public class Main { }', 'Review the documentation for Varargs.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 53, 'Java Advanced 13', 'This level covers Enum in Java.', '// Example of Enum
public class Main { }', 'predict_output', 'Answer the question about Enum.', '// Enum question
public class Main { }', '// Enum
public class Main { }', 'Review the documentation for Enum.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 54, 'Java Advanced 14', 'This level covers Annotations in Java.', '// Example of Annotations
public class Main { }', 'complete_code', 'Answer the question about Annotations.', '// Annotations question
public class Main { }', '// Annotations
public class Main { }', 'Review the documentation for Annotations.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 55, 'Java Advanced 15', 'This level covers Exception Handling in Java.', '// Example of Exception Handling
public class Main { }', 'true_false', 'Answer the question about Exception Handling.', '// Exception Handling question
public class Main { }', '// Exception Handling
public class Main { }', 'Review the documentation for Exception Handling.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 56, 'Java Advanced 16', 'This level covers Try With Resources in Java.', '// Example of Try With Resources
public class Main { }', 'predict_output', 'Answer the question about Try With Resources.', '// Try With Resources question
public class Main { }', '// Try With Resources
public class Main { }', 'Review the documentation for Try With Resources.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 57, 'Java Advanced 17', 'This level covers Checked Exceptions in Java.', '// Example of Checked Exceptions
public class Main { }', 'complete_code', 'Answer the question about Checked Exceptions.', '// Checked Exceptions question
public class Main { }', '// Checked Exceptions
public class Main { }', 'Review the documentation for Checked Exceptions.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 58, 'Java Advanced 18', 'This level covers Unchecked Exceptions in Java.', '// Example of Unchecked Exceptions
public class Main { }', 'true_false', 'Answer the question about Unchecked Exceptions.', '// Unchecked Exceptions question
public class Main { }', '// Unchecked Exceptions
public class Main { }', 'Review the documentation for Unchecked Exceptions.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 59, 'Java Advanced 19', 'This level covers Custom Exceptions in Java.', '// Example of Custom Exceptions
public class Main { }', 'predict_output', 'Answer the question about Custom Exceptions.', '// Custom Exceptions question
public class Main { }', '// Custom Exceptions
public class Main { }', 'Review the documentation for Custom Exceptions.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 60, 'Java Advanced 20', 'This level covers Assertions in Java.', '// Example of Assertions
public class Main { }', 'complete_code', 'Answer the question about Assertions.', '// Assertions question
public class Main { }', '// Assertions
public class Main { }', 'Review the documentation for Assertions.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 61, 'Java I/O 1', 'This level covers File Reading in Java I/O.', '// Example of File Reading
import java.io.*;
public class Main { }', 'true_false', 'Answer the question about File Reading.', '// File Reading question
import java.io.*;
public class Main { }', '// File Reading
import java.io.*;
public class Main { }', 'Review the documentation for File Reading.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 62, 'Java I/O 2', 'This level covers File Writing in Java I/O.', '// Example of File Writing
import java.io.*;
public class Main { }', 'predict_output', 'Answer the question about File Writing.', '// File Writing question
import java.io.*;
public class Main { }', '// File Writing
import java.io.*;
public class Main { }', 'Review the documentation for File Writing.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 63, 'Java I/O 3', 'This level covers BufferedReader in Java I/O.', '// Example of BufferedReader
import java.io.*;
public class Main { }', 'complete_code', 'Answer the question about BufferedReader.', '// BufferedReader question
import java.io.*;
public class Main { }', '// BufferedReader
import java.io.*;
public class Main { }', 'Review the documentation for BufferedReader.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 64, 'Java I/O 4', 'This level covers BufferedWriter in Java I/O.', '// Example of BufferedWriter
import java.io.*;
public class Main { }', 'true_false', 'Answer the question about BufferedWriter.', '// BufferedWriter question
import java.io.*;
public class Main { }', '// BufferedWriter
import java.io.*;
public class Main { }', 'Review the documentation for BufferedWriter.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 65, 'Java I/O 5', 'This level covers FileInputStream in Java I/O.', '// Example of FileInputStream
import java.io.*;
public class Main { }', 'predict_output', 'Answer the question about FileInputStream.', '// FileInputStream question
import java.io.*;
public class Main { }', '// FileInputStream
import java.io.*;
public class Main { }', 'Review the documentation for FileInputStream.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 66, 'Java I/O 6', 'This level covers FileOutputStream in Java I/O.', '// Example of FileOutputStream
import java.io.*;
public class Main { }', 'complete_code', 'Answer the question about FileOutputStream.', '// FileOutputStream question
import java.io.*;
public class Main { }', '// FileOutputStream
import java.io.*;
public class Main { }', 'Review the documentation for FileOutputStream.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 67, 'Java I/O 7', 'This level covers ObjectOutputStream in Java I/O.', '// Example of ObjectOutputStream
import java.io.*;
public class Main { }', 'true_false', 'Answer the question about ObjectOutputStream.', '// ObjectOutputStream question
import java.io.*;
public class Main { }', '// ObjectOutputStream
import java.io.*;
public class Main { }', 'Review the documentation for ObjectOutputStream.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 68, 'Java I/O 8', 'This level covers ObjectInputStream in Java I/O.', '// Example of ObjectInputStream
import java.io.*;
public class Main { }', 'predict_output', 'Answer the question about ObjectInputStream.', '// ObjectInputStream question
import java.io.*;
public class Main { }', '// ObjectInputStream
import java.io.*;
public class Main { }', 'Review the documentation for ObjectInputStream.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 69, 'Java I/O 9', 'This level covers Serializable in Java I/O.', '// Example of Serializable
import java.io.*;
public class Main { }', 'complete_code', 'Answer the question about Serializable.', '// Serializable question
import java.io.*;
public class Main { }', '// Serializable
import java.io.*;
public class Main { }', 'Review the documentation for Serializable.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 70, 'Java I/O 10', 'This level covers Transient in Java I/O.', '// Example of Transient
import java.io.*;
public class Main { }', 'true_false', 'Answer the question about Transient.', '// Transient question
import java.io.*;
public class Main { }', '// Transient
import java.io.*;
public class Main { }', 'Review the documentation for Transient.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 71, 'Java I/O 11', 'This level covers PrintWriter in Java I/O.', '// Example of PrintWriter
import java.io.*;
public class Main { }', 'predict_output', 'Answer the question about PrintWriter.', '// PrintWriter question
import java.io.*;
public class Main { }', '// PrintWriter
import java.io.*;
public class Main { }', 'Review the documentation for PrintWriter.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 72, 'Java I/O 12', 'This level covers File Class in Java I/O.', '// Example of File Class
import java.io.*;
public class Main { }', 'complete_code', 'Answer the question about File Class.', '// File Class question
import java.io.*;
public class Main { }', '// File Class
import java.io.*;
public class Main { }', 'Review the documentation for File Class.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 73, 'Java I/O 13', 'This level covers Path API in Java I/O.', '// Example of Path API
import java.io.*;
public class Main { }', 'true_false', 'Answer the question about Path API.', '// Path API question
import java.io.*;
public class Main { }', '// Path API
import java.io.*;
public class Main { }', 'Review the documentation for Path API.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 74, 'Java I/O 14', 'This level covers Files Class in Java I/O.', '// Example of Files Class
import java.io.*;
public class Main { }', 'predict_output', 'Answer the question about Files Class.', '// Files Class question
import java.io.*;
public class Main { }', '// Files Class
import java.io.*;
public class Main { }', 'Review the documentation for Files Class.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 75, 'Java I/O 15', 'This level covers Directory Stream in Java I/O.', '// Example of Directory Stream
import java.io.*;
public class Main { }', 'complete_code', 'Answer the question about Directory Stream.', '// Directory Stream question
import java.io.*;
public class Main { }', '// Directory Stream
import java.io.*;
public class Main { }', 'Review the documentation for Directory Stream.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 76, 'Java I/O 16', 'This level covers FileVisitor in Java I/O.', '// Example of FileVisitor
import java.io.*;
public class Main { }', 'true_false', 'Answer the question about FileVisitor.', '// FileVisitor question
import java.io.*;
public class Main { }', '// FileVisitor
import java.io.*;
public class Main { }', 'Review the documentation for FileVisitor.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 77, 'Java I/O 17', 'This level covers RandomAccessFile in Java I/O.', '// Example of RandomAccessFile
import java.io.*;
public class Main { }', 'predict_output', 'Answer the question about RandomAccessFile.', '// RandomAccessFile question
import java.io.*;
public class Main { }', '// RandomAccessFile
import java.io.*;
public class Main { }', 'Review the documentation for RandomAccessFile.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 78, 'Java I/O 18', 'This level covers ByteArray Stream in Java I/O.', '// Example of ByteArray Stream
import java.io.*;
public class Main { }', 'complete_code', 'Answer the question about ByteArray Stream.', '// ByteArray Stream question
import java.io.*;
public class Main { }', '// ByteArray Stream
import java.io.*;
public class Main { }', 'Review the documentation for ByteArray Stream.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 79, 'Java I/O 19', 'This level covers Data Stream in Java I/O.', '// Example of Data Stream
import java.io.*;
public class Main { }', 'true_false', 'Answer the question about Data Stream.', '// Data Stream question
import java.io.*;
public class Main { }', '// Data Stream
import java.io.*;
public class Main { }', 'Review the documentation for Data Stream.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 80, 'Java I/O 20', 'This level covers Console Class in Java I/O.', '// Example of Console Class
import java.io.*;
public class Main { }', 'predict_output', 'Answer the question about Console Class.', '// Console Class question
import java.io.*;
public class Main { }', '// Console Class
import java.io.*;
public class Main { }', 'Review the documentation for Console Class.', 100, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 81, 'Java Mastery 1', 'Mastering Threads distinguishes expert Java developers.', '// Advanced: Threads
public class Main { }', 'true_false', 'Answer the question about Threads.', '// Threads
public class Main { }', '// Threads
public class Main { }', 'Review the documentation for Threads.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 82, 'Java Mastery 2', 'Mastering Runnable distinguishes expert Java developers.', '// Advanced: Runnable
public class Main { }', 'complete_code', 'Answer the question about Runnable.', '// Runnable
public class Main { }', '// Runnable
public class Main { }', 'Review the documentation for Runnable.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 83, 'Java Mastery 3', 'Mastering Synchronized distinguishes expert Java developers.', '// Advanced: Synchronized
public class Main { }', 'true_false', 'Answer the question about Synchronized.', '// Synchronized
public class Main { }', '// Synchronized
public class Main { }', 'Review the documentation for Synchronized.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 84, 'Java Mastery 4', 'Mastering Thread Pool distinguishes expert Java developers.', '// Advanced: Thread Pool
public class Main { }', 'complete_code', 'Answer the question about Thread Pool.', '// Thread Pool
public class Main { }', '// Thread Pool
public class Main { }', 'Review the documentation for Thread Pool.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 85, 'Java Mastery 5', 'Mastering Lambda Expressions distinguishes expert Java developers.', '// Advanced: Lambda Expressions
public class Main { }', 'true_false', 'Answer the question about Lambda Expressions.', '// Lambda Expressions
public class Main { }', '// Lambda Expressions
public class Main { }', 'Review the documentation for Lambda Expressions.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 86, 'Java Mastery 6', 'Mastering Stream API distinguishes expert Java developers.', '// Advanced: Stream API
public class Main { }', 'complete_code', 'Answer the question about Stream API.', '// Stream API
public class Main { }', '// Stream API
public class Main { }', 'Review the documentation for Stream API.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 87, 'Java Mastery 7', 'Mastering Optional distinguishes expert Java developers.', '// Advanced: Optional
public class Main { }', 'true_false', 'Answer the question about Optional.', '// Optional
public class Main { }', '// Optional
public class Main { }', 'Review the documentation for Optional.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 88, 'Java Mastery 8', 'Mastering Functional Interfaces distinguishes expert Java developers.', '// Advanced: Functional Interfaces
public class Main { }', 'complete_code', 'Answer the question about Functional Interfaces.', '// Functional Interfaces
public class Main { }', '// Functional Interfaces
public class Main { }', 'Review the documentation for Functional Interfaces.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 89, 'Java Mastery 9', 'Mastering Method Reference distinguishes expert Java developers.', '// Advanced: Method Reference
public class Main { }', 'true_false', 'Answer the question about Method Reference.', '// Method Reference
public class Main { }', '// Method Reference
public class Main { }', 'Review the documentation for Method Reference.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 90, 'Java Mastery 10', 'Mastering Date Time API distinguishes expert Java developers.', '// Advanced: Date Time API
public class Main { }', 'complete_code', 'Answer the question about Date Time API.', '// Date Time API
public class Main { }', '// Date Time API
public class Main { }', 'Review the documentation for Date Time API.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 91, 'Java Mastery 11', 'Mastering LocalDate distinguishes expert Java developers.', '// Advanced: LocalDate
public class Main { }', 'true_false', 'Answer the question about LocalDate.', '// LocalDate
public class Main { }', '// LocalDate
public class Main { }', 'Review the documentation for LocalDate.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 92, 'Java Mastery 12', 'Mastering LocalTime distinguishes expert Java developers.', '// Advanced: LocalTime
public class Main { }', 'complete_code', 'Answer the question about LocalTime.', '// LocalTime
public class Main { }', '// LocalTime
public class Main { }', 'Review the documentation for LocalTime.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 93, 'Java Mastery 13', 'Mastering LocalDateTime distinguishes expert Java developers.', '// Advanced: LocalDateTime
public class Main { }', 'true_false', 'Answer the question about LocalDateTime.', '// LocalDateTime
public class Main { }', '// LocalDateTime
public class Main { }', 'Review the documentation for LocalDateTime.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 94, 'Java Mastery 14', 'Mastering Period distinguishes expert Java developers.', '// Advanced: Period
public class Main { }', 'complete_code', 'Answer the question about Period.', '// Period
public class Main { }', '// Period
public class Main { }', 'Review the documentation for Period.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 95, 'Java Mastery 15', 'Mastering Duration distinguishes expert Java developers.', '// Advanced: Duration
public class Main { }', 'true_false', 'Answer the question about Duration.', '// Duration
public class Main { }', '// Duration
public class Main { }', 'Review the documentation for Duration.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 96, 'Java Mastery 16', 'Mastering DateTimeFormatter distinguishes expert Java developers.', '// Advanced: DateTimeFormatter
public class Main { }', 'complete_code', 'Answer the question about DateTimeFormatter.', '// DateTimeFormatter
public class Main { }', '// DateTimeFormatter
public class Main { }', 'Review the documentation for DateTimeFormatter.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 97, 'Java Mastery 17', 'Mastering ZoneId distinguishes expert Java developers.', '// Advanced: ZoneId
public class Main { }', 'true_false', 'Answer the question about ZoneId.', '// ZoneId
public class Main { }', '// ZoneId
public class Main { }', 'Review the documentation for ZoneId.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 98, 'Java Mastery 18', 'Mastering ZonedDateTime distinguishes expert Java developers.', '// Advanced: ZonedDateTime
public class Main { }', 'complete_code', 'Answer the question about ZonedDateTime.', '// ZonedDateTime
public class Main { }', '// ZonedDateTime
public class Main { }', 'Review the documentation for ZonedDateTime.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 99, 'Java Mastery 19', 'Mastering Instant distinguishes expert Java developers.', '// Advanced: Instant
public class Main { }', 'true_false', 'Answer the question about Instant.', '// Instant
public class Main { }', '// Instant
public class Main { }', 'Review the documentation for Instant.', 150, 'hard', 1);
INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('java', 100, 'Java Mastery 20', 'Mastering CompletableFuture distinguishes expert Java developers.', '// Advanced: CompletableFuture
public class Main { }', 'complete_code', 'Answer the question about CompletableFuture.', '// CompletableFuture
public class Main { }', '// CompletableFuture
public class Main { }', 'Review the documentation for CompletableFuture.', 150, 'hard', 1);