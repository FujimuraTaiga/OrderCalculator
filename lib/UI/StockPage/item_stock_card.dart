import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:order_support/Provider/item_list_provider.dart';
import 'package:order_support/UI/Common/Text/text_large.dart';
import 'package:order_support/UI/Common/Text/text_medeum.dart';

import 'package:order_support/UI/Common/Text/text_small.dart';

import 'package:order_support/Model/Item/item.dart';

class ItemStockCard extends ConsumerWidget {
  ItemStockCard(this.itemId);
  final String itemId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemList = ref.watch(itemListProvider);
    final item = itemList.findById(itemId) ?? Item.create("supplierId");

    return Card(
      elevation: 2,
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            //ItemImage(image: item.image),
            TextLarge(item.name),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(),
                TextMedium("在庫数: ${item.todayStock}"),
                deleteButton(ref),
              ],
            ),
            SizedBox(
              height: 60,
              child: Row(
                children: [
                  numberButton(ref, 0),
                  numberButton(ref, 1),
                  numberButton(ref, 2),
                  numberButton(ref, 3),
                  numberButton(ref, 4),
                ],
              ),
            ),
            SizedBox(
              height: 60,
              child: Row(
                children: [
                  numberButton(ref, 5),
                  numberButton(ref, 6),
                  numberButton(ref, 7),
                  numberButton(ref, 8),
                  numberButton(ref, 9),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget numberButton(WidgetRef ref, int num) {
    return Flexible(
      flex: 1,
      child: GestureDetector(
        child: Card(
          elevation: 5,
          margin: EdgeInsets.all(4.0),
          child: Center(child: TextSmall("$num")),
        ),
        onTap: () {
          final item = ref.read(itemListProvider).findById(itemId);
          if (null == item) return;

          final before = item.todayStock;
          final after = before * 10 + num;
          ref
              .read(itemListProvider.notifier)
              .update(item.copyWith(todayStock: after));
        },
      ),
    );
  }

  Widget deleteButton(WidgetRef ref) {
    return Flexible(
      flex: 1,
      child: Card(
        elevation: 0,
        child: GestureDetector(
          child: Icon(Icons.backspace),
          onTap: () {
            final item = ref.read(itemListProvider).findById(itemId);
            if (null == item) return;

            final before = item.todayStock;
            final after = (before / 10).floor();
            ref
                .read(itemListProvider.notifier)
                .update(item.copyWith(todayStock: after));
          },
        ),
      ),
    );
  }
}
