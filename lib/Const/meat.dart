class Meat{
  late String name;
  late int packPerSales;
}

class Beef implements Meat {
  @override
  String name = '牛';
  @override
  int packPerSales = 60000;
}

class Pork implements Meat{
  @override
  String name = '豚';
  @override
  int packPerSales = 70000;
}

class Chicken implements Meat{
  @override
  String name = '鳥';
  @override
  int packPerSales = 60000;
}