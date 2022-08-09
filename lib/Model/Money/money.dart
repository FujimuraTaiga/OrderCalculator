import 'package:freezed_annotation/freezed_annotation.dart';

part 'money.freezed.dart';
part 'money.g.dart';

@freezed
class Money with _$Money {
  const Money._();
  const factory Money({
    required int price,
  }) = _Money;
  factory Money.fromJson(Map<String, dynamic> json) => _$MoneyFromJson(json);

  Money add(Money money) {
    int sumOfPrices = price + money.price;
    return Money(price: sumOfPrices);
  }
}
