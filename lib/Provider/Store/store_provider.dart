import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:order_support/Model/Sales/sales.dart';
import 'package:order_support/Model/Item/item.dart';
import 'package:order_support/Model/Store/store.dart';
import 'package:order_support/Provider/Item/item_provider.dart';
import 'package:order_support/Provider/Sales/sales_provider.dart';
import 'package:order_support/Provider/Store/store_state.dart';

final storeProvider = StateNotifierProvider<StoreState, Store>((ref) {
  final List<Item> items = [
    ref.watch(porkProvider),
    ref.watch(beefProvider),
    ref.watch(chickenProvider),
  ];
  final List<Sales> sales = [
    ref.watch(todaySalesProvider),
    ref.watch(tomorrowSalesProvider),
    ref.watch(dayAfterSalesProvider),
  ];

  return StoreState(
    Store(items: items, sales: sales),
  );
});
