import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:order_support/Provider/item_list_provider.dart';
import 'package:order_support/Model/Supplier/supplier.dart';
import 'package:order_support/UI/Common/Text/text_medeum.dart';
import 'package:order_support/UI/Common/Text/text_small.dart';
import 'package:order_support/UI/SettingPage/Supplier/supplier_detail_page.dart';

class SupplierCard extends ConsumerWidget {
  const SupplierCard(this.supplier);
  final Supplier supplier;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      child: Card(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.12,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextSmall(supplier.id),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(flex: 7, child: TextMedium(supplier.name)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return ProviderScope(
              overrides: [
                itemListProvider
                    .overrideWithProvider(itemListProviderFamily(supplier.id))
              ],
              child: SupplierDetailPage(),
            );
          }),
        );
      },
    );
  }
}
