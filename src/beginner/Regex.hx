package src.beginner;

class Regex {
  static public function main() {
    var regexp:EReg = ~/world/;

    trace(regexp.match("hello world"));
    // true : 'world' was found in the string
    trace(regexp.match("hello")); 
    // false : 'world' is not found in the string

    var regexp:EReg = ~/world/ig; // case insensitive matching + global search

    trace(regexp.match("HELLO WORLD"));
    // true : 'world' was found in the string



    var message = "hello world";
    trace(StringTools.replace(message, "hello", "happy")); 
    // "happy world"

    var ereg:EReg = ~/hello/;
    trace(ereg.replace(message, "happy")); 
    // "happy world"

    var message = "high to low";
    var ereg:EReg = ~/(high).+?(low)/;
    trace(ereg.replace(message, "$2 and $1")); 
    // "low and high"






    // search for a number, then a space, then everything until newline character or end of input is found
    function getFruits(input:String):Array<{amount:Int, fruit:String}> {
      var ereg = ~/(\d{1,2})\s(.+?)(\n|$)/g; 
      var list = [];
      while (ereg.match(input)) {
        list.push({
          amount: Std.parseInt(ereg.matched(1)),
          fruit: ereg.matched(2),
        }); 
        input = ereg.matchedRight();
      }
      return list;
    }

    // Test it out with a multiline string
    var fruits = "1 Apple
        2 Bananas
          3 Pears
          1 Tomato";

    trace(getFruits(fruits)); 




    var ereg:EReg = ~/(hello)/i;
    var message = "hello world";
    trace(ereg.map(message, function(e) return "happy"));
    // happy world
  }
}