// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ItemState {
  Item get item => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemStateCopyWith<ItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemStateCopyWith<$Res> {
  factory $ItemStateCopyWith(ItemState value, $Res Function(ItemState) then) =
      _$ItemStateCopyWithImpl<$Res>;
  $Res call({Item item});

  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class _$ItemStateCopyWithImpl<$Res> implements $ItemStateCopyWith<$Res> {
  _$ItemStateCopyWithImpl(this._value, this._then);

  final ItemState _value;
  // ignore: unused_field
  final $Res Function(ItemState) _then;

  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_value.copyWith(
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
    ));
  }

  @override
  $ItemCopyWith<$Res> get item {
    return $ItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc
abstract class _$$_ItemStateCopyWith<$Res> implements $ItemStateCopyWith<$Res> {
  factory _$$_ItemStateCopyWith(
          _$_ItemState value, $Res Function(_$_ItemState) then) =
      __$$_ItemStateCopyWithImpl<$Res>;
  @override
  $Res call({Item item});

  @override
  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$_ItemStateCopyWithImpl<$Res> extends _$ItemStateCopyWithImpl<$Res>
    implements _$$_ItemStateCopyWith<$Res> {
  __$$_ItemStateCopyWithImpl(
      _$_ItemState _value, $Res Function(_$_ItemState) _then)
      : super(_value, (v) => _then(v as _$_ItemState));

  @override
  _$_ItemState get _value => super._value as _$_ItemState;

  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_$_ItemState(
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
    ));
  }
}

/// @nodoc

class _$_ItemState extends _ItemState {
  const _$_ItemState(
      {this.item = const Item(
          id: 'id',
          name: 'name',
          amountPerSales: 1,
          sortOrder: 0,
          todayStock: 0,
          tomorrowStock: 0,
          dayAfterStock: 0)})
      : super._();

  @override
  @JsonKey()
  final Item item;

  @override
  String toString() {
    return 'ItemState(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemState &&
            const DeepCollectionEquality().equals(other.item, item));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(item));

  @JsonKey(ignore: true)
  @override
  _$$_ItemStateCopyWith<_$_ItemState> get copyWith =>
      __$$_ItemStateCopyWithImpl<_$_ItemState>(this, _$identity);
}

abstract class _ItemState extends ItemState {
  const factory _ItemState({final Item item}) = _$_ItemState;
  const _ItemState._() : super._();

  @override
  Item get item;
  @override
  @JsonKey(ignore: true)
  _$$_ItemStateCopyWith<_$_ItemState> get copyWith =>
      throw _privateConstructorUsedError;
}
