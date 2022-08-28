import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:order_support/Model/Item/item.dart';
import 'package:order_support/Provider/Item/item_state.dart';
import 'package:order_support/Enum/date.dart';
import 'amount_slider.dart';

class AmountRow extends ConsumerWidget {
  AmountRow.today(this.itemProvider, {Key? key}) : super(key: key) {
    date = Date.today;
  }
  AmountRow.tomorrow(this.itemProvider, {Key? key}) : super(key: key) {
    date = Date.tomorrow;
  }

  late final Date date;
  final StateNotifierProvider<ItemState, Item> itemProvider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stock = ref.watch(itemProvider).stock;
    return Row(
      children: [
        Flexible(
          flex: 6,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                date == Date.today ? "在庫数:" : "納品予定:",
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                date == Date.today ? "${stock.today}P" : "${stock.tomorrow}P",
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Flexible(
          flex: 12,
          child: date == Date.today
              ? AmountSlider.today(itemProvider)
              : AmountSlider.tomorrow(itemProvider),
        ),
      ],
    );
  }
}
