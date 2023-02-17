import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:order_support/Model/Stock/stock.dart';

class StockFireStore {
  static final fireStore = FirebaseFirestore.instance;
  static final storeId = "7QwYx0KaG9fr4ptrSPg6";

  static void create(Stock stock) async {
    final stockId = fireStore.collection('stock').doc().id;

    await fireStore
        .collection('stock')
        .doc(stockId)
        .set(stock.copyWith(id: stockId).toMap());
  }

  Future<List<Stock>> findAll(String itemId) async {
    final snapshot = await fireStore
        .collection('stock')
        .where('itemId', isEqualTo: itemId)
        .orderBy('date', descending: true)
        .get();

    return snapshot.docs.map((map) => Stock.fromMap(map.data())).toList();
  }

  Future<Stock> findById(String stockId) async {
    final stock = await await fireStore.collection('stock').doc(stockId).get();
    return Stock.fromMap(stock.data()!);
  }

  Future<void> update(Stock stock) async {
    fireStore.collection('stock').doc(stock.id).update(stock.toMap());
  }

  Future<void> delete(Stock stock) async {
    await fireStore.collection('stock').doc(stock.id).delete();
  }
}
