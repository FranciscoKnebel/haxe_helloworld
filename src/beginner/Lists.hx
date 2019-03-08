package src.beginner;

class Lists {
  static public function main() {
    var listOfInts = new List<Int>();
    listOfInts.add(1); // insert at end
    trace(listOfInts);
    listOfInts.push(2); // insert at start
    trace(listOfInts);

    listOfInts.remove(1); // remove first element with value
    trace(listOfInts);
    listOfInts.pop(); // remove last value of list
    trace(listOfInts);

    var listOfEvenInts = listOfInts.filter(function (e) return e % 2 == 0);
    var listOfIntsAsStrings = listOfInts.map(function (e) return Std.string(e));
    var withSeparator : String = listOfInts.join(" / ");
  }
}