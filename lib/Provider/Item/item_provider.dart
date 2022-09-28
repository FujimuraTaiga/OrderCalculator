import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:order_support/Model/Item/item.dart';
import 'package:order_support/Firestore/item_firestore.dart';
import 'package:order_support/Firestore/stock_firestore.dart';

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
        yesterdayOrderAmount: 0,
        todayOrderAmount: 0,
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
    final item = await ItemFireStore().readItemById(itemId);

    final todayStock = await StockFireStore().readTodayStock(itemId);

    state = state.copyWith(
      item: Item(
        id: item.id,
        name: item.name,
        image: item.image,
        sortOrder: item.sortOrder,
        amountPerSales: item.amountPerSales,
        todayStock: todayStock == null ? 0 : todayStock.amount,
        yesterdayOrderAmount: item.yesterdayOrderAmount,
        todayOrderAmount: item.todayOrderAmount,
      ),
    );
  }

  void changeTodayStock(int newAmount) {
    state = state.copyWith(item: state.item.changeTodayStock(newAmount));
  }

  void changeDeliveredAmount(int newAmount) {
    state = state.copyWith(item: state.item.changeDeliveryAmount(newAmount));
  }

  void changeOrderAmount(int newAmount) {
    state = state.copyWith(item: state.item.changeOrderAmount(newAmount));
  }

  void incrementOrderAmount() {
    state = state.copyWith(item: state.item.incrementOrderAmount());
  }

  void decrementOrderAmount() {
    state = state.copyWith(item: state.item.decrementOrderAmount());
  }
}

final itemProviderFamily = StateNotifierProvider.family
    .autoDispose<ItemProvider, ItemState, String>((ref, id) {
  return ItemProvider(id);
});
