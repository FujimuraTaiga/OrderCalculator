import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:order_support/Provider/item_list_provider.dart';
import 'package:order_support/Provider/supplier_tab_controller.dart';
import 'package:order_support/UI/StockPage/item_list_component.dart';

class StockPage extends ConsumerWidget {
  const StockPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final suppliers =
        ref.watch(supplierTabProvider.select((property) => property.suppliers));
    return TabBarView(
      children: [
        ...suppliers.map((supplier) {
          return ProviderScope(
            overrides: [
              itemListProvider
                  .overrideWithProvider(itemListProviderFamily(supplier.id))
            ],
            child: ItemListComponent(),
          );
        })
      ],
    );
  }
}
