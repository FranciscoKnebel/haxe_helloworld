package src.beginner;

enum Move {
  Rock;
  Paper;
  Scissors;
}

class Player {
  public var name: String;
  public var move: Move;

  public function new(name: String) {
    this.name = name;
  }

  public function defineMoveByIndex(index: Int) {
    this.move = Move.createByIndex(index);
  }
}

class RockPaperScissors {
  static public function main() {
    var user = new Player('PLAYER');
    #if (move == 0)
      user.defineMoveByIndex(0);
    #elseif (move == 1)
      user.defineMoveByIndex(1);
    #elseif (move == 2)
      user.defineMoveByIndex(2);
    #else
      trace("Invalid or unknown player move.");
      trace("Compilation flag: -D move=INDEX, where INDEX is {0, 1, 2}");
      return;
    #end

    var machine = new Player('MACHINE');
    machine.defineMoveByIndex(Std.random(3));

    trace('${user.name} move: ${user.move}');
    trace('${machine.name} move: ${machine.move}');

    var winner = switch [user.move, machine.move] {
      case [Paper, Rock] | [Scissors, Paper] | [Rock, Scissors]: user;
      case [Rock, Paper] | [Scissors, Rock] | [Paper, Scissors]: machine;
      default: null; // Draw
    }

    if (winner != null) {
      trace('The winner is ${winner.name}');
    } else {
      trace('Draw!');
    }
  }
}
