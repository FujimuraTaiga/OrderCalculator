import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:order_support/Provider/item_list_provider.dart';
import 'package:order_support/UI/Common/Text/text_large.dart';

import 'package:order_support/Model/Item/item.dart';

class ItemCard extends ConsumerWidget {
  ItemCard(this.itemId);
  final String itemId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemList = ref.watch(itemListProvider);
    final item = itemList.findById(itemId) ?? Item.create("supplierId");

    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //ItemImage(image: item.image),
            TextLarge(item.name),
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                ref.read(itemListProvider.notifier).delete(item);
              },
            ),
          ],
        ),
      ),
    );
  }
}
