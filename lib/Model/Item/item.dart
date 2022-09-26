import 'package:freezed_annotation/freezed_annotation.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@freezed
class Item with _$Item {
  const Item._();
  const factory Item({
    required String id,
    required String name,
    required int sortOrder,
    @Default('question') String image,
    required int amountPerSales,
    @Default(0) int todayStock,
    @Default(0) int yesterdayOrderAmount,
    @Default(0) int todayOrderAmount,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$_Item.fromJson(json);

  int get stockValue =>
      (todayStock + yesterdayOrderAmount + todayOrderAmount) * amountPerSales;

  Item changeTodayStock(int newAmount) {
    return Item(
      id: id,
      name: name,
      sortOrder: sortOrder,
      image: image,
      amountPerSales: amountPerSales,
      todayStock: newAmount,
      yesterdayOrderAmount: yesterdayOrderAmount,
      todayOrderAmount: todayOrderAmount,
    );
  }

  Item changeDeliveryAmount(int newAmount) {
    return Item(
      id: id,
      name: name,
      sortOrder: sortOrder,
      image: image,
      amountPerSales: amountPerSales,
      todayStock: todayStock,
      yesterdayOrderAmount: newAmount,
      todayOrderAmount: todayOrderAmount,
    );
  }

  Item changeOrderAmount(int newAmount) {
    return Item(
      id: id,
      name: name,
      sortOrder: sortOrder,
      image: image,
      amountPerSales: amountPerSales,
      todayStock: todayStock,
      yesterdayOrderAmount: yesterdayOrderAmount,
      todayOrderAmount: newAmount,
    );
  }

  Item incrementOrderAmount() {
    return Item(
      id: id,
      name: name,
      sortOrder: sortOrder,
      image: image,
      amountPerSales: amountPerSales,
      todayStock: todayStock,
      yesterdayOrderAmount: yesterdayOrderAmount,
      todayOrderAmount: todayOrderAmount + 1,
    );
  }

  Item decrementOrderAmount() {
    return Item(
      id: id,
      name: name,
      sortOrder: sortOrder,
      image: image,
      amountPerSales: amountPerSales,
      todayStock: todayStock,
      yesterdayOrderAmount: yesterdayOrderAmount,
      todayOrderAmount: todayOrderAmount - 1,
    );
  }
}
