package src.beginner;

class UsingMaps {
  static public function main() {
    var map = new AgeMap();

    map.ageByUser["John"] = 26;
    map.ageByUser["Peter"] = 17;
    map.ageByUser["Mark"] = 32;

    trace(map.ageByUser);

    trace(map.ageByUser["Mark"]); 
    trace(map.ageByUser.get("Mark"));

    map.checkAgeFromUser("Simon");

    map.checkAgeFromUser("Mark");
    trace("Removing Mark...");
    map.ageByUser.remove("Mark");
    map.checkAgeFromUser("Mark");

    for (age in map.ageByUser) {
      trace(age);
    }

    for (user in map.ageByUser.keys()) {
      var age = map.ageByUser.get(user);
      trace('$user, age $age');
    }
  }
}

class AgeMap {
  public var ageByUser: Map<String, Int>; 

  public function new() {
    this.ageByUser = new Map<String, Int>();
  }

  public function checkAgeFromUser(name: String) {
    if (this.ageByUser.exists(name)) {
      var age = this.ageByUser[name];
      trace('$name is $age years old');
    } else {
      trace('$name is not found');
    }
  }
}