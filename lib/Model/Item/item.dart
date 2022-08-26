import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:order_support/Model/Stock/stock.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@freezed
class Item with _$Item {
  const Item._();
  const factory Item({
    required String image,
    required String name,
    required Stock stock,
    required int amountPerSales,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  int get stockValue => stock.totalAmount * amountPerSales;

  int amountOfNeed(int sumOfSales) {
    int totalStock = stock.today + stock.tomorrow;

    return (sumOfSales / amountPerSales).ceil() - totalStock;
  }
}
