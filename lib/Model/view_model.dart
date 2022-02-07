import 'package:flutter/material.dart';
import 'package:order_support/Const/item.dart';
import 'package:order_support/Model/item_data.dart';
import 'package:order_support/Model/sales.dart';

class ViewModel with ChangeNotifier{

  final itemData = {
    Item.beef     : ItemData(Item.beef),
    Item.pork     : ItemData(Item.pork),
    Item.chicken  : ItemData(Item.chicken),
  };
  final sales = Sales();

  void init(){
    for(var data in itemData.values){
      data.setToday(0);
      data.setTomorrow(0);
      data.setOrder(sales);
    }
    notifyListeners();
  }

  void setTodayAmount(Item item, int today){
    itemData[item]!.setToday(today);
    itemData[item]!.setOrder(sales);
    notifyListeners();
  }

  void setTomorrowAmount(Item item, int tomorrow){
    itemData[item]!.setTomorrow(tomorrow);
    itemData[item]!.setOrder(sales);
    notifyListeners();
  }

  void setTodaySales(int today){
    sales.setToday(today);
  }

  void setTomorrowSales(int tomorrow){
    sales.setTomorrow(tomorrow);
  }

  void setDayAfterSales(int dayAfter){
    sales.setDayAfter(dayAfter);
  }
}