import 'package:flutter/material.dart';

import 'package:order_support/Model/Item/item.dart';
import 'package:order_support/UI/MainPage/AmountCard/amount_row.dart';
import 'package:order_support/UI/MainPage/AmountCard/item_image.dart';
import 'package:order_support/Enum/date.dart';

class ItemCard extends StatelessWidget {
  const ItemCard(this.item, {Key? key}) : super(key: key);
  final Item item;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          children: [
            ItemImage(item.image),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Flexible(
                  flex: 1,
                  child: SizedBox(),
                ),
                Flexible(
                  flex: 30,
                  child: Column(
                    children: [
                      AmountRow(itemId: item.id, date: Date.today),
                      AmountRow(itemId: item.id, date: Date.tomorrow),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
