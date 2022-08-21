import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock.freezed.dart';
part 'stock.g.dart';

@freezed
class Stock with _$Stock {
  const Stock._();
  const factory Stock({
    required int today,
    required int tomorrow,
    required int dayAfter,
  }) = _Stock;
  factory Stock.fromJson(Map<String, dynamic> json) => _$StockFromJson(json);

  int get sumAll => today + tomorrow + dayAfter;

  Stock setToday(int newAmount) {
    return Stock(today: newAmount, tomorrow: tomorrow, dayAfter: dayAfter);
  }

  Stock setTomorrow(int newAmount) {
    return Stock(today: today, tomorrow: newAmount, dayAfter: dayAfter);
  }

  Stock setDayAfter(int newAmount) {
    return Stock(today: today, tomorrow: tomorrow, dayAfter: newAmount);
  }
}
