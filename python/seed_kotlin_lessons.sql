-- Kotlin lessons seed data (100 levels)

INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 1, 'Hello World', 'Kotlin is a modern JVM language. The fun keyword declares functions. println() prints to console.', 'fun main() {
  println("Hello, World!")
}', 'complete_code', 'Complete the main function to print ''Hello, Kotlin!''.', 'fun main() {
  println("Hello, Kotlin!")
}', 'fun main() {
  println("Hello, Kotlin!")
}', 'The answer is already in the template.', 50, 'easy', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 2, 'Variables', 'val declares an immutable (read-only) variable. var declares a mutable variable. Type inference is automatic.', 'val name = "John"
var age = 25
println(name)
println(age)', 'complete_code', 'Declare a val named ''city'' with value ''Paris'' and print it.', 'val city = "Paris"
println(city)', 'val city = "Paris"
println(city)', 'The answer is already in the template.', 50, 'easy', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 3, 'Data Types', 'Kotlin types: Int, Double, String, Boolean, Char, Long, Float, Short, Byte. Use : Type for explicit typing.', 'val age: Int = 25
val price: Double = 9.99
val name: String = "John"
val isActive: Boolean = true', 'complete_code', 'Declare a String variable named ''message'' with value ''Hello''.', 'val message: String = "Hello"
println(message)', 'val message: String = "Hello"
println(message)', 'The answer is already in the template.', 50, 'easy', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 4, 'String Templates', 'Kotlin supports string templates with \$. Use \${expression} for complex expressions.', 'val name = "John"
println("Hello, \$name!")
println("Sum: \${5 + 3}")', 'complete_code', 'Use a string template to print ''Hello, Kotlin!''.', 'val lang = "Kotlin"
println("Hello, \$lang!")', 'val lang = "Kotlin"
println("Hello, \$lang!")', 'The answer is already in the template.', 50, 'easy', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 5, 'If Statements', 'Kotlin if can be used as an expression (returns a value). No ternary operator needed.', 'val age = 18
val status = if (age >= 18) "Adult" else "Minor"
println(status)', 'complete_code', 'Use if as an expression to set result to ''Positive'' if num > 0.', 'val num = 5
val result = if (num > 0) "Positive" else "Not positive"
println(result)', 'val num = 5
val result = if (num > 0) "Positive" else "Not positive"
println(result)', 'The answer is already in the template.', 50, 'easy', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 6, 'When Expression', 'Kotlin when replaces switch. It''s an expression that returns a value. No break needed.', 'val day = 3
val name = when (day) {
  1 -> "Monday"
  2 -> "Tuesday"
  else -> "Other"
}
println(name)', 'complete_code', 'Use when to return ''A'' for grade ''A'', ''B'' for ''B'', else ''Fail''.', 'val grade = ''A''
val result = when (grade) {
  ''A'' -> "A"
  ''B'' -> "B"
  else -> "Fail"
}
println(result)', 'val grade = ''A''
val result = when (grade) {
  ''A'' -> "A"
  ''B'' -> "B"
  else -> "Fail"
}
println(result)', 'The answer is already in the template.', 50, 'easy', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 7, 'For Loops', 'Kotlin for loops iterate over ranges: for (i in 1..5) { }. .. is inclusive, until is exclusive.', 'for (i in 1..5) {
  println(i)
}', 'complete_code', 'Write a for loop that prints numbers 1 to 5.', 'for (i in 1..5) {
  println(i)
}', 'for (i in 1..5) {
  println(i)
}', 'The answer is already in the template.', 50, 'easy', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 8, 'While Loops', 'Kotlin while and do-while loops work like Java. Update the condition variable inside the loop.', 'var i = 0
while (i < 3) {
  println(i)
  i++
}', 'complete_code', 'Complete the while loop to print 0, 1, 2.', 'var i = 0
while (i < 3) {
  println(i)
  i++
}', 'var i = 0
while (i < 3) {
  println(i)
  i++
}', 'The answer is already in the template.', 50, 'easy', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 9, 'Ranges', 'Kotlin ranges: 1..10 (inclusive), 1 until 10 (exclusive), 10 downTo 1 (descending), step 2.', 'for (i in 1..10 step 2) {
  println(i)
}
for (i in 10 downTo 1) {
  println(i)
}', 'complete_code', 'Use a range with step 2 to print odd numbers 1, 3, 5, 7, 9.', 'for (i in 1..9 step 2) {
  println(i)
}', 'for (i in 1..9 step 2) {
  println(i)
}', 'The answer is already in the template.', 50, 'easy', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 10, 'Lists', 'listOf() creates an immutable list. mutableListOf() creates a mutable list. Access with [index].', 'val fruits = listOf("apple", "banana", "cherry")
println(fruits[0])
println(fruits.size)', 'complete_code', 'Create a list of colors: ''red'', ''green'', ''blue'' and print the first.', 'val colors = listOf("red", "green", "blue")
println(colors[0])', 'val colors = listOf("red", "green", "blue")
println(colors[0])', 'The answer is already in the template.', 50, 'easy', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 11, 'Mutable Lists', 'mutableListOf() creates a changeable list. Methods: add(), remove(), clear(), contains().', 'val items = mutableListOf(1, 2, 3)
items.add(4)
items.remove(1)
println(items)', 'complete_code', 'Create a mutable list and add ''d'' to it.', 'val letters = mutableListOf("a", "b", "c")
letters.add("d")
println(letters)', 'val letters = mutableListOf("a", "b", "c")
letters.add("d")
println(letters)', 'The answer is already in the template.', 50, 'easy', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 12, 'Maps', 'mapOf() creates an immutable map. mutableMapOf() for mutable. Access with [key].', 'val map = mapOf("name" to "John", "age" to 30)
println(map["name"])', 'complete_code', 'Create a map with key ''language'' to ''Kotlin'' and print it.', 'val map = mapOf("language" to "Kotlin")
println(map["language"])', 'val map = mapOf("language" to "Kotlin")
println(map["language"])', 'The answer is already in the template.', 50, 'easy', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 13, 'Functions', 'Kotlin functions: fun name(params): ReturnType { return value }. Single-expression functions can omit braces.', 'fun add(a: Int, b: Int): Int {
  return a + b
}
println(add(3, 4))', 'complete_code', 'Write a function multiply that takes two Ints and returns their product.', 'fun multiply(a: Int, b: Int): Int {
  return a * b
}
println(multiply(3, 4))', 'fun multiply(a: Int, b: Int): Int {
  return a * b
}
println(multiply(3, 4))', 'The answer is already in the template.', 50, 'easy', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 14, 'Single-Expression Functions', 'Single-expression functions use = instead of braces: fun add(a: Int, b: Int) = a + b. Return type is inferred.', 'fun square(x: Int) = x * x
println(square(5))', 'complete_code', 'Write a single-expression function double that returns x * 2.', 'fun double(x: Int) = x * 2
println(double(4))', 'fun double(x: Int) = x * 2
println(double(4))', 'The answer is already in the template.', 50, 'easy', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 15, 'Default Parameters', 'Kotlin functions can have default parameter values. Call with named arguments for clarity.', 'fun greet(name: String = "Guest") = "Hello, \$name"
println(greet())
println(greet("Bob"))', 'complete_code', 'Create a function with default parameter value of 1.', 'fun multiply(a: Int, b: Int = 1) = a * b
println(multiply(5))
println(multiply(5, 2))', 'fun multiply(a: Int, b: Int = 1) = a * b
println(multiply(5))
println(multiply(5, 2))', 'The answer is already in the template.', 50, 'easy', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 16, 'Named Arguments', 'Kotlin supports named arguments: function(param1 = value1, param2 = value2). Useful for functions with many params.', 'fun createUser(name: String, age: Int, city: String) = "\$name, \$age, \$city"
println(createUser(age = 25, city = "NY", name = "John"))', 'complete_code', 'Call the function using named arguments in any order.', 'fun show(title: String, year: Int) = "\$title (\$year)"
println(show(year = 2024, title = "Kotlin"))', 'fun show(title: String, year: Int) = "\$title (\$year)"
println(show(year = 2024, title = "Kotlin"))', 'The answer is already in the template.', 50, 'easy', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 17, 'Null Safety', 'Kotlin null safety: Type? means nullable. Use ?. for safe calls, ?: for Elvis operator, !! for non-null assertion.', 'val name: String? = null
println(name?.length)
println(name ?: "Default")
println(name!!.length)', 'complete_code', 'Use the safe call operator ?. to access length safely.', 'val text: String? = "Hello"
println(text?.length)', 'val text: String? = "Hello"
println(text?.length)', 'The answer is already in the template.', 50, 'easy', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 18, 'Elvis Operator', 'The Elvis operator ?: returns the left side if not null, otherwise the right side.', 'val name: String? = null
val result = name ?: "Unknown"
println(result)', 'complete_code', 'Use the Elvis operator to return ''Default'' if input is null.', 'val input: String? = null
val result = input ?: "Default"
println(result)', 'val input: String? = null
val result = input ?: "Default"
println(result)', 'The answer is already in the template.', 50, 'easy', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 19, 'Safe Casts', 'The as? operator safely casts to a type, returning null if the cast fails.', 'val obj: Any = "Hello"
val str: String? = obj as? String
println(str)', 'complete_code', 'Use as? to safely cast the value to String.', 'val value: Any = "Kotlin"
val text: String? = value as? String
println(text)', 'val value: Any = "Kotlin"
val text: String? = value as? String
println(text)', 'The answer is already in the template.', 50, 'easy', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 20, 'Smart Casts', 'Kotlin automatically casts after a type check with is. No explicit cast needed.', 'fun printLength(obj: Any) {
  if (obj is String) {
    println(obj.length)
  }
}', 'complete_code', 'Use the is check to smart-cast obj to String.', 'fun printLen(obj: Any) {
  if (obj is String) {
    println(obj.length)
  }
}
printLen("Hello")', 'fun printLen(obj: Any) {
  if (obj is String) {
    println(obj.length)
  }
}
printLen("Hello")', 'The answer is already in the template.', 50, 'easy', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 21, 'Classes', 'Kotlin classes use the class keyword. Primary constructor is in the class header.', 'class Person(val name: String, var age: Int)
val p = Person("John", 25)
println(p.name)', 'complete_code', 'Create a class Product with val name and var price.', 'class Product(val name: String, var price: Double)
val p = Product("Phone", 599.99)
println(p.name)', 'class Product(val name: String, var price: Double)
val p = Product("Phone", 599.99)
println(p.name)', 'The answer is already in the template.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 22, 'Class Body', 'Classes can have properties and methods in the body. Use init block for initialization logic.', 'class Person(val name: String) {
  var age = 0
  fun greet() = "Hello, \$name"
  init { println("Created") }
}', 'complete_code', 'Add a method greet() that returns ''Hi''.', 'class Greeter(val name: String) {
  fun greet() = "Hi, \$name"
}
val g = Greeter("Kotlin")
println(g.greet())', 'class Greeter(val name: String) {
  fun greet() = "Hi, \$name"
}
val g = Greeter("Kotlin")
println(g.greet())', 'The answer is already in the template.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 23, 'Inheritance', 'Kotlin classes are final by default. Use open keyword to allow inheritance. Use : for inheritance.', 'open class Animal(val name: String)
class Dog(name: String) : Animal(name)
val d = Dog("Rex")
println(d.name)', 'complete_code', 'Create a class Cat that extends Animal.', 'open class Animal(val name: String)
class Cat(name: String) : Animal(name)
val c = Cat("Kitty")
println(c.name)', 'open class Animal(val name: String)
class Cat(name: String) : Animal(name)
val c = Cat("Kitty")
println(c.name)', 'The answer is already in the template.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 24, 'Data Classes', 'data class automatically generates equals(), hashCode(), toString(), copy(), componentN().', 'data class User(val name: String, val age: Int)
val u = User("John", 25)
println(u)
println(u.copy(age = 30))', 'complete_code', 'Create a data class Book with val title and val author.', 'data class Book(val title: String, val author: String)
val b = Book("Kotlin", "John")
println(b)', 'data class Book(val title: String, val author: String)
val b = Book("Kotlin", "John")
println(b)', 'The answer is already in the template.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 25, 'Object Expressions', 'object keyword creates a singleton (object declaration) or anonymous class (object expression).', 'val comparator = object {
  fun compare(a: Int, b: Int) = if (a > b) a else b
}
println(comparator.compare(5, 3))', 'complete_code', 'Create an object expression with a method show() that returns ''Hi''.', 'val obj = object {
  fun show() = "Hi"
}
println(obj.show())', 'val obj = object {
  fun show() = "Hi"
}
println(obj.show())', 'The answer is already in the template.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 26, 'Companion Objects', 'companion object in a class creates static-like members. Accessible via ClassName.Companion or ClassName.', 'class MyClass {
  companion object {
    const val TAG = "MyClass"
  }
}
println(MyClass.TAG)', 'complete_code', 'Create a companion object with a constant NAME.', 'class Config {
  companion object {
    const val NAME = "App"
  }
}
println(Config.NAME)', 'class Config {
  companion object {
    const val NAME = "App"
  }
}
println(Config.NAME)', 'The answer is already in the template.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 27, 'Extension Functions', 'Extension functions add methods to existing classes: fun String.reverse(): String { return this.reversed() }.', 'fun String.exclaim() = this + "!"
println("Hello".exclaim())', 'complete_code', 'Create an extension function on String that returns the string in uppercase.', 'fun String.shout() = this.uppercase()
println("hello".shout())', 'fun String.shout() = this.uppercase()
println("hello".shout())', 'The answer is already in the template.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 28, 'Extension Properties', 'Extension properties add properties to existing classes. They cannot have backing fields.', 'val String.isLong: Boolean get() = this.length > 10
println("Hello".isLong)
println("Hello World!".isLong)', 'complete_code', 'Create an extension property on String that returns the last character.', 'val String.lastChar: Char get() = this[this.length - 1]
println("Kotlin".lastChar)', 'val String.lastChar: Char get() = this[this.length - 1]
println("Kotlin".lastChar)', 'The answer is already in the template.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 29, 'Lambda Functions', 'Lambda syntax: { params -> body }. It can be passed to functions. Use it for single parameter.', 'val square = { x: Int -> x * x }
println(square(5))
val sum = { a: Int, b: Int -> a + b }
println(sum(3, 4))', 'complete_code', 'Create a lambda that doubles a number.', 'val double = { x: Int -> x * 2 }
println(double(4))', 'val double = { x: Int -> x * 2 }
println(double(4))', 'The answer is already in the template.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 30, 'Higher-Order Functions', 'Higher-order functions take functions as parameters or return them. Use (ParamType) -> ReturnType for type.', 'fun operate(a: Int, b: Int, op: (Int, Int) -> Int): Int = op(a, b)
println(operate(5, 3, { x, y -> x + y }))', 'complete_code', 'Call operate with a lambda that multiplies the two numbers.', 'fun operate(a: Int, b: Int, op: (Int, Int) -> Int) = op(a, b)
println(operate(5, 3, { x, y -> x * y }))', 'fun operate(a: Int, b: Int, op: (Int, Int) -> Int) = op(a, b)
println(operate(5, 3, { x, y -> x * y }))', 'The answer is already in the template.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 31, 'Trailing Lambda', 'If the last parameter is a lambda, you can move it outside the parentheses: func { }.', 'fun repeat(times: Int, action: (Int) -> Unit) {
  for (i in 0 until times) action(i)
}
repeat(3) { println(it) }', 'complete_code', 'Call the function with a trailing lambda that prints the value.', 'fun process(n: Int, action: (Int) -> Unit) {
  for (i in 0 until n) action(i)
}
process(3) { println(it) }', 'fun process(n: Int, action: (Int) -> Unit) {
  for (i in 0 until n) action(i)
}
process(3) { println(it) }', 'The answer is already in the template.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 32, 'Filter and Map', 'filter() keeps elements matching a predicate. map() transforms each element. Both return new collections.', 'val nums = listOf(1, 2, 3, 4, 5)
val evens = nums.filter { it % 2 == 0 }
val doubled = nums.map { it * 2 }
println(evens)
println(doubled)', 'complete_code', 'Use filter to keep only numbers greater than 2.', 'val nums = listOf(1, 2, 3, 4)
val big = nums.filter { it > 2 }
println(big)', 'val nums = listOf(1, 2, 3, 4)
val big = nums.filter { it > 2 }
println(big)', 'The answer is already in the template.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 33, 'forEach', 'forEach executes a lambda for each element. It''s a cleaner alternative to for loops.', 'val items = listOf("a", "b", "c")
items.forEach { println(it) }', 'complete_code', 'Use forEach to print each element.', 'val nums = listOf(1, 2, 3)
nums.forEach { println(it) }', 'val nums = listOf(1, 2, 3)
nums.forEach { println(it) }', 'The answer is already in the template.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 34, 'Sequences', 'Sequences (asSequence()) are lazy. They process elements one by one, useful for large collections.', 'val result = (1..10).asSequence()
  .filter { it % 2 == 0 }
  .map { it * it }
  .toList()
println(result)', 'complete_code', 'Create a sequence from 1..5 and convert to list.', 'val seq = (1..5).asSequence().toList()
println(seq)', 'val seq = (1..5).asSequence().toList()
println(seq)', 'The answer is already in the template.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 35, 'Sealed Classes', 'sealed class restricts class hierarchies. All subclasses must be in the same file.', 'sealed class Result
data class Success(val data: String) : Result()
data class Error(val msg: String) : Result()', 'true_false', 'Sealed classes can be subclassed from any file.', '', 'false', 'Sealed class subclasses must be in the same file.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 36, 'Enum Classes', 'enum classes define a set of constants. They can have properties and methods.', 'enum class Color(val hex: String) {
  RED("#FF0000"),
  GREEN("#00FF00"),
  BLUE("#0000FF")
}
println(Color.RED.hex)', 'complete_code', 'Create an enum Direction with NORTH, SOUTH, EAST, WEST.', 'enum class Direction {
  NORTH, SOUTH, EAST, WEST
}
println(Direction.NORTH)', 'enum class Direction {
  NORTH, SOUTH, EAST, WEST
}
println(Direction.NORTH)', 'The answer is already in the template.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 37, 'Interfaces', 'Kotlin interfaces can have abstract methods and concrete implementations. Use : to implement.', 'interface Drawable {
  fun draw()
  fun info() = "Drawable"
}
class Circle : Drawable {
  override fun draw() = println("Circle")
}', 'complete_code', 'Create a class Square that implements Drawable.', 'interface Drawable {
  fun draw()
}
class Square : Drawable {
  override fun draw() = println("Square")
}
Square().draw()', 'interface Drawable {
  fun draw()
}
class Square : Drawable {
  override fun draw() = println("Square")
}
Square().draw()', 'The answer is already in the template.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 38, 'Abstract Classes', 'abstract classes cannot be instantiated. Abstract methods must be overridden in subclasses.', 'abstract class Animal {
  abstract fun speak()
}
class Dog : Animal() {
  override fun speak() = println("Woof")
}', 'complete_code', 'Create an abstract class Shape with abstract method area().', 'abstract class Shape {
  abstract fun area(): Double
}
class Circle(val r: Double) : Shape() {
  override fun area() = Math.PI * r * r
}', 'abstract class Shape {
  abstract fun area(): Double
}
class Circle(val r: Double) : Shape() {
  override fun area() = Math.PI * r * r
}', 'The answer is already in the template.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 39, 'Generics', 'Generic types: class Box<T>(val value: T). Functions can also be generic: fun <T> identity(x: T): T = x.', 'class Box<T>(val value: T)
val box = Box(42)
println(box.value)', 'complete_code', 'Create a generic class Holder with a single property.', 'class Holder<T>(val item: T)
val h = Holder("Kotlin")
println(h.item)', 'class Holder<T>(val item: T)
val h = Holder("Kotlin")
println(h.item)', 'The answer is already in the template.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 40, 'Generics Constraints', 'Constrain type parameters with where: fun <T : Comparable<T>> max(a: T, b: T): T.', 'fun <T : Comparable<T>> maxOf(a: T, b: T) = if (a > b) a else b
println(maxOf(5, 3))
println(maxOf("A", "B"))', 'complete_code', 'Create a generic function with a Comparable constraint.', 'fun <T : Comparable<T>> bigger(a: T, b: T) = if (a > b) a else b
println(bigger(10, 20))', 'fun <T : Comparable<T>> bigger(a: T, b: T) = if (a > b) a else b
println(bigger(10, 20))', 'The answer is already in the template.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 41, 'Kotlin Advanced 1', 'This level covers Infix Functions in Kotlin.', '// Example of Infix Functions
fun main() { println("Kotlin") }', 'predict_output', 'Answer the question about Infix Functions.', '', 'Kotlin', 'Review the documentation for Infix Functions.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 42, 'Kotlin Advanced 2', 'This level covers Operator Overloading in Kotlin.', '// Example of Operator Overloading
fun main() { println("Kotlin") }', 'true_false', 'Answer the question about Operator Overloading.', '', 'true', 'Review the documentation for Operator Overloading.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 43, 'Kotlin Advanced 3', 'This level covers Destructuring Declarations in Kotlin.', '// Example of Destructuring Declarations
fun main() { println("Kotlin") }', 'predict_output', 'Answer the question about Destructuring Declarations.', '', 'Kotlin', 'Review the documentation for Destructuring Declarations.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 44, 'Kotlin Advanced 4', 'This level covers Copy Function in Kotlin.', '// Example of Copy Function
fun main() { println("Kotlin") }', 'true_false', 'Answer the question about Copy Function.', '', 'true', 'Review the documentation for Copy Function.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 45, 'Kotlin Advanced 5', 'This level covers Component Functions in Kotlin.', '// Example of Component Functions
fun main() { println("Kotlin") }', 'predict_output', 'Answer the question about Component Functions.', '', 'Kotlin', 'Review the documentation for Component Functions.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 46, 'Kotlin Advanced 6', 'This level covers Delegated Properties in Kotlin.', '// Example of Delegated Properties
fun main() { println("Kotlin") }', 'true_false', 'Answer the question about Delegated Properties.', '', 'true', 'Review the documentation for Delegated Properties.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 47, 'Kotlin Advanced 7', 'This level covers Lazy Property in Kotlin.', '// Example of Lazy Property
fun main() { println("Kotlin") }', 'predict_output', 'Answer the question about Lazy Property.', '', 'Kotlin', 'Review the documentation for Lazy Property.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 48, 'Kotlin Advanced 8', 'This level covers Observable Property in Kotlin.', '// Example of Observable Property
fun main() { println("Kotlin") }', 'true_false', 'Answer the question about Observable Property.', '', 'true', 'Review the documentation for Observable Property.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 49, 'Kotlin Advanced 9', 'This level covers NotNull Property in Kotlin.', '// Example of NotNull Property
fun main() { println("Kotlin") }', 'predict_output', 'Answer the question about NotNull Property.', '', 'Kotlin', 'Review the documentation for NotNull Property.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 50, 'Kotlin Advanced 10', 'This level covers Property Delegates in Kotlin.', '// Example of Property Delegates
fun main() { println("Kotlin") }', 'true_false', 'Answer the question about Property Delegates.', '', 'true', 'Review the documentation for Property Delegates.', 75, 'medium', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 51, 'Kotlin Advanced 11', 'This level covers Type Aliases in Kotlin.', '// Example of Type Aliases
fun main() { println("Kotlin") }', 'predict_output', 'Answer the question about Type Aliases.', '', 'Kotlin', 'Review the documentation for Type Aliases.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 52, 'Kotlin Advanced 12', 'This level covers Inline Functions in Kotlin.', '// Example of Inline Functions
fun main() { println("Kotlin") }', 'true_false', 'Answer the question about Inline Functions.', '', 'true', 'Review the documentation for Inline Functions.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 53, 'Kotlin Advanced 13', 'This level covers Noinline in Kotlin.', '// Example of Noinline
fun main() { println("Kotlin") }', 'predict_output', 'Answer the question about Noinline.', '', 'Kotlin', 'Review the documentation for Noinline.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 54, 'Kotlin Advanced 14', 'This level covers Crossinline in Kotlin.', '// Example of Crossinline
fun main() { println("Kotlin") }', 'true_false', 'Answer the question about Crossinline.', '', 'true', 'Review the documentation for Crossinline.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 55, 'Kotlin Advanced 15', 'This level covers Reified Types in Kotlin.', '// Example of Reified Types
fun main() { println("Kotlin") }', 'predict_output', 'Answer the question about Reified Types.', '', 'Kotlin', 'Review the documentation for Reified Types.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 56, 'Kotlin Advanced 16', 'This level covers inline Classes in Kotlin.', '// Example of inline Classes
fun main() { println("Kotlin") }', 'true_false', 'Answer the question about inline Classes.', '', 'true', 'Review the documentation for inline Classes.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 57, 'Kotlin Advanced 17', 'This level covers Value Classes in Kotlin.', '// Example of Value Classes
fun main() { println("Kotlin") }', 'predict_output', 'Answer the question about Value Classes.', '', 'Kotlin', 'Review the documentation for Value Classes.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 58, 'Kotlin Advanced 18', 'This level covers Sealed Interfaces in Kotlin.', '// Example of Sealed Interfaces
fun main() { println("Kotlin") }', 'true_false', 'Answer the question about Sealed Interfaces.', '', 'true', 'Review the documentation for Sealed Interfaces.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 59, 'Kotlin Advanced 19', 'This level covers Covariance in Kotlin.', '// Example of Covariance
fun main() { println("Kotlin") }', 'predict_output', 'Answer the question about Covariance.', '', 'Kotlin', 'Review the documentation for Covariance.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 60, 'Kotlin Advanced 20', 'This level covers Contravariance in Kotlin.', '// Example of Contravariance
fun main() { println("Kotlin") }', 'true_false', 'Answer the question about Contravariance.', '', 'true', 'Review the documentation for Contravariance.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 61, 'Kotlin Coroutines 1', 'This level covers Coroutines in Kotlin coroutines.', '// Example of Coroutines
import kotlinx.coroutines.*', 'complete_code', 'Answer the question about Coroutines.', '// Coroutines
import kotlinx.coroutines.*', '// Coroutines
import kotlinx.coroutines.*', 'Review the documentation for Coroutines.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 62, 'Kotlin Coroutines 2', 'This level covers Suspend Functions in Kotlin coroutines.', '// Example of Suspend Functions
import kotlinx.coroutines.*', 'true_false', 'Answer the question about Suspend Functions.', '// Suspend Functions
import kotlinx.coroutines.*', '// Suspend Functions
import kotlinx.coroutines.*', 'Review the documentation for Suspend Functions.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 63, 'Kotlin Coroutines 3', 'This level covers Async Await in Kotlin coroutines.', '// Example of Async Await
import kotlinx.coroutines.*', 'complete_code', 'Answer the question about Async Await.', '// Async Await
import kotlinx.coroutines.*', '// Async Await
import kotlinx.coroutines.*', 'Review the documentation for Async Await.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 64, 'Kotlin Coroutines 4', 'This level covers Launch Builder in Kotlin coroutines.', '// Example of Launch Builder
import kotlinx.coroutines.*', 'true_false', 'Answer the question about Launch Builder.', '// Launch Builder
import kotlinx.coroutines.*', '// Launch Builder
import kotlinx.coroutines.*', 'Review the documentation for Launch Builder.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 65, 'Kotlin Coroutines 5', 'This level covers Join in Kotlin coroutines.', '// Example of Join
import kotlinx.coroutines.*', 'complete_code', 'Answer the question about Join.', '// Join
import kotlinx.coroutines.*', '// Join
import kotlinx.coroutines.*', 'Review the documentation for Join.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 66, 'Kotlin Coroutines 6', 'This level covers Cancel in Kotlin coroutines.', '// Example of Cancel
import kotlinx.coroutines.*', 'true_false', 'Answer the question about Cancel.', '// Cancel
import kotlinx.coroutines.*', '// Cancel
import kotlinx.coroutines.*', 'Review the documentation for Cancel.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 67, 'Kotlin Coroutines 7', 'This level covers Delay in Kotlin coroutines.', '// Example of Delay
import kotlinx.coroutines.*', 'complete_code', 'Answer the question about Delay.', '// Delay
import kotlinx.coroutines.*', '// Delay
import kotlinx.coroutines.*', 'Review the documentation for Delay.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 68, 'Kotlin Coroutines 8', 'This level covers WithContext in Kotlin coroutines.', '// Example of WithContext
import kotlinx.coroutines.*', 'true_false', 'Answer the question about WithContext.', '// WithContext
import kotlinx.coroutines.*', '// WithContext
import kotlinx.coroutines.*', 'Review the documentation for WithContext.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 69, 'Kotlin Coroutines 9', 'This level covers Dispatchers in Kotlin coroutines.', '// Example of Dispatchers
import kotlinx.coroutines.*', 'complete_code', 'Answer the question about Dispatchers.', '// Dispatchers
import kotlinx.coroutines.*', '// Dispatchers
import kotlinx.coroutines.*', 'Review the documentation for Dispatchers.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 70, 'Kotlin Coroutines 10', 'This level covers Coroutine Scope in Kotlin coroutines.', '// Example of Coroutine Scope
import kotlinx.coroutines.*', 'true_false', 'Answer the question about Coroutine Scope.', '// Coroutine Scope
import kotlinx.coroutines.*', '// Coroutine Scope
import kotlinx.coroutines.*', 'Review the documentation for Coroutine Scope.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 71, 'Kotlin Coroutines 11', 'This level covers Coroutine Context in Kotlin coroutines.', '// Example of Coroutine Context
import kotlinx.coroutines.*', 'complete_code', 'Answer the question about Coroutine Context.', '// Coroutine Context
import kotlinx.coroutines.*', '// Coroutine Context
import kotlinx.coroutines.*', 'Review the documentation for Coroutine Context.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 72, 'Kotlin Coroutines 12', 'This level covers Structured Concurrency in Kotlin coroutines.', '// Example of Structured Concurrency
import kotlinx.coroutines.*', 'true_false', 'Answer the question about Structured Concurrency.', '// Structured Concurrency
import kotlinx.coroutines.*', '// Structured Concurrency
import kotlinx.coroutines.*', 'Review the documentation for Structured Concurrency.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 73, 'Kotlin Coroutines 13', 'This level covers Job in Kotlin coroutines.', '// Example of Job
import kotlinx.coroutines.*', 'complete_code', 'Answer the question about Job.', '// Job
import kotlinx.coroutines.*', '// Job
import kotlinx.coroutines.*', 'Review the documentation for Job.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 74, 'Kotlin Coroutines 14', 'This level covers Deferred in Kotlin coroutines.', '// Example of Deferred
import kotlinx.coroutines.*', 'true_false', 'Answer the question about Deferred.', '// Deferred
import kotlinx.coroutines.*', '// Deferred
import kotlinx.coroutines.*', 'Review the documentation for Deferred.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 75, 'Kotlin Coroutines 15', 'This level covers Supervisor Job in Kotlin coroutines.', '// Example of Supervisor Job
import kotlinx.coroutines.*', 'complete_code', 'Answer the question about Supervisor Job.', '// Supervisor Job
import kotlinx.coroutines.*', '// Supervisor Job
import kotlinx.coroutines.*', 'Review the documentation for Supervisor Job.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 76, 'Kotlin Coroutines 16', 'This level covers Exception Handling in Kotlin coroutines.', '// Example of Exception Handling
import kotlinx.coroutines.*', 'true_false', 'Answer the question about Exception Handling.', '// Exception Handling
import kotlinx.coroutines.*', '// Exception Handling
import kotlinx.coroutines.*', 'Review the documentation for Exception Handling.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 77, 'Kotlin Coroutines 17', 'This level covers Coroutine Exception Handler in Kotlin coroutines.', '// Example of Coroutine Exception Handler
import kotlinx.coroutines.*', 'complete_code', 'Answer the question about Coroutine Exception Handler.', '// Coroutine Exception Handler
import kotlinx.coroutines.*', '// Coroutine Exception Handler
import kotlinx.coroutines.*', 'Review the documentation for Coroutine Exception Handler.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 78, 'Kotlin Coroutines 18', 'This level covers Flow Basics in Kotlin coroutines.', '// Example of Flow Basics
import kotlinx.coroutines.*', 'true_false', 'Answer the question about Flow Basics.', '// Flow Basics
import kotlinx.coroutines.*', '// Flow Basics
import kotlinx.coroutines.*', 'Review the documentation for Flow Basics.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 79, 'Kotlin Coroutines 19', 'This level covers Flow Collect in Kotlin coroutines.', '// Example of Flow Collect
import kotlinx.coroutines.*', 'complete_code', 'Answer the question about Flow Collect.', '// Flow Collect
import kotlinx.coroutines.*', '// Flow Collect
import kotlinx.coroutines.*', 'Review the documentation for Flow Collect.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 80, 'Kotlin Coroutines 20', 'This level covers Flow Operators in Kotlin coroutines.', '// Example of Flow Operators
import kotlinx.coroutines.*', 'true_false', 'Answer the question about Flow Operators.', '// Flow Operators
import kotlinx.coroutines.*', '// Flow Operators
import kotlinx.coroutines.*', 'Review the documentation for Flow Operators.', 100, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 81, 'Kotlin Mastery 1', 'Mastering Kotlin DSL distinguishes expert Kotlin developers.', '// Advanced: Kotlin DSL
fun main() { }', 'complete_code', 'Answer the question about Kotlin DSL.', '// Kotlin DSL
fun main() { }', '// Kotlin DSL
fun main() { }', 'Review the documentation for Kotlin DSL.', 150, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 82, 'Kotlin Mastery 2', 'Mastering Type-Safe Builders distinguishes expert Kotlin developers.', '// Advanced: Type-Safe Builders
fun main() { }', 'true_false', 'Answer the question about Type-Safe Builders.', '// Type-Safe Builders
fun main() { }', '// Type-Safe Builders
fun main() { }', 'Review the documentation for Type-Safe Builders.', 150, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 83, 'Kotlin Mastery 3', 'Mastering Html DSL distinguishes expert Kotlin developers.', '// Advanced: Html DSL
fun main() { }', 'complete_code', 'Answer the question about Html DSL.', '// Html DSL
fun main() { }', '// Html DSL
fun main() { }', 'Review the documentation for Html DSL.', 150, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 84, 'Kotlin Mastery 4', 'Mastering Anko Layouts distinguishes expert Kotlin developers.', '// Advanced: Anko Layouts
fun main() { }', 'true_false', 'Answer the question about Anko Layouts.', '// Anko Layouts
fun main() { }', '// Anko Layouts
fun main() { }', 'Review the documentation for Anko Layouts.', 150, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 85, 'Kotlin Mastery 5', 'Mastering Ktor Client distinguishes expert Kotlin developers.', '// Advanced: Ktor Client
fun main() { }', 'complete_code', 'Answer the question about Ktor Client.', '// Ktor Client
fun main() { }', '// Ktor Client
fun main() { }', 'Review the documentation for Ktor Client.', 150, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 86, 'Kotlin Mastery 6', 'Mastering Ktor Server distinguishes expert Kotlin developers.', '// Advanced: Ktor Server
fun main() { }', 'true_false', 'Answer the question about Ktor Server.', '// Ktor Server
fun main() { }', '// Ktor Server
fun main() { }', 'Review the documentation for Ktor Server.', 150, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 87, 'Kotlin Mastery 7', 'Mastering Exposed ORM distinguishes expert Kotlin developers.', '// Advanced: Exposed ORM
fun main() { }', 'complete_code', 'Answer the question about Exposed ORM.', '// Exposed ORM
fun main() { }', '// Exposed ORM
fun main() { }', 'Review the documentation for Exposed ORM.', 150, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 88, 'Kotlin Mastery 8', 'Mastering Kotlin Serialization distinguishes expert Kotlin developers.', '// Advanced: Kotlin Serialization
fun main() { }', 'true_false', 'Answer the question about Kotlin Serialization.', '// Kotlin Serialization
fun main() { }', '// Kotlin Serialization
fun main() { }', 'Review the documentation for Kotlin Serialization.', 150, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 89, 'Kotlin Mastery 9', 'Mastering kotlinx.serialization distinguishes expert Kotlin developers.', '// Advanced: kotlinx.serialization
fun main() { }', 'complete_code', 'Answer the question about kotlinx.serialization.', '// kotlinx.serialization
fun main() { }', '// kotlinx.serialization
fun main() { }', 'Review the documentation for kotlinx.serialization.', 150, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 90, 'Kotlin Mastery 10', 'Mastering Multiplatform distinguishes expert Kotlin developers.', '// Advanced: Multiplatform
fun main() { }', 'true_false', 'Answer the question about Multiplatform.', '// Multiplatform
fun main() { }', '// Multiplatform
fun main() { }', 'Review the documentation for Multiplatform.', 150, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 91, 'Kotlin Mastery 11', 'Mastering KMM distinguishes expert Kotlin developers.', '// Advanced: KMM
fun main() { }', 'complete_code', 'Answer the question about KMM.', '// KMM
fun main() { }', '// KMM
fun main() { }', 'Review the documentation for KMM.', 150, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 92, 'Kotlin Mastery 12', 'Mastering Compose Basics distinguishes expert Kotlin developers.', '// Advanced: Compose Basics
fun main() { }', 'true_false', 'Answer the question about Compose Basics.', '// Compose Basics
fun main() { }', '// Compose Basics
fun main() { }', 'Review the documentation for Compose Basics.', 150, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 93, 'Kotlin Mastery 13', 'Mastering Compose Layout distinguishes expert Kotlin developers.', '// Advanced: Compose Layout
fun main() { }', 'complete_code', 'Answer the question about Compose Layout.', '// Compose Layout
fun main() { }', '// Compose Layout
fun main() { }', 'Review the documentation for Compose Layout.', 150, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 94, 'Kotlin Mastery 14', 'Mastering Compose State distinguishes expert Kotlin developers.', '// Advanced: Compose State
fun main() { }', 'true_false', 'Answer the question about Compose State.', '// Compose State
fun main() { }', '// Compose State
fun main() { }', 'Review the documentation for Compose State.', 150, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 95, 'Kotlin Mastery 15', 'Mastering Compose Effects distinguishes expert Kotlin developers.', '// Advanced: Compose Effects
fun main() { }', 'complete_code', 'Answer the question about Compose Effects.', '// Compose Effects
fun main() { }', '// Compose Effects
fun main() { }', 'Review the documentation for Compose Effects.', 150, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 96, 'Kotlin Mastery 16', 'Mastering Navigation Compose distinguishes expert Kotlin developers.', '// Advanced: Navigation Compose
fun main() { }', 'true_false', 'Answer the question about Navigation Compose.', '// Navigation Compose
fun main() { }', '// Navigation Compose
fun main() { }', 'Review the documentation for Navigation Compose.', 150, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 97, 'Kotlin Mastery 17', 'Mastering ViewModel distinguishes expert Kotlin developers.', '// Advanced: ViewModel
fun main() { }', 'complete_code', 'Answer the question about ViewModel.', '// ViewModel
fun main() { }', '// ViewModel
fun main() { }', 'Review the documentation for ViewModel.', 150, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 98, 'Kotlin Mastery 18', 'Mastering LiveData distinguishes expert Kotlin developers.', '// Advanced: LiveData
fun main() { }', 'true_false', 'Answer the question about LiveData.', '// LiveData
fun main() { }', '// LiveData
fun main() { }', 'Review the documentation for LiveData.', 150, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 99, 'Kotlin Mastery 19', 'Mastering Room Database distinguishes expert Kotlin developers.', '// Advanced: Room Database
fun main() { }', 'complete_code', 'Answer the question about Room Database.', '// Room Database
fun main() { }', '// Room Database
fun main() { }', 'Review the documentation for Room Database.', 150, 'hard', 1);
INSERT OR REPLACE INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('kotlin', 100, 'Kotlin Mastery 20', 'Mastering Koin DI distinguishes expert Kotlin developers.', '// Advanced: Koin DI
fun main() { }', 'true_false', 'Answer the question about Koin DI.', '// Koin DI
fun main() { }', '// Koin DI
fun main() { }', 'Review the documentation for Koin DI.', 150, 'hard', 1);