import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:order_support/Model/Order/order.dart';

class OrderFireStore {
  final fireStore = FirebaseFirestore.instance;
  final storeId = "7QwYx0KaG9fr4ptrSPg6";

  void create({
    required Order order,
  }) async {
    final orderId = fireStore
        .collection('store')
        .doc(storeId)
        .collection('supplier')
        .doc(order.supplierId)
        .collection('item')
        .doc(order.itemId)
        .collection('order')
        .doc()
        .id;

    await fireStore
        .collection('store')
        .doc(storeId)
        .collection('supplier')
        .doc(order.supplierId)
        .collection('item')
        .doc(order.itemId)
        .collection('order')
        .doc(orderId)
        .set(order.copyWith(id: orderId).toMap());
  }

  Future<List<Order>> findAll({
    required String supplierId,
    required String itemId,
  }) async {
    final snapshot = await fireStore
        .collection('store')
        .doc(storeId)
        .collection('supplier')
        .doc(supplierId)
        .collection('item')
        .doc(itemId)
        .collection('order')
        .orderBy('date', descending: true)
        .get();

    return snapshot.docs.map((order) => Order.fromMap(order.data())).toList();
  }

  Future<Order> findById({
    required String supplierId,
    required String itemId,
    required String orderId,
  }) async {
    final order = await await fireStore
        .collection('store')
        .doc(storeId)
        .collection('supplier')
        .doc(supplierId)
        .collection('item')
        .doc(itemId)
        .collection('order')
        .doc(orderId)
        .get();
    return Order.fromMap(order.data()!);
  }

  Future<void> update({
    required Order order,
  }) async {
    fireStore
        .collection('store')
        .doc(storeId)
        .collection('supplier')
        .doc(order.supplierId)
        .collection('item')
        .doc(order.itemId)
        .collection('order')
        .doc(order.id)
        .update(order.toMap());
  }

  Future<void> delete({required Order order}) async {
    await fireStore
        .collection('store')
        .doc(storeId)
        .collection('supplier')
        .doc(order.supplierId)
        .collection('item')
        .doc(order.itemId)
        .collection('order')
        .doc(order.id)
        .delete();
  }
}
