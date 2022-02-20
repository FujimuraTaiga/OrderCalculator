import 'package:flutter/material.dart';
import 'package:order_support/Const/item.dart';
import 'package:order_support/Model/item_data.dart';
import 'package:order_support/Model/sales.dart';

class ViewModel with ChangeNotifier{

  final itemData = {
    Item.beef     : ItemData(),
    Item.pork     : ItemData(),
    Item.chicken  : ItemData(),
  };
  final sales = Sales();

  void init(){
    for(var data in itemData.values){
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

  void setSales(int today, int tomorrow, int dayAfter){
    sales.set(today,tomorrow,dayAfter);
  }

  void setPrice(double beef,double pork,double chicken){
    itemData[Item.beef]!.setPrice(beef);
    itemData[Item.pork]!.setPrice(pork);
    itemData[Item.chicken]!.setPrice(chicken);
    notifyListeners();
  }
}