import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:order_support/Model/Item/item.dart';
import 'package:order_support/Service/item_service.dart';

part 'item_provider.freezed.dart';

@freezed
class ItemState with _$ItemState {
  const ItemState._();
  const factory ItemState({
    @Default(
      Item(
        id: 'id',
        name: 'name',
        amountPerSales: 1,
        sortOrder: 0,
        todayStock: 0,
        tomorrowStock: 0,
        dayAfterStock: 0,
      ),
    )
        Item item,
  }) = _ItemState;
}

class ItemProvider extends StateNotifier<ItemState> {
  ItemProvider(this.itemId) : super(const ItemState()) {
    init();
  }
  final String itemId;

  void init() {
    fetchData();
  }

  Future<void> fetchData() async {
    final item = await ItemService().readItemById(itemId);
    state = state.copyWith(
      item: item,
    );
  }

  void changeTodayStock(int newAmount) {
    state = state.copyWith(item: state.item.changeTodayStock(newAmount));
  }

  void changeTomorrowStock(int newAmount) {
    state = state.copyWith(item: state.item.changeTomorrowStock(newAmount));
  }
}

final itemProviderFamily =
    StateNotifierProvider.family<ItemProvider, ItemState, String>((ref, id) {
  return ItemProvider(id);
});

final itemProviders = ItemService().readItems().asStream().map((itemList) {
  itemList.map((item) {
    return itemProviderFamily(item.id);
  }).toList();
}).toList();
