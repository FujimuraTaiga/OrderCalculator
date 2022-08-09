import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:order_support/Model/Item/item.dart';
import 'package:order_support/Provider/Item/item_state.dart';
import 'package:order_support/Enum/date.dart';

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
    final stock = ref.watch(itemState.notifier).getStockOf(date);
    return Slider(
      value: stock.toDouble(),
      min: 0,
      max: 15,
      onChanged: (value) {
        ref.read(itemState.notifier).changeStockOf(date, value);
      },
    );
  }
}
