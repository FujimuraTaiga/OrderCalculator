import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:order_support/Provider/Order/oder_provider.dart';

class OrderPage extends ConsumerWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final order = ref.watch(orderProvider.notifier);

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("豚: ${order.pork.amountOfOrder}P"),
              Text("牛: ${order.beef.amountOfOrder}P"),
              Text("鶏: ${order.chicken.amountOfOrder}P"),
              ElevatedButton(
                onPressed: () {
                  int need = 12 - (order.totalAmount % 12);
                  print(need);
                },
                child: const Text("更新"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
