// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'money.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Money _$MoneyFromJson(Map<String, dynamic> json) {
  return _Money.fromJson(json);
}

/// @nodoc
mixin _$Money {
  int get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoneyCopyWith<Money> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoneyCopyWith<$Res> {
  factory $MoneyCopyWith(Money value, $Res Function(Money) then) =
      _$MoneyCopyWithImpl<$Res>;
  $Res call({int price});
}

/// @nodoc
class _$MoneyCopyWithImpl<$Res> implements $MoneyCopyWith<$Res> {
  _$MoneyCopyWithImpl(this._value, this._then);

  final Money _value;
  // ignore: unused_field
  final $Res Function(Money) _then;

  @override
  $Res call({
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_MoneyCopyWith<$Res> implements $MoneyCopyWith<$Res> {
  factory _$$_MoneyCopyWith(_$_Money value, $Res Function(_$_Money) then) =
      __$$_MoneyCopyWithImpl<$Res>;
  @override
  $Res call({int price});
}

/// @nodoc
class __$$_MoneyCopyWithImpl<$Res> extends _$MoneyCopyWithImpl<$Res>
    implements _$$_MoneyCopyWith<$Res> {
  __$$_MoneyCopyWithImpl(_$_Money _value, $Res Function(_$_Money) _then)
      : super(_value, (v) => _then(v as _$_Money));

  @override
  _$_Money get _value => super._value as _$_Money;

  @override
  $Res call({
    Object? price = freezed,
  }) {
    return _then(_$_Money(
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Money extends _Money {
  const _$_Money({required this.price}) : super._();

  factory _$_Money.fromJson(Map<String, dynamic> json) =>
      _$$_MoneyFromJson(json);

  @override
  final int price;

  @override
  String toString() {
    return 'Money(price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Money &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  _$$_MoneyCopyWith<_$_Money> get copyWith =>
      __$$_MoneyCopyWithImpl<_$_Money>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MoneyToJson(
      this,
    );
  }
}

abstract class _Money extends Money {
  const factory _Money({required final int price}) = _$_Money;
  const _Money._() : super._();

  factory _Money.fromJson(Map<String, dynamic> json) = _$_Money.fromJson;

  @override
  int get price;
  @override
  @JsonKey(ignore: true)
  _$$_MoneyCopyWith<_$_Money> get copyWith =>
      throw _privateConstructorUsedError;
}
