import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:order_support/Model/Item/item.dart';
import 'package:order_support/Provider/Item/item_state.dart';
import 'package:order_support/Provider/Sales/sales_provider.dart';
import 'package:order_support/UI/AmountCard/amount_row.dart';
import 'package:order_support/UI/AmountCard/item_image.dart';

class ItemCard extends ConsumerWidget {
  const ItemCard(this.itemProvider, {Key? key}) : super(key: key);
  final StateNotifierProvider<ItemState, Item> itemProvider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final item = ref.watch(itemProvider);
    final todaySales = ref.watch(todaySalesProvider).getPrice;
    final tomorrowSales = ref.watch(tomorrowSalesProvider).getPrice;
    final dayAfterSales = ref.watch(dayAfterSalesProvider).getPrice;
    int sumOfSales = todaySales + tomorrowSales + dayAfterSales;

    return Card(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 6,
              child: ItemImage(item.name),
            ),
            const Flexible(
              flex: 2,
              child: SizedBox(),
            ),
            Flexible(
              flex: 30,
              child: Column(
                children: [
                  AmountRow.today(itemProvider),
                  AmountRow.tomorrow(itemProvider),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
