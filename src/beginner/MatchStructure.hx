package src.beginner;

class Person {
  public var name: String;
  public var age: Int;

  public function new(name: String, age: Int) {
    this.name = name;
    this.age = age;
  }
}

class MatchStructure {
  static public function main() {

    var people = [
      new Person("Mark", 33),
      new Person("Jose", 40),
      new Person("Jose", 42),
      new Person("Jeremiah", 51)
    ];

    for(person in people) {
      switch person {
        case { age: _ > 50 => true}: trace('found somebody older than 50, at ${person.age}');
        case { name: "Jose", age: 42  }: trace('Found Jose, who is 42');
        case { name: name }: trace('Found someone called $name');
        case _: // matches anything
          trace("unknown");
      }
    }

  }
}