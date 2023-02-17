import 'package:cloud_firestore/cloud_firestore.dart';

class Stock {
  final String itemId;
  final String id;
  final DateTime date;
  final int amount;

  const Stock({
    required this.itemId,
    required this.id,
    required this.date,
    required this.amount,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Stock &&
          runtimeType == other.runtimeType &&
          itemId == other.itemId &&
          id == other.id &&
          date == other.date &&
          amount == other.amount);

  @override
  int get hashCode =>
      itemId.hashCode ^ id.hashCode ^ date.hashCode ^ amount.hashCode;

  @override
  String toString() {
    return 'Stock{' +
        ' itemId: $itemId,' +
        ' id: $id,' +
        ' date: $date,' +
        ' amount: $amount,' +
        '}';
  }

  Stock copyWith({
    String? itemId,
    String? id,
    DateTime? date,
    int? amount,
  }) {
    return Stock(
      itemId: itemId ?? this.itemId,
      id: id ?? this.id,
      date: date ?? this.date,
      amount: amount ?? this.amount,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'itemId': this.itemId,
      'id': this.id,
      'date': this.date,
      'amount': this.amount,
    };
  }

  factory Stock.fromMap(Map<String, dynamic> map) {
    return Stock(
      itemId: map['itemId'] as String,
      id: map['id'] as String,
      date: (map['date'] as Timestamp).toDate(),
      amount: map['amount'] as int,
    );
  }
}
