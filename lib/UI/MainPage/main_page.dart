import 'package:flutter/material.dart';
import 'package:order_support/Provider/Item/item_provider.dart';
import 'package:order_support/UI/AmountCard/ItemCard.dart';
import 'package:order_support/UI/SalesCard/sales_card.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            const SalesCard(),
            ItemCard(porkProvider),
            ItemCard(beefProvider),
            ItemCard(chickenProvider),
          ],
        ),
      ),
    );
  }
}
