import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
class Order with _$Order {
  const Order._();

  const factory Order({
    required String id,
    required DateTime date,
    required int amount,
  }) = _Order;

  static const orderConverter = OrderConverter();

  factory Order.fromJson(Map<String, dynamic> json) =>
      orderConverter.fromJson(json);

  bool isToday(DateTime dateTime) {
    return date.isAtSameMomentAs(dateTime);
  }
}

class OrderConverter implements JsonConverter<Order, Map<String, dynamic>> {
  const OrderConverter();

  @override
  Order fromJson(Map<String, dynamic> json) {
    return _$_Order(
      id: json['id'] as String,
      date: (json['date'] as Timestamp).toDate(),
      amount: json['amount'] as int,
    );
  }

  @override
  Map<String, dynamic> toJson(Order order) => order.toJson();
}
