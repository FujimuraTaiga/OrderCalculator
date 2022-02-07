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

  static final itemPackPerSales = {
    Item.beef     : 60000,
    Item.pork     : 70000,
    Item.chicken  : 60000,
  };

  String get name => itemName[this]!;
  int get packPerSales => itemPackPerSales[this]!;
}