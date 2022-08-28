import 'package:flutter/material.dart';
import 'package:order_support/Provider/Item/item_provider.dart';
import 'package:order_support/UI/AmountCard/item_card.dart';
import 'package:order_support/UI/OrderPage/order_page.dart';
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
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                child: const Text("決定"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OrderPage(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
