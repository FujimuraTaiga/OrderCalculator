// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sales_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SalesState {
  Sales get sales => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SalesStateCopyWith<SalesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesStateCopyWith<$Res> {
  factory $SalesStateCopyWith(
          SalesState value, $Res Function(SalesState) then) =
      _$SalesStateCopyWithImpl<$Res>;
  $Res call({Sales sales});

  $SalesCopyWith<$Res> get sales;
}

/// @nodoc
class _$SalesStateCopyWithImpl<$Res> implements $SalesStateCopyWith<$Res> {
  _$SalesStateCopyWithImpl(this._value, this._then);

  final SalesState _value;
  // ignore: unused_field
  final $Res Function(SalesState) _then;

  @override
  $Res call({
    Object? sales = freezed,
  }) {
    return _then(_value.copyWith(
      sales: sales == freezed
          ? _value.sales
          : sales // ignore: cast_nullable_to_non_nullable
              as Sales,
    ));
  }

  @override
  $SalesCopyWith<$Res> get sales {
    return $SalesCopyWith<$Res>(_value.sales, (value) {
      return _then(_value.copyWith(sales: value));
    });
  }
}

/// @nodoc
abstract class _$$_SalesStateCopyWith<$Res>
    implements $SalesStateCopyWith<$Res> {
  factory _$$_SalesStateCopyWith(
          _$_SalesState value, $Res Function(_$_SalesState) then) =
      __$$_SalesStateCopyWithImpl<$Res>;
  @override
  $Res call({Sales sales});

  @override
  $SalesCopyWith<$Res> get sales;
}

/// @nodoc
class __$$_SalesStateCopyWithImpl<$Res> extends _$SalesStateCopyWithImpl<$Res>
    implements _$$_SalesStateCopyWith<$Res> {
  __$$_SalesStateCopyWithImpl(
      _$_SalesState _value, $Res Function(_$_SalesState) _then)
      : super(_value, (v) => _then(v as _$_SalesState));

  @override
  _$_SalesState get _value => super._value as _$_SalesState;

  @override
  $Res call({
    Object? sales = freezed,
  }) {
    return _then(_$_SalesState(
      sales: sales == freezed
          ? _value.sales
          : sales // ignore: cast_nullable_to_non_nullable
              as Sales,
    ));
  }
}

/// @nodoc

class _$_SalesState extends _SalesState {
  const _$_SalesState({required this.sales}) : super._();

  @override
  final Sales sales;

  @override
  String toString() {
    return 'SalesState(sales: $sales)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SalesState &&
            const DeepCollectionEquality().equals(other.sales, sales));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(sales));

  @JsonKey(ignore: true)
  @override
  _$$_SalesStateCopyWith<_$_SalesState> get copyWith =>
      __$$_SalesStateCopyWithImpl<_$_SalesState>(this, _$identity);
}

abstract class _SalesState extends SalesState {
  const factory _SalesState({required final Sales sales}) = _$_SalesState;
  const _SalesState._() : super._();

  @override
  Sales get sales;
  @override
  @JsonKey(ignore: true)
  _$$_SalesStateCopyWith<_$_SalesState> get copyWith =>
      throw _privateConstructorUsedError;
}
