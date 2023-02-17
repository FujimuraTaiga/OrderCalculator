import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:order_support/Provider/item_list_provider.dart';
import 'package:order_support/Provider/supplier_tab_controller.dart';
import '../../Common/Text/text_small.dart';
import 'Item/ItemCard.dart';
import 'Item/item_form.dart';

class SupplierDetailPage extends ConsumerWidget {
  const SupplierDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemList = ref.watch(itemListProvider);
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              showDialog(
                context: context,
                builder: (_) => SizedBox(
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: ProviderScope(
                    overrides: [
                      itemListProvider.overrideWithProvider(
                          itemListProviderFamily(itemList.supplierId)),
                    ],
                    child: ItemForm(itemList.supplierId),
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          ...itemList.ids.map((itemId) {
            return ItemCard(itemId);
          }),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red),
            ),
            child: TextSmall("この業者を削除する"),
            onPressed: () {
              ref
                  .read(supplierTabProvider.notifier)
                  .deleteSupplier(itemList.supplierId);
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
