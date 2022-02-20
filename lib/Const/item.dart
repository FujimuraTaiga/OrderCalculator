enum Item{
  beef,
  pork,
  chicken,
}

extension MeatExtension on Item{

  static final itemName = {
    Item.beef     : '牛',
    Item.pork     : '豚',
    Item.chicken  : '鳥',
  };

  String get name => itemName[this]!;
}