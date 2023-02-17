class Item {
  final String supplierId;
  final String id;
  final String name;
  final String image;
  final int salesFloorIndex;
  final int orderSheetIndex;
  final int amountPerSales;
  final int todayStock;
  final int tomorrowAmount;
  final int orderAmount;

  int get stockValue =>
      (todayStock + tomorrowAmount + orderAmount) * amountPerSales;

  const Item({
    required this.supplierId,
    required this.id,
    required this.name,
    required this.image,
    required this.salesFloorIndex,
    required this.orderSheetIndex,
    required this.amountPerSales,
    required this.todayStock,
    required this.tomorrowAmount,
    required this.orderAmount,
  });

  factory Item.dummy() => Item(
        supplierId: "",
        id: "question",
        name: "",
        image: "question",
        salesFloorIndex: -1,
        orderSheetIndex: -1,
        amountPerSales: -1,
        todayStock: 0,
        tomorrowAmount: 0,
        orderAmount: 0,
      );

  factory Item.create(String supplierId) => Item(
        supplierId: supplierId,
        id: "question",
        name: "",
        image: "question",
        salesFloorIndex: -1,
        orderSheetIndex: -1,
        amountPerSales: -1,
        todayStock: 0,
        tomorrowAmount: 0,
        orderAmount: 0,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Item &&
          runtimeType == other.runtimeType &&
          supplierId == other.supplierId &&
          id == other.id &&
          name == other.name &&
          image == other.image &&
          salesFloorIndex == other.salesFloorIndex &&
          orderSheetIndex == other.orderSheetIndex &&
          amountPerSales == other.amountPerSales &&
          todayStock == other.todayStock &&
          tomorrowAmount == other.tomorrowAmount &&
          orderAmount == other.orderAmount);

  @override
  int get hashCode =>
      supplierId.hashCode ^
      id.hashCode ^
      name.hashCode ^
      image.hashCode ^
      salesFloorIndex.hashCode ^
      orderSheetIndex.hashCode ^
      amountPerSales.hashCode ^
      todayStock.hashCode ^
      tomorrowAmount.hashCode ^
      orderAmount.hashCode;

  @override
  String toString() {
    return 'Item{' +
        ' supplierId: $supplierId,' +
        ' id: $id,' +
        ' name: $name,' +
        ' image: $image,' +
        ' salesFloorIndex: $salesFloorIndex,' +
        ' orderSheetIndex: $orderSheetIndex,' +
        ' amountPerSales: $amountPerSales,' +
        ' todayStock: $todayStock,' +
        ' tomorrowAmount: $tomorrowAmount,' +
        ' orderAmount: $orderAmount,' +
        '}';
  }

  Item copyWith({
    String? supplierId,
    String? id,
    String? name,
    String? image,
    int? salesFloorIndex,
    int? orderSheetIndex,
    int? amountPerSales,
    int? todayStock,
    int? tomorrowAmount,
    int? orderAmount,
  }) {
    return Item(
      supplierId: supplierId ?? this.supplierId,
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      salesFloorIndex: salesFloorIndex ?? this.salesFloorIndex,
      orderSheetIndex: orderSheetIndex ?? this.orderSheetIndex,
      amountPerSales: amountPerSales ?? this.amountPerSales,
      todayStock: todayStock ?? this.todayStock,
      tomorrowAmount: tomorrowAmount ?? this.tomorrowAmount,
      orderAmount: orderAmount ?? this.orderAmount,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'supplierId': this.supplierId,
      'id': this.id,
      'name': this.name,
      'image': this.image,
      'salesFloorIndex': this.salesFloorIndex,
      'orderSheetIndex': this.orderSheetIndex,
      'amountPerSales': this.amountPerSales,
      'todayStock': this.todayStock,
      'tomorrowAmount': this.tomorrowAmount,
      'orderAmount': this.orderAmount,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      supplierId: map['supplierId'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      image: map['image'] as String,
      salesFloorIndex: map['salesFloorIndex'] as int,
      orderSheetIndex: map['orderSheetIndex'] as int,
      amountPerSales: map['amountPerSales'] as int,
      todayStock: map['todayStock'] as int,
      tomorrowAmount: map['tomorrowAmount'] as int,
      orderAmount: map['orderAmount'] as int,
    );
  }
}
