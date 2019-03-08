package src.beginner;

class DeclareClasses {
  static public function main() {
    var calc = new Calculator();
    trace(calc.add(3, 2));
    trace(calc.multiply(3, 2));

    var myDog = new Dog();
    myDog.sayHello();

    var user = new User("Mark", 31);
    trace(user.name);
    // trace(user.age); // Error;

    var myIntValue = new Value<Int>(5);
    var myStringValue = new Value<String>("String");
    trace(myIntValue.value, myStringValue.value);

    var myPoint = new Point(100, 150);
    trace(myPoint.x);
  }
}

class Calculator {
  public function new() {
    trace("A new calculator instance was created!");
  }
  
  public function add(a:Int, b:Int): Int {
    return a + b;
  }
  
  public function multiply(a:Int, b:Int):Int {
    return a * b;
  }
}

class Animal {
  public function new() { }
  
  public function sayHello() {
    trace("Hello!");
  }
}

class Dog extends Animal {
  public function new() {
    super();
  }
}

class User {
  public var name:String;
  private var age:Int;
  
  public function new(name:String, age:Int) {
    this.name = name;
    this.age = age;
  }
}

class Value<T> {
  public var value:T;
  
  public function new(value:T) {
    this.value = value;
  }
}

class Point {
  public var x:Float;
  public var y:Float;

  public inline function new(x, y) {
    this.x = x;
    this.y = y;
  }
}
