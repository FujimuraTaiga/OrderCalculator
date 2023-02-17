import 'package:cloud_firestore/cloud_firestore.dart';

import '../Model/Supplier/supplier.dart';

class SupplierFirestore {
  static final fireStore = FirebaseFirestore.instance;
  static final storeId = "7QwYx0KaG9fr4ptrSPg6";

  static void create(Supplier supplier) async {
    final supplierId = await fireStore
        .collection('store')
        .doc(storeId)
        .collection('supplier')
        .doc()
        .id;
    try {
      final newSupplier = supplier.copyWith(id: supplierId);
      await fireStore
          .collection('store')
          .doc(storeId)
          .collection('supplier')
          .doc(supplierId)
          .set(newSupplier.toMap());
    } catch (e) {
      print(e);
    }
  }

  static Future<List<Supplier>> findAll() async {
    final snapshot = await fireStore
        .collection("store")
        .doc(storeId)
        .collection("supplier")
        .get();
    final suppliers = snapshot.docs
        .map((supplier) => Supplier.fromMap(supplier.data()))
        .toList();
    return suppliers;
  }

  static Future<void> delete(String id) async {
    try {
      await fireStore
          .collection("store")
          .doc(storeId)
          .collection("supplier")
          .doc(id)
          .delete();
    } catch (e) {
      print(e);
    }
  }
}
