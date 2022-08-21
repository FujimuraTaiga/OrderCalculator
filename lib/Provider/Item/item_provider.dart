import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:order_support/Model/Item/item.dart';
import 'package:order_support/Model/Stock/stock.dart';
import 'item_state.dart';

final porkProvider = StateNotifierProvider<ItemState, Item>(
  (ref) => ItemState(
    const Item(
      name: "pork",
      stock: Stock(today: 0, tomorrow: 0, dayAfter: 0),
      amountPerSales: 80000,
    ),
  ),
);

final beefProvider = StateNotifierProvider<ItemState, Item>(
  (ref) => ItemState(
    const Item(
      name: "beef",
      stock: Stock(today: 0, tomorrow: 0, dayAfter: 0),
      amountPerSales: 55000,
    ),
  ),
);

final chickenProvider = StateNotifierProvider<ItemState, Item>(
  (ref) => ItemState(
    const Item(
      name: "chicken",
      stock: Stock(today: 0, tomorrow: 0, dayAfter: 0),
      amountPerSales: 65000,
    ),
  ),
);
