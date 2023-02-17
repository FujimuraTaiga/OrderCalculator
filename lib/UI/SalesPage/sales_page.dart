import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:order_support/Firestore/sales_firestore.dart';

import 'package:order_support/Provider/sales_provider.dart';
import 'package:order_support/UI/Common/Text/text_medeum.dart';
import 'package:order_support/UI/Common/Text/text_small.dart';

class SalesPage extends ConsumerWidget {
  const SalesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final salesList =
        ref.watch(salesListProvider.select((value) => value.salesList.getAll));
    return ListView(
      children: [
        ...salesList.map(
          (sales) => GestureDetector(
            onTap: () {},
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextSmall("${sales.date.day}日"),
                        TextMedium("${sales.price}円"),
                        IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () {
                            SalesFireStore.delete(salesId: sales.id);
                            ref.read(salesListProvider.notifier).fetch();
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
