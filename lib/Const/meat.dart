enum Meat{
  beef,
  pork,
  chicken,
}

class Beef{
  static String name = '牛';
  static int packPerSales = 60000;
}
class Pork{
  static String name = '豚';
  static int packPerSales = 70000;
}
class Chicken{
  static String name = '鳥';
  static int packPerSales = 60000;
}

String meatName(Meat meat){
  switch(meat){
    case Meat.beef:
      return Beef.name;
    case Meat.pork:
      return Pork.name;
    case Meat.chicken:
      return Chicken.name;
  }
}

int packPerSales(Meat meat){
  switch(meat){
    case Meat.beef:
      return Beef.packPerSales;
    case Meat.pork:
      return Pork.packPerSales;
    case Meat.chicken:
      return Chicken.packPerSales;
  }
}