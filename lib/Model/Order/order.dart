import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:order_support/Model/Item/item.dart';

part 'order.freezed.dart';

@freezed
class Order with _$Order {
  const Order._();
  const factory Order({
    required Item pork,
    required Item beef,
    required Item chicken,
  }) = _Order;

  bool isMultipleOf12(int sumOfSales) {
    int totalAmount = pork.amountOfNeed(sumOfSales) +
        beef.amountOfNeed(sumOfSales) +
        chicken.amountOfNeed(sumOfSales);
    int surplus = totalAmount % 12;
    return surplus == 0;
  }
}
