import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:order_support/Model/Sales/sales.dart';
import 'package:order_support/Model/Sales/sales_list.dart';

class SalesFireStore {
  static final fireStore = FirebaseFirestore.instance;
  static final storeId = "7QwYx0KaG9fr4ptrSPg6";

  static Future<void> create(Sales sales) async {
    final salesId = await fireStore
        .collection('store')
        .doc(storeId)
        .collection('sales')
        .doc()
        .id;

    await fireStore
        .collection('store')
        .doc(storeId)
        .collection('sales')
        .doc(salesId)
        .set(sales.copyWith(id: salesId).toMap());
  }

  static Future<SalesList> findAll() async {
    final snapshot = await fireStore
        .collection('store')
        .doc(storeId)
        .collection('sales')
        .orderBy('date')
        .get();
    final salesList =
        snapshot.docs.map((sales) => Sales.fromMap(sales.data())).toList();
    return SalesList(salesList);
  }

  static Future<Sales> findById({required String salesId}) async {
    final snapshot = await fireStore
        .collection('store')
        .doc(storeId)
        .collection('sales')
        .doc(salesId)
        .get();
    return Sales.fromMap(snapshot.data()!);
  }

  static Future<void> update({required Sales sales}) async {
    await fireStore
        .collection('store')
        .doc(storeId)
        .collection('sales')
        .doc(sales.id)
        .update(sales.toMap());
  }

  static Future<void> delete({
    required String salesId,
  }) async {
    await fireStore
        .collection('store')
        .doc(storeId)
        .collection('sales')
        .doc(salesId)
        .delete();
  }
}
