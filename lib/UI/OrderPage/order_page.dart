import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:order_support/Model/Item/item.dart';
import 'package:order_support/Provider/Store/store_provider.dart';

class OrderPage extends ConsumerWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final store = ref.watch(storeProvider);
    final storeState = ref.watch(storeProvider.notifier);

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...itemList(store.items),
              ElevatedButton(
                onPressed: () {
                  storeState.adjustOrder();
                },
                child: const Text("更新"),
              )
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> itemList(List<Item> items) {
    final List<Widget> itemList = [];
    for (final item in items) {
      itemList.add(
        Text("${item.name}: ${item.stock.dayAfter}P"),
      );
    }
    return itemList;
  }
}
