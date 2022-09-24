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

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

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
