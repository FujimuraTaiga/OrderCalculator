class Supplier {
  final String id;
  final String name;

  const Supplier({
    required this.id,
    required this.name,
  });

  factory Supplier.create(String name) => Supplier(id: '', name: name);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Supplier &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name);

  @override
  int get hashCode => id.hashCode ^ name.hashCode;

  Supplier copyWith({
    String? id,
    String? name,
  }) {
    return Supplier(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  factory Supplier.fromMap(Map<String, dynamic> map) {
    return Supplier(
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }
}
