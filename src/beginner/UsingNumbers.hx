package src.beginner;

class UsingNumbers {
  static public function main() {
    Std.random(10); // a random Int between 0 (included) and 10 (excluded)
    Math.random();  // a random Float between 0.0 (included) and 1.0 (excluded)
  
    Std.parseInt("3"); // 3
    Std.parseInt("3.5"); // 3
    Std.parseInt("3 kilo"); // 3
    Std.parseInt("kilo: 3.5"); // null

    Std.parseFloat("3"); // 3.0
    Std.parseFloat("3.5"); // 3.5
    Std.parseFloat("3.5 kilo"); // 3.5
    Std.parseFloat("kilo: 3.5"); // Math.NaN
  }
}