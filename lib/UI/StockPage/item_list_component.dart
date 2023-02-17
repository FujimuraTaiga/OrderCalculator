import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:order_support/Provider/item_list_provider.dart';
import 'package:order_support/UI/StockPage/item_stock_card.dart';

class ItemListComponent extends ConsumerWidget {
  const ItemListComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemList = ref.watch(itemListProvider);
    return ListView(
      children: [
        ...itemList.ids.map((itemId) => ItemStockCard(itemId)),
        if (itemList.items.length != 0)
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              child: const Text("決定"),
              onPressed: () {
                ref.read(itemListProvider.notifier).save();
              },
            ),
          ),
      ],
    );
  }
}
