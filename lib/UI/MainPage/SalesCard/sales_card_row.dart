import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:order_support/Provider/Sales/sales_provider.dart';

class SalesFormRow extends ConsumerWidget {
  const SalesFormRow({
    required this.salesId,
    Key? key,
  }) : super(key: key);

  final String salesId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sales = ref.watch(salesProviderFamily(salesId)).sales;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          flex: 2,
          child: Text(
            "${sales.date.day}日",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        Flexible(
          flex: 3,
          child: Text(
            "${(sales.price / 10000).round().toString()}万円",
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Flexible(
          flex: 7,
          child: Slider(
            value: (sales.price / 10000).toDouble(),
            min: 0,
            max: 70,
            onChanged: (value) {
              ref
                  .read(salesProviderFamily(salesId).notifier)
                  .changeSales(value.ceil() * 10000);
            },
          ),
        ),
      ],
    );
  }
}
