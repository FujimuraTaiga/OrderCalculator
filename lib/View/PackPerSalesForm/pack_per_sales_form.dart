import 'package:flutter/material.dart';

import 'package:order_support/View/PackPerSalesForm/pack_per_sales_text.dart';

class PackPerSalesForm extends StatelessWidget {
  const PackPerSalesForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        PackPerSalesText(),
      ],
    );
  }
}

class PriceForm extends StatelessWidget {
  const PriceForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

      ],
    );
  }
}

