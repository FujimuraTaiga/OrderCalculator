import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:order_support/Firestore/item_firestore.dart';
import 'package:order_support/Firestore/order_firestore.dart';

import 'package:order_support/Provider/Item/item_provider.dart';
import 'package:order_support/Provider/Sales/sales_provider.dart';
import 'package:order_support/UI/MainPage/AmountCard/item_image.dart';

class OrderPage extends ConsumerWidget {
  const OrderPage({
    required this.salesIds,
    required this.itemIds,
    Key? key,
  }) : super(key: key);

  final List<String> salesIds;
  final List<String> itemIds;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int totalSales = 0;
    for (final salesId in salesIds) {
      totalSales += ref.read(salesProviderFamily(salesId)).sales.price;
    }

    int totalOrder = 0;
    for (final itemId in itemIds) {
      totalOrder += ref.read(itemProviderFamily(itemId)).item.todayOrderAmount;
    }

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Text(
                    '発注量',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Column(
                  children: itemIds.map(
                    (itemId) {
                      final item = ref.watch(itemProviderFamily(itemId)).item;
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    flex: 3,
                                    child: ItemImage(item.image),
                                  ),
                                  Flexible(
                                    flex: 10,
                                    child: Column(
                                      children: [
                                        Text(
                                          '${item.todayOrderAmount}P',
                                          style: const TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Flexible(
                                    flex: 2,
                                    child: Column(
                                      children: [
                                        IconButton(
                                          icon: const Icon(
                                            Icons.arrow_drop_up_sharp,
                                          ),
                                          onPressed: () {
                                            ref
                                                .read(itemProviderFamily(itemId)
                                                    .notifier)
                                                .incrementOrderAmount();
                                          },
                                        ),
                                        IconButton(
                                          icon: const Icon(
                                            Icons.arrow_drop_down_sharp,
                                          ),
                                          onPressed: () {
                                            ref
                                                .read(itemProviderFamily(itemId)
                                                    .notifier)
                                                .decrementOrderAmount();
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                  '(${item.todayStock} + ${item.yesterdayOrderAmount} + ${item.todayOrderAmount})P × ${item.amountPerSales}円 = ${(item.stockValue / 1000).round() / 10}万円分',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                          ),
                        ),
                      );
                    },
                  ).toList(),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Text(
                '3日間の売上合計: ${(totalSales / 10000).ceil()}万円',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Text(
                '発注量合計: $totalOrder P',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                for (final itemId in itemIds) {
                  final item = ref.read(itemProviderFamily(itemId)).item;
                  ItemFireStore().updateItem(item);
                  OrderFireStore().writeOrder(item);
                }
                Navigator.pop(context);
              },
              child: const Text("OK"),
            ),
          ],
        ),
      ),
    );
  }
}
