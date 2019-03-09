package src.beginner;

class FizzBuzz {
  static public function main() {
    trace("classic FIZZBUZZ but awesome");
    function isMultipleOf(value:Int, of:Int):Bool return value % of == 0;
    for(value in 1...101) {
      trace(switch [isMultipleOf(value, 3), isMultipleOf(value, 5)] {
        case [true, true]: "FizzBuzz";
        case [true, false]: "Fizz";
        case [false, true]: "Buzz";
        case [false, false]: Std.string(value);
      });
    }
  }
}