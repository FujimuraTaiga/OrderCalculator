import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:order_support/Model/Item/item.dart';
import 'package:order_support/Model/Stock/stock.dart';
import 'item_state.dart';

final porkProvider = StateNotifierProvider<ItemState, Item>(
  (ref) => ItemState(
    const Item(
      image: "pork",
      name: "豚",
      stock: Stock(today: 0, tomorrow: 0, dayAfter: 0),
      amountPerSales: 80000,
    ),
  ),
);

final beefProvider = StateNotifierProvider<ItemState, Item>(
  (ref) => ItemState(
    const Item(
      image: "beef",
      name: "牛",
      stock: Stock(today: 0, tomorrow: 0, dayAfter: 0),
      amountPerSales: 55000,
    ),
  ),
);

final chickenProvider = StateNotifierProvider<ItemState, Item>(
  (ref) => ItemState(
    const Item(
      image: "chicken",
      name: "鶏",
      stock: Stock(today: 0, tomorrow: 0, dayAfter: 0),
      amountPerSales: 65000,
    ),
  ),
);
