package src.beginner;

class Enums {
  static public function main() {
    var gold = RewardType.Gold(500);
    var exp = RewardType.Experience(100);
    var item = RewardType.Item(ItemType.Key);
    var item2 = RewardType.Item(ItemType.Sword('Swordie the Sharp', 100));
    
    trace(gold, exp, item, item2);

    var enumName = ItemType.getName();
    var enumConstructorNames = ItemType.getConstructors();
    trace(enumName, enumConstructorNames);

    var item3 = ItemType.Shield("Shieldy", 100);
    var constructors: Array<Dynamic> = [
      item3.getName(),
      item3.getIndex(),
      item3.getParameters()
    ];
    trace(constructors);

    var otherItem = ItemType.Shield("Shieldy", 100);
    if (item3.equals(otherItem)) trace("Items are equal!");
    if (otherItem.match(ItemType.Shield("Shieldy", 100))) trace("Other item is a shield!");
  }
}

// Describes a type of item that can be rewarded
enum ItemType {
  Key;
  Sword(name:String, attack:Int);
  Shield(name:String, defense:Int);
}

// Describes a type of reward that can be given
enum RewardType {
  Gold(value:Int);
  Experience(value:Int);
  Item(type:ItemType);
}
