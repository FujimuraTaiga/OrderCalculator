import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:order_support/Provider/Item/item_provider.dart';
import 'package:order_support/Service/item_service.dart';
import 'package:order_support/UI/MainPage/AmountCard/item_card.dart';
import 'package:order_support/UI/OrderPage/order_page.dart';
import 'package:order_support/UI/MainPage/SalesCard/sales_card.dart';
import 'package:order_support/Model/Item/item.dart';

class MainPage extends ConsumerWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            const SalesCard(),
            FutureBuilder(
              future: ItemService().readItems(),
              builder: (context, AsyncSnapshot<List<Item>> snapshot) {
                if (snapshot.hasData) {
                  return Column(
                      children: snapshot.data!
                          .map((item) => ItemCard(item))
                          .toList());
                } else {
                  return const CircularProgressIndicator();
                }
              },
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                child: const Text("決定"),
                onPressed: () async {
                  final items = await ItemService().readItems();
                  final List<StateNotifierProvider<ItemProvider, ItemState>>
                      itemProviders = [];
                  for (final item in items) {
                    itemProviders.add(itemProviderFamily(item.id));
                  }
                  ItemService().createStock(
                      items: itemProviders
                          .map((provider) => ref.watch(provider).item)
                          .toList());
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrderPage(
                        itemProviders: itemProviders,
                      ),
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
