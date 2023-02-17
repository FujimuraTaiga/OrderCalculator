import 'package:cloud_firestore/cloud_firestore.dart';

class Sales {
  final String id;
  final DateTime date;
  final int price;

  const Sales({
    required this.id,
    required this.date,
    required this.price,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Sales &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          date == other.date &&
          price == other.price);

  @override
  int get hashCode => id.hashCode ^ date.hashCode ^ price.hashCode;

  @override
  String toString() {
    return 'Sales{ id: $id, date: $date, price: $price, }';
  }

  Sales copyWith({
    String? id,
    DateTime? date,
    int? price,
  }) {
    return Sales(
      id: id ?? this.id,
      date: date ?? this.date,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'date': Timestamp.fromDate(date),
      'price': price,
    };
  }

  factory Sales.dummy() {
    return Sales(id: "", date: DateTime.now(), price: 0);
  }

  factory Sales.fromMap(Map<String, dynamic> map) {
    return Sales(
      id: map['id'] as String,
      date: (map['date'] as Timestamp).toDate(),
      price: map['price'] as int,
    );
  }
}
