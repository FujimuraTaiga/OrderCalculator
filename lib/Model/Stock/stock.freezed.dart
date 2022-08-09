// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stock.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Stock _$StockFromJson(Map<String, dynamic> json) {
  return _Stock.fromJson(json);
}

/// @nodoc
mixin _$Stock {
  int get today => throw _privateConstructorUsedError;
  int get tomorrow => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StockCopyWith<Stock> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockCopyWith<$Res> {
  factory $StockCopyWith(Stock value, $Res Function(Stock) then) =
      _$StockCopyWithImpl<$Res>;
  $Res call({int today, int tomorrow});
}

/// @nodoc
class _$StockCopyWithImpl<$Res> implements $StockCopyWith<$Res> {
  _$StockCopyWithImpl(this._value, this._then);

  final Stock _value;
  // ignore: unused_field
  final $Res Function(Stock) _then;

  @override
  $Res call({
    Object? today = freezed,
    Object? tomorrow = freezed,
  }) {
    return _then(_value.copyWith(
      today: today == freezed
          ? _value.today
          : today // ignore: cast_nullable_to_non_nullable
              as int,
      tomorrow: tomorrow == freezed
          ? _value.tomorrow
          : tomorrow // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_StockCopyWith<$Res> implements $StockCopyWith<$Res> {
  factory _$$_StockCopyWith(_$_Stock value, $Res Function(_$_Stock) then) =
      __$$_StockCopyWithImpl<$Res>;
  @override
  $Res call({int today, int tomorrow});
}

/// @nodoc
class __$$_StockCopyWithImpl<$Res> extends _$StockCopyWithImpl<$Res>
    implements _$$_StockCopyWith<$Res> {
  __$$_StockCopyWithImpl(_$_Stock _value, $Res Function(_$_Stock) _then)
      : super(_value, (v) => _then(v as _$_Stock));

  @override
  _$_Stock get _value => super._value as _$_Stock;

  @override
  $Res call({
    Object? today = freezed,
    Object? tomorrow = freezed,
  }) {
    return _then(_$_Stock(
      today: today == freezed
          ? _value.today
          : today // ignore: cast_nullable_to_non_nullable
              as int,
      tomorrow: tomorrow == freezed
          ? _value.tomorrow
          : tomorrow // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Stock extends _Stock {
  const _$_Stock({required this.today, required this.tomorrow}) : super._();

  factory _$_Stock.fromJson(Map<String, dynamic> json) =>
      _$$_StockFromJson(json);

  @override
  final int today;
  @override
  final int tomorrow;

  @override
  String toString() {
    return 'Stock(today: $today, tomorrow: $tomorrow)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Stock &&
            const DeepCollectionEquality().equals(other.today, today) &&
            const DeepCollectionEquality().equals(other.tomorrow, tomorrow));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(today),
      const DeepCollectionEquality().hash(tomorrow));

  @JsonKey(ignore: true)
  @override
  _$$_StockCopyWith<_$_Stock> get copyWith =>
      __$$_StockCopyWithImpl<_$_Stock>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StockToJson(
      this,
    );
  }
}

abstract class _Stock extends Stock {
  const factory _Stock(
      {required final int today, required final int tomorrow}) = _$_Stock;
  const _Stock._() : super._();

  factory _Stock.fromJson(Map<String, dynamic> json) = _$_Stock.fromJson;

  @override
  int get today;
  @override
  int get tomorrow;
  @override
  @JsonKey(ignore: true)
  _$$_StockCopyWith<_$_Stock> get copyWith =>
      throw _privateConstructorUsedError;
}
