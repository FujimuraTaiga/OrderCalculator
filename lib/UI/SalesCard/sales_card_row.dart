import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:order_support/Provider/Sales/sales_provider.dart';
import 'package:order_support/UI/SalesCard/sales_slider.dart';
import 'package:order_support/Enum/date.dart';
import 'package:order_support/Model/Sales/sales.dart';
import 'package:order_support/Provider/Sales/sales_state.dart';

class SalesFormRow extends ConsumerWidget {
  SalesFormRow.today({Key? key}) : super(key: key) {
    date = Date.today;
    dailySalesProvider = todaySalesProvider;
  }
  SalesFormRow.tomorrow({Key? key}) : super(key: key) {
    date = Date.tomorrow;
    dailySalesProvider = tomorrowSalesProvider;
  }
  SalesFormRow.dayAfter({Key? key}) : super(key: key) {
    date = Date.dayAfter;
    dailySalesProvider = dayAfterSalesProvider;
  }

  late final Date date;
  late final StateNotifierProvider<SalesState, Sales> dailySalesProvider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final price = ref.watch(dailySalesProvider).price;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          flex: 2,
          child: Text(
            "${date.day}日",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        Flexible(
          flex: 3,
          child: Text(
            "${(price / 10000).round().toString()}万円",
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Flexible(
          flex: 7,
          child: SalesSlider(date, dailySalesProvider),
        ),
      ],
    );
  }
}
