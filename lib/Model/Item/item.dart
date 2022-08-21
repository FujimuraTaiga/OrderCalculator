import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:order_support/Model/Stock/stock.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@freezed
class Item with _$Item {
  const Item._();
  const factory Item({
    required String name,
    required Stock stock,
    required int amountPerSales,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  int get amountOfOrder => stock.dayAfter;
  int get stockValue => stock.sumAll * amountPerSales;

  Item setStock(Stock newStock) {
    return Item(name: name, stock: newStock, amountPerSales: amountPerSales);
  }

  Item setToday(int today) {
    return Item(
      name: name,
      stock: Stock(
        today: today,
        tomorrow: stock.tomorrow,
        dayAfter: stock.dayAfter,
      ),
      amountPerSales: amountPerSales,
    );
  }

  Item setTomorrow(int tomorrow) {
    return Item(
      name: name,
      stock: Stock(
        today: stock.today,
        tomorrow: tomorrow,
        dayAfter: stock.dayAfter,
      ),
      amountPerSales: amountPerSales,
    );
  }

  Item setDayAfter(int dayAfter) {
    return Item(
      name: name,
      stock: Stock(
        today: stock.today,
        tomorrow: stock.tomorrow,
        dayAfter: dayAfter,
      ),
      amountPerSales: amountPerSales,
    );
  }

  int amountOfNeed(int sumOfSales) {
    int totalStock = stock.today + stock.tomorrow;

    return (sumOfSales / amountPerSales).ceil() - totalStock;
  }

  int get threeDaysOfAmount => stock.today + stock.tomorrow + stock.dayAfter;
}
