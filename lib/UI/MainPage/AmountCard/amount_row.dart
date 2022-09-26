import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:order_support/Provider/Item/item_provider.dart';
import 'package:order_support/Enum/date.dart';

class AmountRow extends ConsumerWidget {
  const AmountRow({
    required this.itemId,
    required this.date,
    Key? key,
  }) : super(key: key);

  final String itemId;
  final Date date;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final item = ref.watch(itemProviderFamily(itemId)).item;

    return Row(
      children: [
        Flexible(
          flex: 6,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                date == Date.today ? "在庫数:" : "納品予定:",
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                date == Date.today
                    ? "${item.todayStock}P"
                    : "${item.yesterdayOrderAmount}P",
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Flexible(
            flex: 12,
            child: Slider(
                value: date == Date.today
                    ? item.todayStock.toDouble()
                    : item.yesterdayOrderAmount.toDouble(),
                min: 0,
                max: 15,
                onChanged: (value) {
                  if (date == Date.today) {
                    ref
                        .read(itemProviderFamily(itemId).notifier)
                        .changeTodayStock(value.ceil());
                  } else {
                    ref
                        .read(itemProviderFamily(itemId).notifier)
                        .changeDeliveredAmount(value.ceil());
                  }
                })),
      ],
    );
  }
}
