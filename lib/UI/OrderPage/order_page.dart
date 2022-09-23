import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:order_support/Provider/order_page_controller.dart';

class OrderPage extends ConsumerWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(orderPageController);

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("${state.pork.name}: ${state.pork.stock.dayAfter}P"),
              Text("${state.beef.name}: ${state.beef.stock.dayAfter}P"),
              Text("${state.chicken.name}: ${state.chicken.stock.dayAfter}P"),
              ElevatedButton(onPressed: () {}, child: const Text("")),
            ],
          ),
        ),
      ),
    );
  }
}
