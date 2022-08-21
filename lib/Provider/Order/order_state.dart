import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:order_support/Model/Order/order.dart';

import '../../Model/Item/item.dart';

class OrderState extends StateNotifier<Order> {
  OrderState(Order state) : super(state);

  List<Item> get items => [state.pork, state.beef, state.chicken];
  Item get pork => state.pork;
  Item get beef => state.beef;
  Item get chicken => state.chicken;

  int get porkAmount => state.pork.stock.dayAfter;
  int get beefAmount => state.beef.stock.dayAfter;
  int get chickenAmount => state.chicken.stock.dayAfter;

  int get totalAmount => porkAmount + beefAmount + chickenAmount;

  void adjustAmount(int lackAmount) {
    Item lackItem = pork;
    for (int i = 0; i < lackAmount; i++) {
      for (final item in items) {
        if (item.stockValue < lackItem.stockValue) {
          lackItem = item;
        }
      }
      print(lackItem.name);
      lackItem.setDayAfter(lackItem.amountOfOrder + 1);
    }
  }
}
