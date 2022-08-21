// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Order {
  Item get pork => throw _privateConstructorUsedError;
  Item get beef => throw _privateConstructorUsedError;
  Item get chicken => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res>;
  $Res call({Item pork, Item beef, Item chicken});

  $ItemCopyWith<$Res> get pork;
  $ItemCopyWith<$Res> get beef;
  $ItemCopyWith<$Res> get chicken;
}

/// @nodoc
class _$OrderCopyWithImpl<$Res> implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  final Order _value;
  // ignore: unused_field
  final $Res Function(Order) _then;

  @override
  $Res call({
    Object? pork = freezed,
    Object? beef = freezed,
    Object? chicken = freezed,
  }) {
    return _then(_value.copyWith(
      pork: pork == freezed
          ? _value.pork
          : pork // ignore: cast_nullable_to_non_nullable
              as Item,
      beef: beef == freezed
          ? _value.beef
          : beef // ignore: cast_nullable_to_non_nullable
              as Item,
      chicken: chicken == freezed
          ? _value.chicken
          : chicken // ignore: cast_nullable_to_non_nullable
              as Item,
    ));
  }

  @override
  $ItemCopyWith<$Res> get pork {
    return $ItemCopyWith<$Res>(_value.pork, (value) {
      return _then(_value.copyWith(pork: value));
    });
  }

  @override
  $ItemCopyWith<$Res> get beef {
    return $ItemCopyWith<$Res>(_value.beef, (value) {
      return _then(_value.copyWith(beef: value));
    });
  }

  @override
  $ItemCopyWith<$Res> get chicken {
    return $ItemCopyWith<$Res>(_value.chicken, (value) {
      return _then(_value.copyWith(chicken: value));
    });
  }
}

/// @nodoc
abstract class _$$_OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$_OrderCopyWith(_$_Order value, $Res Function(_$_Order) then) =
      __$$_OrderCopyWithImpl<$Res>;
  @override
  $Res call({Item pork, Item beef, Item chicken});

  @override
  $ItemCopyWith<$Res> get pork;
  @override
  $ItemCopyWith<$Res> get beef;
  @override
  $ItemCopyWith<$Res> get chicken;
}

/// @nodoc
class __$$_OrderCopyWithImpl<$Res> extends _$OrderCopyWithImpl<$Res>
    implements _$$_OrderCopyWith<$Res> {
  __$$_OrderCopyWithImpl(_$_Order _value, $Res Function(_$_Order) _then)
      : super(_value, (v) => _then(v as _$_Order));

  @override
  _$_Order get _value => super._value as _$_Order;

  @override
  $Res call({
    Object? pork = freezed,
    Object? beef = freezed,
    Object? chicken = freezed,
  }) {
    return _then(_$_Order(
      pork: pork == freezed
          ? _value.pork
          : pork // ignore: cast_nullable_to_non_nullable
              as Item,
      beef: beef == freezed
          ? _value.beef
          : beef // ignore: cast_nullable_to_non_nullable
              as Item,
      chicken: chicken == freezed
          ? _value.chicken
          : chicken // ignore: cast_nullable_to_non_nullable
              as Item,
    ));
  }
}

/// @nodoc

class _$_Order extends _Order {
  const _$_Order(
      {required this.pork, required this.beef, required this.chicken})
      : super._();

  @override
  final Item pork;
  @override
  final Item beef;
  @override
  final Item chicken;

  @override
  String toString() {
    return 'Order(pork: $pork, beef: $beef, chicken: $chicken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Order &&
            const DeepCollectionEquality().equals(other.pork, pork) &&
            const DeepCollectionEquality().equals(other.beef, beef) &&
            const DeepCollectionEquality().equals(other.chicken, chicken));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pork),
      const DeepCollectionEquality().hash(beef),
      const DeepCollectionEquality().hash(chicken));

  @JsonKey(ignore: true)
  @override
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      __$$_OrderCopyWithImpl<_$_Order>(this, _$identity);
}

abstract class _Order extends Order {
  const factory _Order(
      {required final Item pork,
      required final Item beef,
      required final Item chicken}) = _$_Order;
  const _Order._() : super._();

  @override
  Item get pork;
  @override
  Item get beef;
  @override
  Item get chicken;
  @override
  @JsonKey(ignore: true)
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      throw _privateConstructorUsedError;
}