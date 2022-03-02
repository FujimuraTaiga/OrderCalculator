abstract class Meat {
  abstract String name;
  abstract int today;
  abstract int tomorrow;
  abstract int dayAfter;
  abstract int price;
  abstract int need;
  abstract int order;
  void setToday(int today, int sumSales);
  void setTomorrow(int tomorrow, int sumSales);
  void setPrice(double price, int sumSales);
  void setNeed(int sumSales);
  double getPrice();
}
