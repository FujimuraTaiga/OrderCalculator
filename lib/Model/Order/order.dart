import 'package:cloud_firestore/cloud_firestore.dart';

class Order {
  final String supplierId;
  final String itemId;
  final String id;
  final DateTime date;
  final int amount;

  const Order({
    required this.supplierId,
    required this.itemId,
    required this.id,
    required this.date,
    required this.amount,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Order &&
          runtimeType == other.runtimeType &&
          supplierId == other.supplierId &&
          itemId == other.itemId &&
          id == other.id &&
          date == other.date &&
          amount == other.amount);

  @override
  int get hashCode =>
      supplierId.hashCode ^
      itemId.hashCode ^
      id.hashCode ^
      date.hashCode ^
      amount.hashCode;

  @override
  String toString() {
    return 'OrderAmount{' +
        ' supplierId: $supplierId,' +
        ' itemId: $itemId,' +
        ' id: $id,' +
        ' date: $date,' +
        ' amount: $amount,' +
        '}';
  }

  Order copyWith({
    String? supplierId,
    String? itemId,
    String? id,
    DateTime? date,
    int? amount,
  }) {
    return Order(
      supplierId: supplierId ?? this.supplierId,
      itemId: itemId ?? this.itemId,
      id: id ?? this.id,
      date: date ?? this.date,
      amount: amount ?? this.amount,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'supplierId': supplierId,
      'itemId': itemId,
      'id': id,
      'date': Timestamp.fromDate(date),
      'amount': amount,
    };
  }

  factory Order.fromMap(Map<String, dynamic> map) {
    return Order(
      supplierId: map['supplierId'],
      itemId: map['itemId'],
      id: map['id'] as String,
      date: (map['date'] as Timestamp).toDate(),
      amount: map['amount'] as int,
    );
  }
}
