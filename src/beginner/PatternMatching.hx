package src.beginner;

class PatternMatching {
  static public function main() {
    for (value in 0...10) {
      switch value {
        case 2: 
          trace("special number 2");
        case 4: 
          trace("special number 4");
        case other: 
          trace("other: " + other);
      }
    }


    trace('new round...');
    function add(a:Int, b:Int) return a + b;
    function mul(a:Int, b:Int) return a * b;
    for (value in 0 ... 10) {
      switch value {
        case add(_, 1) => mul(_, 3) => result:
          trace(result);
          // mul(add(value + 1), 3)
          // 1 + value => (1 + value) * 3 => result
      }
    }

    function isEven(value:Float) return value % 2 == 0;
    for (value in 0...10) {
      switch value {
        // match number 4
        case special = 4: 
          trace("special number: " + special);

        // match even numbers
        case value = isEven(_) => true: 
          trace("even number: " + value);

        // match anything
        case other:
          trace("other: " + other);
      }
    }

    trace("array matching....");
    var myArray = [1, 6];
    switch(myArray) {
      case [2, _]: 
        trace("0");
      case [_, 6]:
        trace("1");
      case []: 
        trace("2");
      case [_, _, _]: 
        trace("3");
      case _: 
        trace("4");
    }

    var input = "say hello to Dave";
    switch input.split(" ") {
      // match "say {word} to {name}"
      case ["say", word, "to", name]: 
        trace('$word to $name');

      // match anything
      case _: 
        trace("unknown command");
    }
    // hello to Dave

    var inputs = ["say hi to Mark", "say hello to Sophia"];
    for(str in inputs) {
      trace('COMMAND: $str');
      switch str.split(" ") {
        // match "say {word} to {name}" where name is specific name
        case ["say", word, "to", name = "Sophia" | "Emma" | "Olivia"]: 
          trace('I only want to say $word to you, $name');

        // match "say {word} to {name}"
        case ["say", word, "to", name]: 
          trace('$word $name');

        // match anything
        case _: 
          trace("unknown command");
      }
    }



    var inputs3 = ["say hello 3 times", "say hi to Mark", "say hello to Sophia"];
    for(input3 in inputs3) {
      switch input3.split(" ") {
        // match "say {word}"
        case ["say", word]: 
          trace(word);

        // match "say {word} to {name}" where name is specific name
        case ["say", word, "to", name = "Sophia" | "Emma" | "Olivia"]: 
          trace('I only say $word to you, $name');

        // match "say {word} to {name}"
        case ["say", word, "to", name]: 
          trace('$word to $name');

        // match "say {word} {amount} times" where {word} is a greeting and {amount} is a number.
        case [action = "say", word = "hello"|"hi"|"hey", amount, "times"] if (~/^[0-9]+$/.match(amount)): 
          for (i in 0 ... Std.parseInt(amount)) {
            trace(word);
          }

        // matches anything
        case _:
          trace("unknown command");
      }
    }
  }
}