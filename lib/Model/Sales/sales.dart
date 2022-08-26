import 'package:freezed_annotation/freezed_annotation.dart';

part 'sales.freezed.dart';
part 'sales.g.dart';

@freezed
class Sales with _$Sales {
  const Sales._();
  const factory Sales({
    required DateTime date,
    required int price,
  }) = _Sales;

  factory Sales.fromJson(Map<String, dynamic> json) => _$SalesFromJson(json);
}
