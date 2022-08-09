import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:order_support/Model/DailySales/daily_sales.dart';
import 'package:order_support/Enum/date.dart';
import 'package:order_support/Provider/Sales/sales_state.dart';

class SalesSlider extends ConsumerWidget {
  const SalesSlider(this.date, this.dailySalesProvider, {Key? key})
      : super(key: key);

  final Date date;
  final StateNotifierProvider<SalesState, DailySales> dailySalesProvider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int price = ref.watch(dailySalesProvider).getPrice;

    return Slider(
      value: (price / 10000).toDouble(),
      min: 0,
      max: 70,
      onChanged: (value) {
        ref
            .read(dailySalesProvider.notifier)
            .changePrice(value.round() * 10000);
      },
    );
  }
}
