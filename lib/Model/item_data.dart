import 'package:order_support/Const/item.dart';
import 'package:order_support/Model/sales.dart';

class ItemData{

  Item item;
  int today = 0;
  int tomorrow = 0;
  int order = 0;

  ItemData(this.item);

  void setToday(int today){
    this.today = today;
  }

  void setTomorrow(int tomorrow){
    this.tomorrow = tomorrow;
  }

  void setOrder(Sales sales){
    order = sales.sumSales() - today - tomorrow;
  }
}