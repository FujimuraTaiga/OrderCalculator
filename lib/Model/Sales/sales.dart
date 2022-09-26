import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sales.freezed.dart';
part 'sales.g.dart';

@freezed
class Sales with _$Sales {
  const Sales._();
  const factory Sales({
    required String id,
    required DateTime date,
    required int price,
  }) = _Sales;

  static const salesConverter = SalesConverter();
  factory Sales.fromJson(Map<String, dynamic> json) =>
      salesConverter.fromJson(json);

  Sales changePrice(int newPrice) {
    return Sales(id: id, date: date, price: newPrice);
  }
}

class SalesConverter implements JsonConverter<Sales, Map<String, dynamic>> {
  const SalesConverter();

  @override
  Sales fromJson(Map<String, dynamic> json) {
    return _$_Sales(
      id: json['id'] as String,
      date: (json['date'] as Timestamp).toDate(),
      price: json['price'] as int,
    );
  }

  @override
  Map<String, dynamic> toJson(Sales order) => order.toJson();
}
