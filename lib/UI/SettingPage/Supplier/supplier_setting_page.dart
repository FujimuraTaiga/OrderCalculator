import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:order_support/Provider/supplier_tab_controller.dart';
import 'package:order_support/Model/Supplier/supplier.dart';
import 'package:order_support/UI/Common/Text/text_small.dart';
import 'package:order_support/UI/Common/Text/text_medeum.dart';
import 'package:order_support/UI/SettingPage/Supplier/supplier_card.dart';

class SupplierSettingPage extends ConsumerWidget {
  const SupplierSettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final suppliers =
        ref.watch(supplierTabProvider.select((value) => value.suppliers));
    final textEditingController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return Center(
                    child: Card(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.3,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Padding(
                          padding: const EdgeInsets.all(32.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextMedium("業者名"),
                              TextField(controller: textEditingController),
                              TextButton(
                                child: TextSmall("OK"),
                                onPressed: () async {
                                  final supplier = Supplier.create(
                                      textEditingController.text);
                                  ref
                                      .read(supplierTabProvider.notifier)
                                      .createNewSupplier(supplier);
                                  await ref
                                      .read(supplierTabProvider.notifier)
                                      .fetch();
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            ...suppliers.map((supplier) => SupplierCard(supplier)).toList(),
          ],
        ),
      ),
    );
  }
}
