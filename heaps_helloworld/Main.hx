class Main extends hxd.App {
  var bmp1 : h2d.Bitmap;

  function f1() {
    // allocate a Texture with red color and creates a 100x100 Tile from it
    var tile = h2d.Tile.fromColor(0xFF0000, 100, 100);

    // create a Bitmap object, which will display the tile
    // and will be added to our 2D scene (s2d)
    bmp1 = new h2d.Bitmap(tile, s2d);

    // modify the display position of the Bitmap sprite
    bmp1.x = s2d.width * 0.5;
    bmp1.y = s2d.height * 0.5;

    // change tile pivot to center of bmp
    bmp1.tile.dx = -50;
    bmp1.tile.dy = -50;
  }

  function f1_update() {
    bmp1.rotation += .01;
  }

  function f2() {
    var t1 = h2d.Tile.fromColor(0xFF0000, 30, 30);
    var t2 = h2d.Tile.fromColor(0x00FF00, 30, 40);
    var t3 = h2d.Tile.fromColor(0x0000FF, 30, 50);

    var anim = new h2d.Anim([t1,t2,t3], s2d);
    anim.speed = 1.5;

    anim.x = s2d.width * 0.5;

    anim.onAnimEnd = function() {
      trace("animation ended!");
    }
  }

  function f3() {
    var font : h2d.Font = hxd.res.DefaultFont.get();
    var tf = new h2d.Text(font);
    tf.text = "Hello World\nHeaps is great!";
    tf.textAlign = Center;
    tf.x = s2d.width * 0.5;

    // add to any parent, in this case we append to root
    s2d.addChild(tf);
  }

  override function init() {
    f1();
    f2();
    f3();
  }

  override function update(dt:Float) {
    f1_update();
  }

  static function main() {
    new Main();
  }
}
