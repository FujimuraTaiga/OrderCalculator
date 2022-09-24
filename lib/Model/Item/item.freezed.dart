// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get sortOrder => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  int get amountPerSales => throw _privateConstructorUsedError;
  int get todayStock => throw _privateConstructorUsedError;
  int get tomorrowStock => throw _privateConstructorUsedError;
  int get dayAfterStock => throw _privateConstructorUsedError;
  List<Stock> get stocks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      int sortOrder,
      String image,
      int amountPerSales,
      int todayStock,
      int tomorrowStock,
      int dayAfterStock,
      List<Stock> stocks});
}

/// @nodoc
class _$ItemCopyWithImpl<$Res> implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  final Item _value;
  // ignore: unused_field
  final $Res Function(Item) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? sortOrder = freezed,
    Object? image = freezed,
    Object? amountPerSales = freezed,
    Object? todayStock = freezed,
    Object? tomorrowStock = freezed,
    Object? dayAfterStock = freezed,
    Object? stocks = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sortOrder: sortOrder == freezed
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      amountPerSales: amountPerSales == freezed
          ? _value.amountPerSales
          : amountPerSales // ignore: cast_nullable_to_non_nullable
              as int,
      todayStock: todayStock == freezed
          ? _value.todayStock
          : todayStock // ignore: cast_nullable_to_non_nullable
              as int,
      tomorrowStock: tomorrowStock == freezed
          ? _value.tomorrowStock
          : tomorrowStock // ignore: cast_nullable_to_non_nullable
              as int,
      dayAfterStock: dayAfterStock == freezed
          ? _value.dayAfterStock
          : dayAfterStock // ignore: cast_nullable_to_non_nullable
              as int,
      stocks: stocks == freezed
          ? _value.stocks
          : stocks // ignore: cast_nullable_to_non_nullable
              as List<Stock>,
    ));
  }
}

/// @nodoc
abstract class _$$_ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$_ItemCopyWith(_$_Item value, $Res Function(_$_Item) then) =
      __$$_ItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      int sortOrder,
      String image,
      int amountPerSales,
      int todayStock,
      int tomorrowStock,
      int dayAfterStock,
      List<Stock> stocks});
}

/// @nodoc
class __$$_ItemCopyWithImpl<$Res> extends _$ItemCopyWithImpl<$Res>
    implements _$$_ItemCopyWith<$Res> {
  __$$_ItemCopyWithImpl(_$_Item _value, $Res Function(_$_Item) _then)
      : super(_value, (v) => _then(v as _$_Item));

  @override
  _$_Item get _value => super._value as _$_Item;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? sortOrder = freezed,
    Object? image = freezed,
    Object? amountPerSales = freezed,
    Object? todayStock = freezed,
    Object? tomorrowStock = freezed,
    Object? dayAfterStock = freezed,
    Object? stocks = freezed,
  }) {
    return _then(_$_Item(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sortOrder: sortOrder == freezed
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      amountPerSales: amountPerSales == freezed
          ? _value.amountPerSales
          : amountPerSales // ignore: cast_nullable_to_non_nullable
              as int,
      todayStock: todayStock == freezed
          ? _value.todayStock
          : todayStock // ignore: cast_nullable_to_non_nullable
              as int,
      tomorrowStock: tomorrowStock == freezed
          ? _value.tomorrowStock
          : tomorrowStock // ignore: cast_nullable_to_non_nullable
              as int,
      dayAfterStock: dayAfterStock == freezed
          ? _value.dayAfterStock
          : dayAfterStock // ignore: cast_nullable_to_non_nullable
              as int,
      stocks: stocks == freezed
          ? _value._stocks
          : stocks // ignore: cast_nullable_to_non_nullable
              as List<Stock>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Item extends _Item {
  const _$_Item(
      {required this.id,
      required this.name,
      required this.sortOrder,
      this.image = 'question',
      required this.amountPerSales,
      this.todayStock = 0,
      this.tomorrowStock = 0,
      this.dayAfterStock = 0,
      final List<Stock> stocks = const []})
      : _stocks = stocks,
        super._();

  factory _$_Item.fromJson(Map<String, dynamic> json) => _$$_ItemFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final int sortOrder;
  @override
  @JsonKey()
  final String image;
  @override
  final int amountPerSales;
  @override
  @JsonKey()
  final int todayStock;
  @override
  @JsonKey()
  final int tomorrowStock;
  @override
  @JsonKey()
  final int dayAfterStock;
  final List<Stock> _stocks;
  @override
  @JsonKey()
  List<Stock> get stocks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stocks);
  }

  @override
  String toString() {
    return 'Item(id: $id, name: $name, sortOrder: $sortOrder, image: $image, amountPerSales: $amountPerSales, todayStock: $todayStock, tomorrowStock: $tomorrowStock, dayAfterStock: $dayAfterStock, stocks: $stocks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Item &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.sortOrder, sortOrder) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other.amountPerSales, amountPerSales) &&
            const DeepCollectionEquality()
                .equals(other.todayStock, todayStock) &&
            const DeepCollectionEquality()
                .equals(other.tomorrowStock, tomorrowStock) &&
            const DeepCollectionEquality()
                .equals(other.dayAfterStock, dayAfterStock) &&
            const DeepCollectionEquality().equals(other._stocks, _stocks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(sortOrder),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(amountPerSales),
      const DeepCollectionEquality().hash(todayStock),
      const DeepCollectionEquality().hash(tomorrowStock),
      const DeepCollectionEquality().hash(dayAfterStock),
      const DeepCollectionEquality().hash(_stocks));

  @JsonKey(ignore: true)
  @override
  _$$_ItemCopyWith<_$_Item> get copyWith =>
      __$$_ItemCopyWithImpl<_$_Item>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemToJson(
      this,
    );
  }
}

abstract class _Item extends Item {
  const factory _Item(
      {required final String id,
      required final String name,
      required final int sortOrder,
      final String image,
      required final int amountPerSales,
      final int todayStock,
      final int tomorrowStock,
      final int dayAfterStock,
      final List<Stock> stocks}) = _$_Item;
  const _Item._() : super._();

  factory _Item.fromJson(Map<String, dynamic> json) = _$_Item.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  int get sortOrder;
  @override
  String get image;
  @override
  int get amountPerSales;
  @override
  int get todayStock;
  @override
  int get tomorrowStock;
  @override
  int get dayAfterStock;
  @override
  List<Stock> get stocks;
  @override
  @JsonKey(ignore: true)
  _$$_ItemCopyWith<_$_Item> get copyWith => throw _privateConstructorUsedError;
}
