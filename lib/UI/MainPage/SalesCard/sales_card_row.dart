import 'package:flutter/material.dart';

class SalesFormRow extends StatelessWidget {
  const SalesFormRow({
    required this.day,
    required this.price,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  final int day;
  final int price;
  final void Function(double) onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          flex: 2,
          child: Text(
            "$day日",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        Flexible(
          flex: 3,
          child: Text(
            "${(price / 10000).round().toString()}万円",
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Flexible(
          flex: 7,
          child: Slider(
            value: (price / 10000).toDouble(),
            min: 0,
            max: 70,
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}
