import 'package:flutter/material.dart';
import 'package:order_support/UI/SalesCard/sales_card_row.dart';

class SalesCard extends StatelessWidget {
  const SalesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            SalesFormRow.today(),
            SalesFormRow.tomorrow(),
            SalesFormRow.dayAfter(),
          ],
        ),
      ),
    );
  }
}
