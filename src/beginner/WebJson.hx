package src.beginner;

class WebJson {
  static function main() {
    var http = new Request(
      "https://api.ipify.org?format=json",
      function (data: String) {
        var result = haxe.Json.parse(data);
        trace('Your IP-address: ${result.ip}');
      },
      function (error) {
        trace('error: $error');
      }
    );

    http.request();
  }
}

class Request {
  var req: haxe.Http;

  public function new(link: String, onData, onError) {
    this.req = new haxe.Http(link);
    this.req.onData = onData;
    this.req.onError = onError;
  }

  public function request() {
    this.req.request(false);
  }
}