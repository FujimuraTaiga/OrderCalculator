import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:order_support/Model/Item/item.dart';
import 'package:order_support/Model/Stock/stock.dart';

class ItemService {
  final fireStore = FirebaseFirestore.instance;

  Future<void> createItem({
    required String name,
    required String image,
    required int sortOrder,
    required int amountPerSales,
  }) async {
    final itemId = fireStore.collection('item').doc().id;
    await fireStore.collection('item').doc(itemId).set({
      'id': itemId,
      'name': name,
      'image': image,
      'sort_order': sortOrder,
      'amountPerSales': amountPerSales,
    });
  }

  Future<Item> readItemById(itemId) async {
    final item = await fireStore.collection('item').doc(itemId).get();
    return Item.fromJson(item.data()!);
  }

  Future<List<Item>> readItems() async {
    final snapshot = await fireStore.collection('item').get();
    final itemList =
        snapshot.docs.map((item) => Item.fromJson(item.data())).toList();
    itemList.sort((a, b) => a.sortOrder.compareTo(b.sortOrder));
    return itemList;
  }

  Future<void> createStock({
    required List<Item> items,
  }) async {
    for (final item in items) {
      final stockId = fireStore
          .collection('item')
          .doc(item.id)
          .collection('stock')
          .doc()
          .id;
      await fireStore
          .collection('item')
          .doc(item.id)
          .collection('stock')
          .doc(stockId)
          .set({
        'id': stockId,
        'date': Timestamp.fromDate(DateTime.now()),
        'amount': item.todayStock,
      });
    }
  }

  Future<void> updateStock({
    required String stockId,
    required List<Item> items,
  }) async {}

  Future<List<Stock>> readStocks(String itemId) async {
    final snapshot = await fireStore
        .collection('item')
        .doc(itemId)
        .collection('stock')
        .get();
    return snapshot.docs.map((stock) => Stock.fromJson(stock.data())).toList();
  }
}
