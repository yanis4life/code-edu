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
        theory = "Kotlin is a modern JVM language. The fun keyword declares functions. println() prints to console."
        code = "fun main() {\n  println(\"Hello, World!\")\n}"
        challenge_type = "complete_code"
        challenge_desc = "Complete the main function to print 'Hello, Kotlin!'."
        template = "fun main() {\n  println(\"Hello, Kotlin!\")\n}"
        answer = "fun main() {\n  println(\"Hello, Kotlin!\")\n}"
        hint = "The answer is already in the template."
    elif level == 2:
        title = "Variables"
        theory = "val declares an immutable (read-only) variable. var declares a mutable variable. Type inference is automatic."
        code = "val name = \"John\"\nvar age = 25\nprintln(name)\nprintln(age)"
        challenge_type = "complete_code"
        challenge_desc = "Declare a val named 'city' with value 'Paris' and print it."
        template = "val city = \"Paris\"\nprintln(city)"
        answer = "val city = \"Paris\"\nprintln(city)"
        hint = "The answer is already in the template."
    elif level == 3:
        title = "Data Types"
        theory = "Kotlin types: Int, Double, String, Boolean, Char, Long, Float, Short, Byte. Use : Type for explicit typing."
        code = "val age: Int = 25\nval price: Double = 9.99\nval name: String = \"John\"\nval isActive: Boolean = true"
        challenge_type = "complete_code"
        challenge_desc = "Declare a String variable named 'message' with value 'Hello'."
        template = "val message: String = \"Hello\"\nprintln(message)"
        answer = "val message: String = \"Hello\"\nprintln(message)"
        hint = "The answer is already in the template."
    elif level == 4:
        title = "String Templates"
        theory = "Kotlin supports string templates with \$. Use \${expression} for complex expressions."
        code = "val name = \"John\"\nprintln(\"Hello, \$name!\")\nprintln(\"Sum: \${5 + 3}\")"
        challenge_type = "complete_code"
        challenge_desc = "Use a string template to print 'Hello, Kotlin!'."
        template = "val lang = \"Kotlin\"\nprintln(\"Hello, \$lang!\")"
        answer = "val lang = \"Kotlin\"\nprintln(\"Hello, \$lang!\")"
        hint = "The answer is already in the template."
    elif level == 5:
        title = "If Statements"
        theory = "Kotlin if can be used as an expression (returns a value). No ternary operator needed."
        code = "val age = 18\nval status = if (age >= 18) \"Adult\" else \"Minor\"\nprintln(status)"
        challenge_type = "complete_code"
        challenge_desc = "Use if as an expression to set result to 'Positive' if num > 0."
        template = "val num = 5\nval result = if (num > 0) \"Positive\" else \"Not positive\"\nprintln(result)"
        answer = "val num = 5\nval result = if (num > 0) \"Positive\" else \"Not positive\"\nprintln(result)"
        hint = "The answer is already in the template."
    elif level == 6:
        title = "When Expression"
        theory = "Kotlin when replaces switch. It's an expression that returns a value. No break needed."
        code = "val day = 3\nval name = when (day) {\n  1 -> \"Monday\"\n  2 -> \"Tuesday\"\n  else -> \"Other\"\n}\nprintln(name)"
        challenge_type = "complete_code"
        challenge_desc = "Use when to return 'A' for grade 'A', 'B' for 'B', else 'Fail'."
        template = "val grade = 'A'\nval result = when (grade) {\n  'A' -> \"A\"\n  'B' -> \"B\"\n  else -> \"Fail\"\n}\nprintln(result)"
        answer = "val grade = 'A'\nval result = when (grade) {\n  'A' -> \"A\"\n  'B' -> \"B\"\n  else -> \"Fail\"\n}\nprintln(result)"
        hint = "The answer is already in the template."
    elif level == 7:
        title = "For Loops"
        theory = "Kotlin for loops iterate over ranges: for (i in 1..5) { }. .. is inclusive, until is exclusive."
        code = "for (i in 1..5) {\n  println(i)\n}"
        challenge_type = "complete_code"
        challenge_desc = "Write a for loop that prints numbers 1 to 5."
        template = "for (i in 1..5) {\n  println(i)\n}"
        answer = "for (i in 1..5) {\n  println(i)\n}"
        hint = "The answer is already in the template."
    elif level == 8:
        title = "While Loops"
        theory = "Kotlin while and do-while loops work like Java. Update the condition variable inside the loop."
        code = "var i = 0\nwhile (i < 3) {\n  println(i)\n  i++\n}"
        challenge_type = "complete_code"
        challenge_desc = "Complete the while loop to print 0, 1, 2."
        template = "var i = 0\nwhile (i < 3) {\n  println(i)\n  i++\n}"
        answer = "var i = 0\nwhile (i < 3) {\n  println(i)\n  i++\n}"
        hint = "The answer is already in the template."
    elif level == 9:
        title = "Ranges"
        theory = "Kotlin ranges: 1..10 (inclusive), 1 until 10 (exclusive), 10 downTo 1 (descending), step 2."
        code = "for (i in 1..10 step 2) {\n  println(i)\n}\nfor (i in 10 downTo 1) {\n  println(i)\n}"
        challenge_type = "complete_code"
        challenge_desc = "Use a range with step 2 to print odd numbers 1, 3, 5, 7, 9."
        template = "for (i in 1..9 step 2) {\n  println(i)\n}"
        answer = "for (i in 1..9 step 2) {\n  println(i)\n}"
        hint = "The answer is already in the template."
    elif level == 10:
        title = "Lists"
        theory = "listOf() creates an immutable list. mutableListOf() creates a mutable list. Access with [index]."
        code = "val fruits = listOf(\"apple\", \"banana\", \"cherry\")\nprintln(fruits[0])\nprintln(fruits.size)"
        challenge_type = "complete_code"
        challenge_desc = "Create a list of colors: 'red', 'green', 'blue' and print the first."
        template = "val colors = listOf(\"red\", \"green\", \"blue\")\nprintln(colors[0])"
        answer = "val colors = listOf(\"red\", \"green\", \"blue\")\nprintln(colors[0])"
        hint = "The answer is already in the template."
    elif level == 11:
        title = "Mutable Lists"
        theory = "mutableListOf() creates a changeable list. Methods: add(), remove(), clear(), contains()."
        code = "val items = mutableListOf(1, 2, 3)\nitems.add(4)\nitems.remove(1)\nprintln(items)"
        challenge_type = "complete_code"
        challenge_desc = "Create a mutable list and add 'd' to it."
        template = "val letters = mutableListOf(\"a\", \"b\", \"c\")\nletters.add(\"d\")\nprintln(letters)"
        answer = "val letters = mutableListOf(\"a\", \"b\", \"c\")\nletters.add(\"d\")\nprintln(letters)"
        hint = "The answer is already in the template."
    elif level == 12:
        title = "Maps"
        theory = "mapOf() creates an immutable map. mutableMapOf() for mutable. Access with [key]."
        code = "val map = mapOf(\"name\" to \"John\", \"age\" to 30)\nprintln(map[\"name\"])"
        challenge_type = "complete_code"
        challenge_desc = "Create a map with key 'language' to 'Kotlin' and print it."
        template = "val map = mapOf(\"language\" to \"Kotlin\")\nprintln(map[\"language\"])"
        answer = "val map = mapOf(\"language\" to \"Kotlin\")\nprintln(map[\"language\"])"
        hint = "The answer is already in the template."
    elif level == 13:
        title = "Functions"
        theory = "Kotlin functions: fun name(params): ReturnType { return value }. Single-expression functions can omit braces."
        code = "fun add(a: Int, b: Int): Int {\n  return a + b\n}\nprintln(add(3, 4))"
        challenge_type = "complete_code"
        challenge_desc = "Write a function multiply that takes two Ints and returns their product."
        template = "fun multiply(a: Int, b: Int): Int {\n  return a * b\n}\nprintln(multiply(3, 4))"
        answer = "fun multiply(a: Int, b: Int): Int {\n  return a * b\n}\nprintln(multiply(3, 4))"
        hint = "The answer is already in the template."
    elif level == 14:
        title = "Single-Expression Functions"
        theory = "Single-expression functions use = instead of braces: fun add(a: Int, b: Int) = a + b. Return type is inferred."
        code = "fun square(x: Int) = x * x\nprintln(square(5))"
        challenge_type = "complete_code"
        challenge_desc = "Write a single-expression function double that returns x * 2."
        template = "fun double(x: Int) = x * 2\nprintln(double(4))"
        answer = "fun double(x: Int) = x * 2\nprintln(double(4))"
        hint = "The answer is already in the template."
    elif level == 15:
        title = "Default Parameters"
        theory = "Kotlin functions can have default parameter values. Call with named arguments for clarity."
        code = "fun greet(name: String = \"Guest\") = \"Hello, \$name\"\nprintln(greet())\nprintln(greet(\"Bob\"))"
        challenge_type = "complete_code"
        challenge_desc = "Create a function with default parameter value of 1."
        template = "fun multiply(a: Int, b: Int = 1) = a * b\nprintln(multiply(5))\nprintln(multiply(5, 2))"
        answer = "fun multiply(a: Int, b: Int = 1) = a * b\nprintln(multiply(5))\nprintln(multiply(5, 2))"
        hint = "The answer is already in the template."
    elif level == 16:
        title = "Named Arguments"
        theory = "Kotlin supports named arguments: function(param1 = value1, param2 = value2). Useful for functions with many params."
        code = "fun createUser(name: String, age: Int, city: String) = \"\$name, \$age, \$city\"\nprintln(createUser(age = 25, city = \"NY\", name = \"John\"))"
        challenge_type = "complete_code"
        challenge_desc = "Call the function using named arguments in any order."
        template = "fun show(title: String, year: Int) = \"\$title (\$year)\"\nprintln(show(year = 2024, title = \"Kotlin\"))"
        answer = "fun show(title: String, year: Int) = \"\$title (\$year)\"\nprintln(show(year = 2024, title = \"Kotlin\"))"
        hint = "The answer is already in the template."
    elif level == 17:
        title = "Null Safety"
        theory = "Kotlin null safety: Type? means nullable. Use ?. for safe calls, ?: for Elvis operator, !! for non-null assertion."
        code = "val name: String? = null\nprintln(name?.length)\nprintln(name ?: \"Default\")\nprintln(name!!.length)"
        challenge_type = "complete_code"
        challenge_desc = "Use the safe call operator ?. to access length safely."
        template = "val text: String? = \"Hello\"\nprintln(text?.length)"
        answer = "val text: String? = \"Hello\"\nprintln(text?.length)"
        hint = "The answer is already in the template."
    elif level == 18:
        title = "Elvis Operator"
        theory = "The Elvis operator ?: returns the left side if not null, otherwise the right side."
        code = "val name: String? = null\nval result = name ?: \"Unknown\"\nprintln(result)"
        challenge_type = "complete_code"
        challenge_desc = "Use the Elvis operator to return 'Default' if input is null."
        template = "val input: String? = null\nval result = input ?: \"Default\"\nprintln(result)"
        answer = "val input: String? = null\nval result = input ?: \"Default\"\nprintln(result)"
        hint = "The answer is already in the template."
    elif level == 19:
        title = "Safe Casts"
        theory = "The as? operator safely casts to a type, returning null if the cast fails."
        code = "val obj: Any = \"Hello\"\nval str: String? = obj as? String\nprintln(str)"
        challenge_type = "complete_code"
        challenge_desc = "Use as? to safely cast the value to String."
        template = "val value: Any = \"Kotlin\"\nval text: String? = value as? String\nprintln(text)"
        answer = "val value: Any = \"Kotlin\"\nval text: String? = value as? String\nprintln(text)"
        hint = "The answer is already in the template."
    elif level == 20:
        title = "Smart Casts"
        theory = "Kotlin automatically casts after a type check with is. No explicit cast needed."
        code = "fun printLength(obj: Any) {\n  if (obj is String) {\n    println(obj.length)\n  }\n}"
        challenge_type = "complete_code"
        challenge_desc = "Use the is check to smart-cast obj to String."
        template = "fun printLen(obj: Any) {\n  if (obj is String) {\n    println(obj.length)\n  }\n}\nprintLen(\"Hello\")"
        answer = "fun printLen(obj: Any) {\n  if (obj is String) {\n    println(obj.length)\n  }\n}\nprintLen(\"Hello\")"
        hint = "The answer is already in the template."
    elif level == 21:
        title = "Classes"
        theory = "Kotlin classes use the class keyword. Primary constructor is in the class header."
        code = "class Person(val name: String, var age: Int)\nval p = Person(\"John\", 25)\nprintln(p.name)"
        challenge_type = "complete_code"
        challenge_desc = "Create a class Product with val name and var price."
        template = "class Product(val name: String, var price: Double)\nval p = Product(\"Phone\", 599.99)\nprintln(p.name)"
        answer = "class Product(val name: String, var price: Double)\nval p = Product(\"Phone\", 599.99)\nprintln(p.name)"
        hint = "The answer is already in the template."
    elif level == 22:
        title = "Class Body"
        theory = "Classes can have properties and methods in the body. Use init block for initialization logic."
        code = "class Person(val name: String) {\n  var age = 0\n  fun greet() = \"Hello, \$name\"\n  init { println(\"Created\") }\n}"
        challenge_type = "complete_code"
        challenge_desc = "Add a method greet() that returns 'Hi'."
        template = "class Greeter(val name: String) {\n  fun greet() = \"Hi, \$name\"\n}\nval g = Greeter(\"Kotlin\")\nprintln(g.greet())"
        answer = "class Greeter(val name: String) {\n  fun greet() = \"Hi, \$name\"\n}\nval g = Greeter(\"Kotlin\")\nprintln(g.greet())"
        hint = "The answer is already in the template."
    elif level == 23:
        title = "Inheritance"
        theory = "Kotlin classes are final by default. Use open keyword to allow inheritance. Use : for inheritance."
        code = "open class Animal(val name: String)\nclass Dog(name: String) : Animal(name)\nval d = Dog(\"Rex\")\nprintln(d.name)"
        challenge_type = "complete_code"
        challenge_desc = "Create a class Cat that extends Animal."
        template = "open class Animal(val name: String)\nclass Cat(name: String) : Animal(name)\nval c = Cat(\"Kitty\")\nprintln(c.name)"
        answer = "open class Animal(val name: String)\nclass Cat(name: String) : Animal(name)\nval c = Cat(\"Kitty\")\nprintln(c.name)"
        hint = "The answer is already in the template."
    elif level == 24:
        title = "Data Classes"
        theory = "data class automatically generates equals(), hashCode(), toString(), copy(), componentN()."
        code = "data class User(val name: String, val age: Int)\nval u = User(\"John\", 25)\nprintln(u)\nprintln(u.copy(age = 30))"
        challenge_type = "complete_code"
        challenge_desc = "Create a data class Book with val title and val author."
        template = "data class Book(val title: String, val author: String)\nval b = Book(\"Kotlin\", \"John\")\nprintln(b)"
        answer = "data class Book(val title: String, val author: String)\nval b = Book(\"Kotlin\", \"John\")\nprintln(b)"
        hint = "The answer is already in the template."
    elif level == 25:
        title = "Object Expressions"
        theory = "object keyword creates a singleton (object declaration) or anonymous class (object expression)."
        code = "val comparator = object {\n  fun compare(a: Int, b: Int) = if (a > b) a else b\n}\nprintln(comparator.compare(5, 3))"
        challenge_type = "complete_code"
        challenge_desc = "Create an object expression with a method show() that returns 'Hi'."
        template = "val obj = object {\n  fun show() = \"Hi\"\n}\nprintln(obj.show())"
        answer = "val obj = object {\n  fun show() = \"Hi\"\n}\nprintln(obj.show())"
        hint = "The answer is already in the template."
    elif level == 26:
        title = "Companion Objects"
        theory = "companion object in a class creates static-like members. Accessible via ClassName.Companion or ClassName."
        code = "class MyClass {\n  companion object {\n    const val TAG = \"MyClass\"\n  }\n}\nprintln(MyClass.TAG)"
        challenge_type = "complete_code"
        challenge_desc = "Create a companion object with a constant NAME."
        template = "class Config {\n  companion object {\n    const val NAME = \"App\"\n  }\n}\nprintln(Config.NAME)"
        answer = "class Config {\n  companion object {\n    const val NAME = \"App\"\n  }\n}\nprintln(Config.NAME)"
        hint = "The answer is already in the template."
    elif level == 27:
        title = "Extension Functions"
        theory = "Extension functions add methods to existing classes: fun String.reverse(): String { return this.reversed() }."
        code = "fun String.exclaim() = this + \"!\"\nprintln(\"Hello\".exclaim())"
        challenge_type = "complete_code"
        challenge_desc = "Create an extension function on String that returns the string in uppercase."
        template = "fun String.shout() = this.uppercase()\nprintln(\"hello\".shout())"
        answer = "fun String.shout() = this.uppercase()\nprintln(\"hello\".shout())"
        hint = "The answer is already in the template."
    elif level == 28:
        title = "Extension Properties"
        theory = "Extension properties add properties to existing classes. They cannot have backing fields."
        code = "val String.isLong: Boolean get() = this.length > 10\nprintln(\"Hello\".isLong)\nprintln(\"Hello World!\".isLong)"
        challenge_type = "complete_code"
        challenge_desc = "Create an extension property on String that returns the last character."
        template = "val String.lastChar: Char get() = this[this.length - 1]\nprintln(\"Kotlin\".lastChar)"
        answer = "val String.lastChar: Char get() = this[this.length - 1]\nprintln(\"Kotlin\".lastChar)"
        hint = "The answer is already in the template."
    elif level == 29:
        title = "Lambda Functions"
        theory = "Lambda syntax: { params -> body }. It can be passed to functions. Use it for single parameter."
        code = "val square = { x: Int -> x * x }\nprintln(square(5))\nval sum = { a: Int, b: Int -> a + b }\nprintln(sum(3, 4))"
        challenge_type = "complete_code"
        challenge_desc = "Create a lambda that doubles a number."
        template = "val double = { x: Int -> x * 2 }\nprintln(double(4))"
        answer = "val double = { x: Int -> x * 2 }\nprintln(double(4))"
        hint = "The answer is already in the template."
    elif level == 30:
        title = "Higher-Order Functions"
        theory = "Higher-order functions take functions as parameters or return them. Use (ParamType) -> ReturnType for type."
        code = "fun operate(a: Int, b: Int, op: (Int, Int) -> Int): Int = op(a, b)\nprintln(operate(5, 3, { x, y -> x + y }))"
        challenge_type = "complete_code"
        challenge_desc = "Call operate with a lambda that multiplies the two numbers."
        template = "fun operate(a: Int, b: Int, op: (Int, Int) -> Int) = op(a, b)\nprintln(operate(5, 3, { x, y -> x * y }))"
        answer = "fun operate(a: Int, b: Int, op: (Int, Int) -> Int) = op(a, b)\nprintln(operate(5, 3, { x, y -> x * y }))"
        hint = "The answer is already in the template."
    elif level == 31:
        title = "Trailing Lambda"
        theory = "If the last parameter is a lambda, you can move it outside the parentheses: func { }."
        code = "fun repeat(times: Int, action: (Int) -> Unit) {\n  for (i in 0 until times) action(i)\n}\nrepeat(3) { println(it) }"
        challenge_type = "complete_code"
        challenge_desc = "Call the function with a trailing lambda that prints the value."
        template = "fun process(n: Int, action: (Int) -> Unit) {\n  for (i in 0 until n) action(i)\n}\nprocess(3) { println(it) }"
        answer = "fun process(n: Int, action: (Int) -> Unit) {\n  for (i in 0 until n) action(i)\n}\nprocess(3) { println(it) }"
        hint = "The answer is already in the template."
    elif level == 32:
        title = "Filter and Map"
        theory = "filter() keeps elements matching a predicate. map() transforms each element. Both return new collections."
        code = "val nums = listOf(1, 2, 3, 4, 5)\nval evens = nums.filter { it % 2 == 0 }\nval doubled = nums.map { it * 2 }\nprintln(evens)\nprintln(doubled)"
        challenge_type = "complete_code"
        challenge_desc = "Use filter to keep only numbers greater than 2."
        template = "val nums = listOf(1, 2, 3, 4)\nval big = nums.filter { it > 2 }\nprintln(big)"
        answer = "val nums = listOf(1, 2, 3, 4)\nval big = nums.filter { it > 2 }\nprintln(big)"
        hint = "The answer is already in the template."
    elif level == 33:
        title = "forEach"
        theory = "forEach executes a lambda for each element. It's a cleaner alternative to for loops."
        code = "val items = listOf(\"a\", \"b\", \"c\")\nitems.forEach { println(it) }"
        challenge_type = "complete_code"
        challenge_desc = "Use forEach to print each element."
        template = "val nums = listOf(1, 2, 3)\nnums.forEach { println(it) }"
        answer = "val nums = listOf(1, 2, 3)\nnums.forEach { println(it) }"
        hint = "The answer is already in the template."
    elif level == 34:
        title = "Sequences"
        theory = "Sequences (asSequence()) are lazy. They process elements one by one, useful for large collections."
        code = "val result = (1..10).asSequence()\n  .filter { it % 2 == 0 }\n  .map { it * it }\n  .toList()\nprintln(result)"
        challenge_type = "complete_code"
        challenge_desc = "Create a sequence from 1..5 and convert to list."
        template = "val seq = (1..5).asSequence().toList()\nprintln(seq)"
        answer = "val seq = (1..5).asSequence().toList()\nprintln(seq)"
        hint = "The answer is already in the template."
    elif level == 35:
        title = "Sealed Classes"
        theory = "sealed class restricts class hierarchies. All subclasses must be in the same file."
        code = "sealed class Result\ndata class Success(val data: String) : Result()\ndata class Error(val msg: String) : Result()"
        challenge_type = "true_false"
        challenge_desc = "Sealed classes can be subclassed from any file."
        template = ""
        answer = "false"
        hint = "Sealed class subclasses must be in the same file."
    elif level == 36:
        title = "Enum Classes"
        theory = "enum classes define a set of constants. They can have properties and methods."
        code = "enum class Color(val hex: String) {\n  RED(\"#FF0000\"),\n  GREEN(\"#00FF00\"),\n  BLUE(\"#0000FF\")\n}\nprintln(Color.RED.hex)"
        challenge_type = "complete_code"
        challenge_desc = "Create an enum Direction with NORTH, SOUTH, EAST, WEST."
        template = "enum class Direction {\n  NORTH, SOUTH, EAST, WEST\n}\nprintln(Direction.NORTH)"
        answer = "enum class Direction {\n  NORTH, SOUTH, EAST, WEST\n}\nprintln(Direction.NORTH)"
        hint = "The answer is already in the template."
    elif level == 37:
        title = "Interfaces"
        theory = "Kotlin interfaces can have abstract methods and concrete implementations. Use : to implement."
        code = "interface Drawable {\n  fun draw()\n  fun info() = \"Drawable\"\n}\nclass Circle : Drawable {\n  override fun draw() = println(\"Circle\")\n}"
        challenge_type = "complete_code"
        challenge_desc = "Create a class Square that implements Drawable."
        template = "interface Drawable {\n  fun draw()\n}\nclass Square : Drawable {\n  override fun draw() = println(\"Square\")\n}\nSquare().draw()"
        answer = "interface Drawable {\n  fun draw()\n}\nclass Square : Drawable {\n  override fun draw() = println(\"Square\")\n}\nSquare().draw()"
        hint = "The answer is already in the template."
    elif level == 38:
        title = "Abstract Classes"
        theory = "abstract classes cannot be instantiated. Abstract methods must be overridden in subclasses."
        code = "abstract class Animal {\n  abstract fun speak()\n}\nclass Dog : Animal() {\n  override fun speak() = println(\"Woof\")\n}"
        challenge_type = "complete_code"
        challenge_desc = "Create an abstract class Shape with abstract method area()."
        template = "abstract class Shape {\n  abstract fun area(): Double\n}\nclass Circle(val r: Double) : Shape() {\n  override fun area() = Math.PI * r * r\n}"
        answer = "abstract class Shape {\n  abstract fun area(): Double\n}\nclass Circle(val r: Double) : Shape() {\n  override fun area() = Math.PI * r * r\n}"
        hint = "The answer is already in the template."
    elif level == 39:
        title = "Generics"
        theory = "Generic types: class Box<T>(val value: T). Functions can also be generic: fun <T> identity(x: T): T = x."
        code = "class Box<T>(val value: T)\nval box = Box(42)\nprintln(box.value)"
        challenge_type = "complete_code"
        challenge_desc = "Create a generic class Holder with a single property."
        template = "class Holder<T>(val item: T)\nval h = Holder(\"Kotlin\")\nprintln(h.item)"
        answer = "class Holder<T>(val item: T)\nval h = Holder(\"Kotlin\")\nprintln(h.item)"
        hint = "The answer is already in the template."
    elif level == 40:
        title = "Generics Constraints"
        theory = "Constrain type parameters with where: fun <T : Comparable<T>> max(a: T, b: T): T."
        code = "fun <T : Comparable<T>> maxOf(a: T, b: T) = if (a > b) a else b\nprintln(maxOf(5, 3))\nprintln(maxOf(\"A\", \"B\"))"
        challenge_type = "complete_code"
        challenge_desc = "Create a generic function with a Comparable constraint."
        template = "fun <T : Comparable<T>> bigger(a: T, b: T) = if (a > b) a else b\nprintln(bigger(10, 20))"
        answer = "fun <T : Comparable<T>> bigger(a: T, b: T) = if (a > b) a else b\nprintln(bigger(10, 20))"
        hint = "The answer is already in the template."
    elif level <= 60:
        title = "Kotlin Advanced " + str(level - 40)
        topics = ["Infix Functions", "Operator Overloading", "Destructuring Declarations", "Copy Function", "Component Functions", "Delegated Properties", "Lazy Property", "Observable Property", "NotNull Property", "Property Delegates", "Type Aliases", "Inline Functions", "Noinline", "Crossinline", "Reified Types", "inline Classes", "Value Classes", "Sealed Interfaces", "Covariance", "Contravariance"]
        topic = topics[(level - 41) % len(topics)]
        theory = "This level covers " + topic + " in Kotlin."
        code = "// Example of " + topic + "\nfun main() { println(\"Kotlin\") }"
        challenge_type = "true_false" if level % 2 == 0 else "predict_output"
        challenge_desc = "Answer the question about " + topic + "."
        template = ""
        answer = "true" if level % 2 == 0 else "Kotlin"
        hint = "Review the documentation for " + topic + "."
    elif level <= 80:
        title = "Kotlin Coroutines " + str(level - 60)
        topics = ["Coroutines", "Suspend Functions", "Async Await", "Launch Builder", "Join", "Cancel", "Delay", "WithContext", "Dispatchers", "Coroutine Scope", "Coroutine Context", "Structured Concurrency", "Job", "Deferred", "Supervisor Job", "Exception Handling", "Coroutine Exception Handler", "Flow Basics", "Flow Collect", "Flow Operators"]
        topic = topics[(level - 61) % len(topics)]
        theory = "This level covers " + topic + " in Kotlin coroutines."
        code = "// Example of " + topic + "\nimport kotlinx.coroutines.*"
        challenge_type = "true_false" if level % 2 == 0 else "complete_code"
        challenge_desc = "Answer the question about " + topic + "."
        template = "// " + topic + "\nimport kotlinx.coroutines.*"
        answer = "// " + topic + "\nimport kotlinx.coroutines.*"
        hint = "Review the documentation for " + topic + "."
    elif level <= 100:
        title = "Kotlin Mastery " + str(level - 80)
        topics = ["Kotlin DSL", "Type-Safe Builders", "Html DSL", "Anko Layouts", "Ktor Client", "Ktor Server", "Exposed ORM", "Kotlin Serialization", "kotlinx.serialization", "Multiplatform", "KMM", "Compose Basics", "Compose Layout", "Compose State", "Compose Effects", "Navigation Compose", "ViewModel", "LiveData", "Room Database", "Koin DI"]
        topic = topics[(level - 81) % len(topics)]
        theory = "Mastering " + topic + " distinguishes expert Kotlin developers."
        code = "// Advanced: " + topic + "\nfun main() { }"
        challenge_type = "true_false" if level % 2 == 0 else "complete_code"
        challenge_desc = "Answer the question about " + topic + "."
        template = "// " + topic + "\nfun main() { }"
        answer = "// " + topic + "\nfun main() { }"
        hint = "Review the documentation for " + topic + "."

    LESSON_TEMPLATES.append({
        "language": "kotlin",
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
    sql_lines.append("-- Kotlin lessons seed data (100 levels)")
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
    with open("seed_kotlin_lessons.sql", "w") as f:
        f.write(sql)
    print("Generated " + str(len(LESSON_TEMPLATES)) + " Kotlin lesson SQL statements")
    print("Output written to seed_kotlin_lessons.sql")