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
      'sortOrder': sortOrder,
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
      final stocks = await readStocks(item.id);
      if (stocks.isNotEmpty) {
        final stock = stocks.first;

        final stockDate = stock.date;
        final today = DateTime.now();

        if (stockDate.year == today.year &&
            stockDate.month == today.month &&
            stockDate.day == today.day) {
          fireStore
              .collection('stock')
              .doc(item.id)
              .collection('_')
              .doc(stock.id)
              .update({
            'id': stock.id,
            'date': Timestamp.fromDate(DateTime.now()),
            'amount': item.todayStock,
          });
        }
      } else {
        final stockId =
            fireStore.collection('stock').doc(item.id).collection('_').doc().id;
        fireStore
            .collection('stock')
            .doc(item.id)
            .collection('_')
            .doc(stockId)
            .set({
          'id': stockId,
          'date': Timestamp.fromDate(DateTime.now()),
          'amount': item.todayStock,
        });
      }
    }
  }

  Future<List<Stock>> readStocks(String itemId) async {
    final snapshot = await fireStore
        .collection('stock')
        .doc(itemId)
        .collection('_')
        .orderBy('date', descending: true)
        .get();
    return snapshot.docs.map((stock) => Stock.fromJson(stock.data())).toList();
  }
}
