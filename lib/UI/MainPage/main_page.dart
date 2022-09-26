import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:order_support/Controller/main_page_controller.dart';
import 'package:order_support/Firestore/order_firestore.dart';
import 'package:order_support/Provider/Item/item_provider.dart';
import 'package:order_support/Provider/Sales/sales_provider.dart';
import 'package:order_support/Firestore/item_firestore.dart';
import 'package:order_support/Firestore/sales_firestore.dart';
import 'package:order_support/Firestore/stock_firestore.dart';
import 'package:order_support/UI/MainPage/AmountCard/item_card.dart';
import 'package:order_support/UI/MainPage/SalesCard/sales_card_row.dart';
import 'package:order_support/UI/OrderPage/order_page.dart';

class MainPage extends ConsumerWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final salesIds = ref.watch(mainPageProvider).salesIds;
    final itemIds = ref.watch(mainPageProvider).itemIds;

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Card(
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
                    ...salesIds
                        .map((salesId) => SalesFormRow(salesId: salesId))
                        .toList()
                  ],
                ),
              ),
            ),
            Column(
              children: itemIds.map((itemId) => ItemCard(itemId)).toList(),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                child: const Text("決定"),
                onPressed: () async {
                  for (final itemId in itemIds) {
                    ref
                        .read(itemProviderFamily(itemId).notifier)
                        .changeOrderAmount(0);
                  }

                  int totalSales = 0;
                  for (final salesId in salesIds) {
                    final sales = ref.read(salesProviderFamily(salesId)).sales;
                    totalSales += sales.price;
                  }

                  int totalOrder = 0;
                  for (final itemId in itemIds) {
                    final item = ref.read(itemProviderFamily(itemId)).item;
                    final itemController =
                        ref.read(itemProviderFamily(itemId).notifier);
                    final value =
                        (item.todayStock + item.yesterdayOrderAmount) *
                            item.amountPerSales;
                    final minOrder =
                        ((totalSales - item.stockValue) / item.amountPerSales)
                            .ceil();
                    if (totalSales < value) {
                      itemController.changeOrderAmount(0);
                    } else {
                      ref
                          .read(itemProviderFamily(itemId).notifier)
                          .changeOrderAmount(minOrder);
                    }

                    totalOrder += ref
                        .read(itemProviderFamily(itemId))
                        .item
                        .todayOrderAmount;
                  }

                  int boxCount = (totalOrder / 12).ceil();
                  int need = (boxCount * 12) - totalOrder;

                  for (int i = 0; i < need; i++) {
                    String lackItemId = itemIds.first;
                    for (final itemId in itemIds) {
                      final item = ref.read(itemProviderFamily(itemId)).item;
                      final lackItem =
                          ref.read(itemProviderFamily(lackItemId)).item;
                      if (item.stockValue < lackItem.stockValue) {
                        lackItemId = item.id;
                      }
                    }
                    ref
                        .read(itemProviderFamily(lackItemId).notifier)
                        .incrementOrderAmount();
                  }

                  for (final salesId in salesIds) {
                    final sales = ref.read(salesProviderFamily(salesId)).sales;
                    await SalesFireStore().updateSales(sales);
                  }

                  for (final itemId in itemIds) {
                    final item = ref.read(itemProviderFamily(itemId)).item;
                    await ItemFireStore().updateItem(item);
                    await StockFireStore().writeStock(item);
                    await OrderFireStore().writeOrder(item);
                  }

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrderPage(
                        salesIds: ref.read(mainPageProvider).salesIds,
                        itemIds: ref.read(mainPageProvider).itemIds,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
