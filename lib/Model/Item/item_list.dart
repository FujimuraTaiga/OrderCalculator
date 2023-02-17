import 'package:order_support/Firestore/item_firestore.dart';
import 'package:order_support/Firestore/stock_firestore.dart';
import 'package:order_support/Model/Item/item.dart';
import 'package:order_support/Model/Stock/stock.dart';

class ItemList {
  final String supplierId;
  final List<Item> items;
  factory ItemList.dummy() => ItemList(supplierId: "", items: []);

  List<String> get ids => items.map((item) => item.id).toList();

  const ItemList({
    required this.supplierId,
    required this.items,
  });

  void add(Item item) {
    items.add(item);
    ItemFireStore.create(supplierId: supplierId, item: item);
  }

  void save() {
    for (final item in items) {
      ItemFireStore.update(item);
      final stock = Stock(
        itemId: item.id,
        id: "id",
        date: DateTime.now(),
        amount: item.todayStock,
      );
      StockFireStore.create(stock);
    }
  }

  Item? findById(String id) {
    for (final item in items) {
      if (item.id == id) return item;
    }
    return null;
  }

  ItemList updateItem(Item newItem) {
    final List<Item> newItems = [];
    for (final item in items) {
      if (item.id == newItem.id)
        newItems.add(newItem);
      else
        newItems.add(item);
    }
    return ItemList(supplierId: supplierId, items: newItems);
  }

  void delete(String id) {
    final target = findById(id);
    if (null != target) ItemFireStore.delete(target);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ItemList &&
          runtimeType == other.runtimeType &&
          supplierId == other.supplierId &&
          items == other.items);

  @override
  int get hashCode => supplierId.hashCode ^ items.hashCode;

  @override
  String toString() {
    return 'ItemList{' + ' supplierId: $supplierId,' + ' items: $items,' + '}';
  }

  ItemList copyWith({
    String? supplierId,
    List<Item>? items,
  }) {
    return ItemList(
      supplierId: supplierId ?? this.supplierId,
      items: items ?? this.items,
    );
  }
}
