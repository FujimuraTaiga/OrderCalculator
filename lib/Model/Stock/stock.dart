import 'package:cloud_firestore/cloud_firestore.dart';
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

  static const stockConverter = StockConverter();

  factory Stock.fromJson(Map<String, dynamic> json) =>
      stockConverter.fromJson(json);

  bool isToday(DateTime dateTime) {
    return date.isAtSameMomentAs(dateTime);
  }
}

class StockConverter implements JsonConverter<Stock, Map<String, dynamic>> {
  const StockConverter();

  @override
  Stock fromJson(Map<String, dynamic> json) {
    return _$_Stock(
      id: json['id'] as String,
      date: (json['date'] as Timestamp).toDate(),
      amount: json['amount'] as int,
    );
  }

  @override
  Map<String, dynamic> toJson(Stock stock) => stock.toJson();
}
