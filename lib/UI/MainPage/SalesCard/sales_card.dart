import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:order_support/Provider/Sales/sales_provider.dart';
import 'package:order_support/UI/MainPage/SalesCard/sales_card_row.dart';

class SalesCard extends ConsumerWidget {
  const SalesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todaySales = ref.watch(todaySalesProvider);
    final tomorrowSales = ref.watch(tomorrowSalesProvider);
    final dayAfterSales = ref.watch(dayAfterSalesProvider);

    return Card(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              "売上の予想額",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SalesFormRow(
              day: todaySales.date.day,
              price: todaySales.price,
              onChanged: (value) {
                ref
                    .read(todaySalesProvider.notifier)
                    .changePrice(value.round() * 10000);
              },
            ),
            SalesFormRow(
              day: tomorrowSales.date.day,
              price: tomorrowSales.price,
              onChanged: (value) {
                ref
                    .read(tomorrowSalesProvider.notifier)
                    .changePrice(value.round() * 10000);
              },
            ),
            SalesFormRow(
              day: dayAfterSales.date.day,
              price: dayAfterSales.price,
              onChanged: (value) {
                ref
                    .read(dayAfterSalesProvider.notifier)
                    .changePrice(value.round() * 10000);
              },
            ),
          ],
        ),
      ),
    );
  }
}
