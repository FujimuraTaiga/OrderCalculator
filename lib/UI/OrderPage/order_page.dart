import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:order_support/Service/item_service.dart';
import 'package:order_support/Model/Item/item.dart';

import 'package:order_support/Provider/Item/item_provider.dart';

class OrderPage extends ConsumerWidget {
  const OrderPage({required this.itemProviders, Key? key}) : super(key: key);

  final List<StateNotifierProvider<ItemProvider, ItemState>> itemProviders;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FutureBuilder(
                  future: ItemService().readItems(),
                  builder: (context, AsyncSnapshot<List<Item>> snapshot) {
                    if (snapshot.hasData) {
                      return Column(
                        children: itemProviders.map((itemProvider) {
                          final item = ref.watch(itemProvider).item;
                          return Card(
                            child: Text("${item.name}: ${item.dayAfterStock}P"),
                          );
                        }).toList(),
                      );
                    } else {
                      return const CircularProgressIndicator();
                    }
                  }),
              ElevatedButton(
                  onPressed: () {
                    Navigator.popUntil(context, (route) => route.isFirst);
                  },
                  child: const Text("OK")),
            ],
          ),
        ),
      ),
    );
  }
}
