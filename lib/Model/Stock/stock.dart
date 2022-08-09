import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock.freezed.dart';
part 'stock.g.dart';

@freezed
class Stock with _$Stock {
  const Stock._();
  const factory Stock({
    required int today,
    required int tomorrow,
  }) = _Stock;
  factory Stock.fromJson(Map<String, dynamic> json) => _$StockFromJson(json);

  Stock setToday(int newAmount) {
    return Stock(today: newAmount, tomorrow: tomorrow);
  }

  Stock setTomorrow(int newAmount) {
    return Stock(today: today, tomorrow: newAmount);
  }

  Stock setDayAfter(int newAmount) {
    return Stock(today: today, tomorrow: tomorrow);
  }
}
