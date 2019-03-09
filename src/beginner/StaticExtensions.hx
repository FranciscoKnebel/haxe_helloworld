package src.beginner;
using StringTools;
using Math;
using src.beginner.FloatTools;

class StaticExtensions {
  static public function main() {
    var str = 'ABxD';
    var corr = str.replace('x', 'C'); // now, our string is "extended" with the replace method!
    trace(corr); // ABCD


    var num = 0.9;
    var num2 = 0.4;
    trace(num, num.round());
    trace(num2, num2.round());

    trace(
      FloatTools.round2(num),
      num.round2()
    );    
  }
}