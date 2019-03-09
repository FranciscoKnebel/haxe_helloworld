package src.beginner;
using StringTools;

class Strings {
  static public function main() {
    var a:String = "a"; // with type declaration
    var b = "b"; // without type declaration
    
    var greeting = "hello";
    var message = greeting + " world"; 
    trace(message); // output: hello world
    
    var name = "Mark";
    var age = 33;
    var message = 'Hello, I am $name and my age is $age';
    trace(message); // output: Hello, I am Mark and my age is 33

    var age = 33;
    var year = 2017;
    var message = 'I am born in ${year - age}';
    trace(message); // output: I am born in 1984
  
  
    // add two strings
    trace("apple" + "pear"); // applepear

    // compare if both are the same
    trace("apple" == "pear"); // false
    trace("apple" == "apple"); // true

    // compare if both are different
    trace("strawberry" != "blueberry"); // true
    trace("patato" != "patato"); // false


    trace("ABCB" > "ABBBB"); // true
    trace("ABCB" < "AAAA"); // false

    // Creating an array with strings
    var fruits:Array<String> = ["apple", "pear", "banana"];
    fruits.sort(function(a, b) return a > b ? 1 : -1);
    trace(fruits); // output: apple,banana,pear


    var fruits = "
    - apple
    - pear
    - banana";

    trace(fruits);


    function reverse(a:String):String {
      var arr = a.split('');
      arr.reverse();
      return arr.join('');
    }

    trace(reverse("Haxe is great!")); // !taerg si exaH
    trace(reverse(reverse("Haxe is great!"))); // !taerg si exaH




    trace(StringTools.replace("Haxe is great!", "great", "fun")); // Haxe is fun!
    trace(StringTools.startsWith("Haxe is great!", "Haxe")); // true
    trace(StringTools.endsWith("Haxe is great!", "Haxe")); // false
    trace("#" + StringTools.hex(255, 6)); // #0000FF

    // If "using StringTools"
    trace("Haxe is great!".replace("great", "fun")); // Haxe is fun!
    trace("Haxe is great!".startsWith("Haxe")); // true
    trace("Haxe is great!".endsWith("Haxe")); // false
    
  }
}