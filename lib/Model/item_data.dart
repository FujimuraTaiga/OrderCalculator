import 'package:order_support/Model/sales.dart';

class ItemData{

  int today = 0;
  int tomorrow = 0;
  int order = 0;
  int price = 60000;

  void setToday(int today){
    this.today = today;
  }

  void setTomorrow(int tomorrow){
    this.tomorrow = tomorrow;
  }

  void setPrice(double price){
    this.price = (price * 10000).ceil();
  }

  double getPrice(){
    return price/10000;
  }

  void setOrder(Sales sales){
    order = (sales.sumSales()/price).ceil() - today - tomorrow;
  }
}