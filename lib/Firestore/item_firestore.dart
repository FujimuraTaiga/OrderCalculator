import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:order_support/Model/Item/item.dart';

class ItemFireStore {
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

  Future<void> updateItem(Item item) async {
    await fireStore.collection('item').doc(item.id).update(item.toJson());
  }

  Future<Item> readItemById(itemId) async {
    final snapshot = await fireStore.collection('item').doc(itemId).get();
    if (snapshot.exists) {
      return Item.fromJson(snapshot.data()!);
    } else {
      return const Item(
        id: 'id',
        name: 'question',
        image: 'beef',
        sortOrder: 0,
        amountPerSales: 1,
        todayStock: 0,
        yesterdayOrderAmount: 0,
        todayOrderAmount: 0,
      );
    }
  }

  Future<List<Item>> readItems() async {
    final snapshot =
        await fireStore.collection('item').orderBy('sortOrder').get();
    final itemList =
        snapshot.docs.map((item) => Item.fromJson(item.data())).toList();
    return itemList;
  }
}
