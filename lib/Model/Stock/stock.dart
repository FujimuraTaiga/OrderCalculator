import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock.freezed.dart';
part 'stock.g.dart';

@freezed
class Stock with _$Stock {
  const Stock._();

  const factory Stock({
    required String id,
    required DateTime date,
    required int amount,
  }) = _Stock;

  factory Stock.fromJson(Map<String, dynamic> json) => _$StockFromJson(json);

  bool isToday(DateTime dateTime) {
    return date.isAtSameMomentAs(dateTime);
  }
}
