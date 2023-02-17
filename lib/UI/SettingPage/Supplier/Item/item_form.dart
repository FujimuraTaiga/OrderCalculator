import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:order_support/Provider/item_list_provider.dart';
import 'package:order_support/Model/Item/item.dart';
import 'package:order_support/UI/Common/Text/text_medeum.dart';
import 'package:order_support/UI/Common/Text/text_small.dart';

class ItemForm extends ConsumerWidget {
  const ItemForm(this.supplierId) : super();
  final String supplierId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = TextEditingController();
    return Center(
      child: Card(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width * 0.9,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextMedium("品目の追加"),
                TextField(controller: controller),
                TextButton(
                  child: TextSmall("OK"),
                  onPressed: () async {
                    final item = Item.create(supplierId);
                    ref
                        .read(itemListProvider.notifier)
                        .create(item.copyWith(name: controller.text));
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
