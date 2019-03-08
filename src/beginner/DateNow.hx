class DateNow {
  static public function main() {
    var now = Date.now();

    trace(now);

    var monthNames = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
    
    trace(
      now.getDate() + " of "
      + monthNames[now.getMonth()] + ", "
      + now.getFullYear()
    );

    trace(
      DateTools.format(now, "%b %d, %Y")
    );
  }
}
