import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:order_support/Firestore/sales_firestore.dart';
import 'package:order_support/Provider/sales_provider.dart';
import 'package:order_support/UI/Common/Text/text_large.dart';

import '../../Model/Sales/sales.dart';

class SalesForm extends ConsumerWidget {
  SalesForm({Key? key}) : super(key: key);

  final priceProvider = StateProvider<int>((ref) => 0);
  final double size = 100.0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final price = ref.watch(priceProvider);
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.65,
        width: MediaQuery.of(context).size.width * 0.85,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(Icons.close),
                    )
                  ],
                ),
                TextLarge("$price円"),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        numberButton(ref, 1),
                        numberButton(ref, 2),
                        numberButton(ref, 3),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        numberButton(ref, 4),
                        numberButton(ref, 5),
                        numberButton(ref, 6),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        numberButton(ref, 7),
                        numberButton(ref, 8),
                        numberButton(ref, 9),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        okButton(ref, context, price),
                        numberButton(ref, 0),
                        deleteButton(ref),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget numberButton(WidgetRef ref, int num) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
        height: size,
        width: size,
        child: ElevatedButton(
          child: TextLarge("$num"),
          onPressed: () => onNumberPressed(ref, num),
        ),
      ),
    );
  }

  Widget okButton(WidgetRef ref, BuildContext context, int price) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
        height: size,
        width: size,
        child: ElevatedButton(
          child: TextLarge("OK"),
          onPressed: () => onOkPressed(ref, context, price),
        ),
      ),
    );
  }

  Widget deleteButton(WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
        height: size,
        width: size,
        child: ElevatedButton(
          child: Icon(Icons.backspace),
          onPressed: () => onDeletePressed(ref),
        ),
      ),
    );
  }

  void onNumberPressed(WidgetRef ref, int num) {
    final before = ref.read(priceProvider);
    final after = before * 10 + num;
    ref.read(priceProvider.notifier).update((state) => after);
  }

  void onOkPressed(WidgetRef ref, BuildContext context, int num) async {
    await SalesFireStore.create(
      Sales(price: num, date: DateTime.now(), id: ''),
    );
    ref.read(salesListProvider.notifier).fetch();
    Navigator.pop(context);
  }

  void onDeletePressed(WidgetRef ref) {
    final before = ref.read(priceProvider);
    final after = (before / 10).floor();
    ref.read(priceProvider.notifier).update((state) => after);
  }
}
