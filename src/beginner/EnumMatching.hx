package src.beginner;

class EnumMatching {
  static public function main() {
    var game = new Game();
  }
}

class Game {
  public function new() {
    var event = WIN(1000);

    switch (event) {
      case START: 
        trace('Game started');

      case LOST:
        trace('Game over. You lost..');

      case WIN(score):
        trace('Game over. You win! Score: $score!');
    }
  }
}

enum GameEvent {
  START;
  LOST;
  WIN(score:Int);
}