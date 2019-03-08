// haxe -main ConditionalComp --interp -D introduce -D level=3

class ConditionalComp {
  static public function main() {
    #if introduce
    trace("Hello! This is an example of conditional compilation.");
    #end

    #if (level > 4)
    trace("Welcome, administrator!");
    #elseif (level > 2)
    trace("Welcome, super user!");
    #else
    trace("Welcome, user!");
    #end
  }
}