import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:order_support/Model/Item/item.dart';
import 'package:order_support/Model/Stock/stock.dart';

class StockFireStore {
  final fireStore = FirebaseFirestore.instance;

  Future<void> createStock({
    required Item item,
  }) async {
    final stockId =
        fireStore.collection('stock').doc(item.id).collection('_').doc().id;
    final stock =
        Stock(id: stockId, date: DateTime.now(), amount: item.todayStock);
    fireStore
        .collection('stock')
        .doc(item.id)
        .collection('_')
        .doc(stockId)
        .set({
      'id': stockId,
      'date': Timestamp.fromDate(stock.date),
      'amount': stock.amount,
    });
  }

  Future<void> updateStock({
    required String itemId,
    required Stock stock,
  }) async {
    fireStore
        .collection('stock')
        .doc(itemId)
        .collection('_')
        .doc(stock.id)
        .update({
      'id': stock.id,
      'date': Timestamp.fromDate(stock.date),
      'amount': stock.amount,
    });
  }

  Future<void> writeStock(Item item) async {
    if (await existTodayStock(item.id)) {
      final stock = await readTodayStock(item.id);
      updateStock(
        itemId: item.id,
        stock: Stock(id: stock!.id, date: stock.date, amount: item.todayStock),
      );
    } else {
      createStock(item: item);
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

  Future<bool> existTodayStock(String itemId) async {
    final stocks = await readStocks(itemId);
    if (stocks.isEmpty) {
      return false;
    } else {
      final recentStockDate = stocks.first.date;
      final today = DateTime.now();
      return recentStockDate.year == today.year &&
          recentStockDate.month == today.month &&
          recentStockDate.day == today.day;
    }
  }

  Future<Stock?> readTodayStock(String itemId) async {
    if (await existTodayStock(itemId)) {
      final stocks = await readStocks(itemId);
      return stocks.first;
    } else {
      return null;
    }
  }
}
