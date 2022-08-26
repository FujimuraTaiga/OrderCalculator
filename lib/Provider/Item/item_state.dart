import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:order_support/Model/Item/item.dart';
import 'package:order_support/Model/Stock/stock.dart';
import 'package:order_support/Enum/date.dart';

class ItemState extends StateNotifier<Item> {
  ItemState(this.item) : super(item);
  final Item item;

  int getStockOf(Date date) {
    switch (date) {
      case Date.today:
        return state.stock.today;
      case Date.tomorrow:
        return state.stock.tomorrow;
      case Date.dayAfter:
        return -9999999;
    }
  }

  void changeStockOf(Date date, double stock) {
    switch (date) {
      case Date.today:
        state = state.copyWith(
          name: state.name,
          stock: Stock(
            today: stock.round(),
            tomorrow: state.stock.tomorrow,
            dayAfter: state.stock.dayAfter,
          ),
          amountPerSales: state.amountPerSales,
        );
        break;
      case Date.tomorrow:
        state = state.copyWith(
          name: state.name,
          stock: Stock(
              today: state.stock.today,
              tomorrow: stock.round(),
              dayAfter: state.stock.dayAfter),
          amountPerSales: state.amountPerSales,
        );
        break;
      case Date.dayAfter:
        state = state.copyWith(
          name: state.name,
          stock: Stock(
            today: state.stock.today,
            tomorrow: state.stock.tomorrow,
            dayAfter: stock.round(),
          ),
          amountPerSales: state.amountPerSales,
        );
    }
  }

  void incrementOrder() {
    state = state.copyWith(
      name: state.name,
      stock: state.stock.incrementOrder(),
      amountPerSales: state.amountPerSales,
    );
  }
}
