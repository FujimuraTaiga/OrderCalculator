import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_sales.freezed.dart';
part 'daily_sales.g.dart';

@freezed
class DailySales with _$DailySales {
  const DailySales._();
  const factory DailySales({
    required DateTime date,
    required int price,
  }) = _DailySales;

  factory DailySales.fromJson(Map<String, dynamic> json) =>
      _$DailySalesFromJson(json);

  int get getPrice => price;
}
