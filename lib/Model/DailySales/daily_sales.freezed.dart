// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'daily_sales.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DailySales _$DailySalesFromJson(Map<String, dynamic> json) {
  return _DailySales.fromJson(json);
}

/// @nodoc
mixin _$DailySales {
  DateTime get date => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DailySalesCopyWith<DailySales> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailySalesCopyWith<$Res> {
  factory $DailySalesCopyWith(
          DailySales value, $Res Function(DailySales) then) =
      _$DailySalesCopyWithImpl<$Res>;
  $Res call({DateTime date, int price});
}

/// @nodoc
class _$DailySalesCopyWithImpl<$Res> implements $DailySalesCopyWith<$Res> {
  _$DailySalesCopyWithImpl(this._value, this._then);

  final DailySales _value;
  // ignore: unused_field
  final $Res Function(DailySales) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_DailySalesCopyWith<$Res>
    implements $DailySalesCopyWith<$Res> {
  factory _$$_DailySalesCopyWith(
          _$_DailySales value, $Res Function(_$_DailySales) then) =
      __$$_DailySalesCopyWithImpl<$Res>;
  @override
  $Res call({DateTime date, int price});
}

/// @nodoc
class __$$_DailySalesCopyWithImpl<$Res> extends _$DailySalesCopyWithImpl<$Res>
    implements _$$_DailySalesCopyWith<$Res> {
  __$$_DailySalesCopyWithImpl(
      _$_DailySales _value, $Res Function(_$_DailySales) _then)
      : super(_value, (v) => _then(v as _$_DailySales));

  @override
  _$_DailySales get _value => super._value as _$_DailySales;

  @override
  $Res call({
    Object? date = freezed,
    Object? price = freezed,
  }) {
    return _then(_$_DailySales(
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
class _$_DailySales extends _DailySales {
  const _$_DailySales({required this.date, required this.price}) : super._();

  factory _$_DailySales.fromJson(Map<String, dynamic> json) =>
      _$$_DailySalesFromJson(json);

  @override
  final DateTime date;
  @override
  final int price;

  @override
  String toString() {
    return 'DailySales(date: $date, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DailySales &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  _$$_DailySalesCopyWith<_$_DailySales> get copyWith =>
      __$$_DailySalesCopyWithImpl<_$_DailySales>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DailySalesToJson(
      this,
    );
  }
}

abstract class _DailySales extends DailySales {
  const factory _DailySales(
      {required final DateTime date, required final int price}) = _$_DailySales;
  const _DailySales._() : super._();

  factory _DailySales.fromJson(Map<String, dynamic> json) =
      _$_DailySales.fromJson;

  @override
  DateTime get date;
  @override
  int get price;
  @override
  @JsonKey(ignore: true)
  _$$_DailySalesCopyWith<_$_DailySales> get copyWith =>
      throw _privateConstructorUsedError;
}
