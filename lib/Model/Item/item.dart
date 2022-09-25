import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:order_support/Model/Stock/stock.dart';

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
    @Default(0) int tomorrowStock,
    @Default(0) int dayAfterStock,
    @Default([]) List<Stock> stocks,
  }) = _Item;

  static const itemConverter = ItemConverter();

  factory Item.fromJson(Map<String, dynamic> json) =>
      itemConverter.fromJson(json);

  int get stockValue => (todayStock + dayAfterStock) * amountPerSales;

  Item changeTodayStock(int newAmount) {
    return Item(
      id: id,
      name: name,
      sortOrder: sortOrder,
      image: image,
      amountPerSales: amountPerSales,
      todayStock: newAmount,
      tomorrowStock: tomorrowStock,
      dayAfterStock: dayAfterStock,
      stocks: stocks,
    );
  }

  Item changeTomorrowStock(int newAmount) {
    return Item(
      id: id,
      name: name,
      sortOrder: sortOrder,
      image: image,
      amountPerSales: amountPerSales,
      todayStock: todayStock,
      tomorrowStock: newAmount,
      dayAfterStock: dayAfterStock,
      stocks: stocks,
    );
  }

  Item addDayAfterStock() {
    return Item(
      id: id,
      name: name,
      sortOrder: sortOrder,
      image: image,
      amountPerSales: amountPerSales,
      todayStock: todayStock,
      tomorrowStock: tomorrowStock,
      dayAfterStock: dayAfterStock + 1,
      stocks: stocks,
    );
  }
}

class ItemConverter implements JsonConverter<Item, Map<String, dynamic>> {
  const ItemConverter();

  @override
  Item fromJson(Map<String, dynamic> json) {
    return _$_Item(
      id: json['id'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      sortOrder: json['sort_order'] as int,
      amountPerSales: json['amount_per_sales'] as int,
    );
  }

  @override
  Map<String, dynamic> toJson(Item item) => item.toJson();
}
