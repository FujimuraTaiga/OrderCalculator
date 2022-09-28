// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sales.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Sales _$SalesFromJson(Map<String, dynamic> json) {
  return _Sales.fromJson(json);
}

/// @nodoc
mixin _$Sales {
  String get id => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesCopyWith<Sales> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesCopyWith<$Res> {
  factory $SalesCopyWith(Sales value, $Res Function(Sales) then) =
      _$SalesCopyWithImpl<$Res>;
  $Res call({String id, DateTime date, int price});
}

/// @nodoc
class _$SalesCopyWithImpl<$Res> implements $SalesCopyWith<$Res> {
  _$SalesCopyWithImpl(this._value, this._then);

  final Sales _value;
  // ignore: unused_field
  final $Res Function(Sales) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_SalesCopyWith<$Res> implements $SalesCopyWith<$Res> {
  factory _$$_SalesCopyWith(_$_Sales value, $Res Function(_$_Sales) then) =
      __$$_SalesCopyWithImpl<$Res>;
  @override
  $Res call({String id, DateTime date, int price});
}

/// @nodoc
class __$$_SalesCopyWithImpl<$Res> extends _$SalesCopyWithImpl<$Res>
    implements _$$_SalesCopyWith<$Res> {
  __$$_SalesCopyWithImpl(_$_Sales _value, $Res Function(_$_Sales) _then)
      : super(_value, (v) => _then(v as _$_Sales));

  @override
  _$_Sales get _value => super._value as _$_Sales;

  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? price = freezed,
  }) {
    return _then(_$_Sales(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Sales extends _Sales {
  const _$_Sales({required this.id, required this.date, required this.price})
      : super._();

  factory _$_Sales.fromJson(Map<String, dynamic> json) =>
      _$$_SalesFromJson(json);

  @override
  final String id;
  @override
  final DateTime date;
  @override
  final int price;

  @override
  String toString() {
    return 'Sales(id: $id, date: $date, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Sales &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  _$$_SalesCopyWith<_$_Sales> get copyWith =>
      __$$_SalesCopyWithImpl<_$_Sales>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SalesToJson(
      this,
    );
  }
}

abstract class _Sales extends Sales {
  const factory _Sales(
      {required final String id,
      required final DateTime date,
      required final int price}) = _$_Sales;
  const _Sales._() : super._();

  factory _Sales.fromJson(Map<String, dynamic> json) = _$_Sales.fromJson;

  @override
  String get id;
  @override
  DateTime get date;
  @override
  int get price;
  @override
  @JsonKey(ignore: true)
  _$$_SalesCopyWith<_$_Sales> get copyWith =>
      throw _privateConstructorUsedError;
}
