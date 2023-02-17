import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:order_support/Firestore/item_firestore.dart';
import 'package:order_support/Model/Item/item_list.dart';

import 'package:order_support/Model/Item/item.dart';

class ItemListProvider extends StateNotifier<ItemList> {
  ItemListProvider(this.supplierId) : super(ItemList.dummy()) {
    fetch();
  }

  final String supplierId;

  Future<void> fetch() async {
    final itemList = await ItemFireStore.findAll(supplierId: supplierId);
    state = itemList;
  }

  void create(Item item) async {
    await ItemFireStore.create(supplierId: supplierId, item: item);
    fetch();
  }

  Item? findById(String id) {
    return state.findById(id);
  }

  void delete(Item item) {
    ItemFireStore.delete(item);
    fetch();
  }

  void update(Item item) {
    state = state.updateItem(item);
  }

  Future<void> save() async {
    state.save();
  }
}

final itemListProvider =
    StateNotifierProvider<ItemListProvider, ItemList>((ref) {
  throw UnimplementedError();
});

final itemListProviderFamily =
    StateNotifierProvider.family<ItemListProvider, ItemList, String>((ref, id) {
  return ItemListProvider(id);
});
