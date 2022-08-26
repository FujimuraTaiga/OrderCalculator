import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:order_support/Model/Item/item.dart';
import 'package:order_support/Provider/Item/item_state.dart';
import 'package:order_support/Enum/date.dart';
import 'package:order_support/Provider/Sales/sales_provider.dart';

class AmountSlider extends ConsumerWidget {
  AmountSlider.today(this.itemState, {Key? key}) : super(key: key) {
    date = Date.today;
  }
  AmountSlider.tomorrow(this.itemState, {Key? key}) : super(key: key) {
    date = Date.tomorrow;
  }

  late final Date date;
  final StateNotifierProvider<ItemState, Item> itemState;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final item = ref.watch(itemState.notifier);
    final today = ref.watch(todaySalesProvider).price;
    final tomorrow = ref.watch(tomorrowSalesProvider).price;
    final dayAfter = ref.watch(dayAfterSalesProvider).price;
    final sumOfSales = today + tomorrow + dayAfter;

    return Slider(
      value: item.getStockOf(date).toDouble(),
      min: 0,
      max: 15,
      onChanged: (value) {
        item.changeStockOf(date, value);
        final need = ref.read(itemState).amountOfNeed(sumOfSales);
        item.changeStockOf(Date.dayAfter, need.toDouble());
      },
    );
  }
}
