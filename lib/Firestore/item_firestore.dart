import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:order_support/Model/Item/item.dart';
import 'package:order_support/Model/Item/item_list.dart';

class ItemFireStore {
  static final fireStore = FirebaseFirestore.instance;
  static final storeId = "7QwYx0KaG9fr4ptrSPg6";

  static Future<void> create({
    required String supplierId,
    required Item item,
  }) async {
    final itemId = await fireStore
        .collection('store')
        .doc(storeId)
        .collection('supplier')
        .doc(supplierId)
        .collection('item')
        .doc()
        .id;

    await fireStore
        .collection('store')
        .doc(storeId)
        .collection('supplier')
        .doc(supplierId)
        .collection('item')
        .doc(itemId)
        .set(item.copyWith(id: itemId).toMap());
  }

  static Future<ItemList> findAll({required String supplierId}) async {
    try {
      final snapshot = await fireStore
          .collection('store')
          .doc(storeId)
          .collection('supplier')
          .doc(supplierId)
          .collection('item')
          .orderBy('salesFloorIndex')
          .get();
      final itemList =
          snapshot.docs.map((item) => Item.fromMap(item.data())).toList();
      return ItemList(supplierId: supplierId, items: itemList);
    } catch (e) {
      print("from: ItemFireStore.findAll(), message: $e");
      return ItemList.dummy();
    }
  }

  static Future<Item> findById({
    required String itemId,
    required String supplierId,
  }) async {
    try {
      final snapshot = await fireStore
          .collection('store')
          .doc(storeId)
          .collection('supplier')
          .doc(supplierId)
          .collection('item')
          .doc(itemId)
          .get();
      return Item.fromMap(snapshot.data()!);
    } catch (e) {
      print("from: ItemFireStore.findById(), message: $e");
      return Item.dummy();
    }
  }

  static Future<void> update(Item item) async {
    try {
      await fireStore
          .collection('store')
          .doc(storeId)
          .collection('supplier')
          .doc(item.supplierId)
          .collection('item')
          .doc(item.id)
          .set(item.toMap());
    } catch (e) {
      print("ItemFireStore.update() => $e");
    }
  }

  static Future<void> delete(Item item) async {
    try {
      await fireStore
          .collection('store')
          .doc(storeId)
          .collection('supplier')
          .doc(item.supplierId)
          .collection('item')
          .doc(item.id)
          .delete();
    } catch (e) {
      print("from: ItemFireStore.delete(), message: $e");
    }
  }
}
