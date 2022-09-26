import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:order_support/Provider/Sales/sales_provider.dart';
import 'package:order_support/UI/MainPage/SalesCard/sales_card_row.dart';

class SalesCard extends ConsumerWidget {
  const SalesCard({
    required this.salesIds,
    Key? key,
  }) : super(key: key);

  final List<String> salesIds;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              "売上の予想額",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            ...salesIds.map((salesId) {
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
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
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
                            .changeSales((value * 10000).ceil());
                      },
                    ),
                  ),
                ],
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
