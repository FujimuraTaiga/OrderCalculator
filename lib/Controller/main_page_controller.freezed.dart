// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_page_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MainPageController _$MainPageControllerFromJson(Map<String, dynamic> json) {
  return _MainPageController.fromJson(json);
}

/// @nodoc
mixin _$MainPageController {
  List<String> get salesIds => throw _privateConstructorUsedError;
  List<String> get itemIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainPageControllerCopyWith<MainPageController> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainPageControllerCopyWith<$Res> {
  factory $MainPageControllerCopyWith(
          MainPageController value, $Res Function(MainPageController) then) =
      _$MainPageControllerCopyWithImpl<$Res>;
  $Res call({List<String> salesIds, List<String> itemIds});
}

/// @nodoc
class _$MainPageControllerCopyWithImpl<$Res>
    implements $MainPageControllerCopyWith<$Res> {
  _$MainPageControllerCopyWithImpl(this._value, this._then);

  final MainPageController _value;
  // ignore: unused_field
  final $Res Function(MainPageController) _then;

  @override
  $Res call({
    Object? salesIds = freezed,
    Object? itemIds = freezed,
  }) {
    return _then(_value.copyWith(
      salesIds: salesIds == freezed
          ? _value.salesIds
          : salesIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      itemIds: itemIds == freezed
          ? _value.itemIds
          : itemIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_MainPageControllerCopyWith<$Res>
    implements $MainPageControllerCopyWith<$Res> {
  factory _$$_MainPageControllerCopyWith(_$_MainPageController value,
          $Res Function(_$_MainPageController) then) =
      __$$_MainPageControllerCopyWithImpl<$Res>;
  @override
  $Res call({List<String> salesIds, List<String> itemIds});
}

/// @nodoc
class __$$_MainPageControllerCopyWithImpl<$Res>
    extends _$MainPageControllerCopyWithImpl<$Res>
    implements _$$_MainPageControllerCopyWith<$Res> {
  __$$_MainPageControllerCopyWithImpl(
      _$_MainPageController _value, $Res Function(_$_MainPageController) _then)
      : super(_value, (v) => _then(v as _$_MainPageController));

  @override
  _$_MainPageController get _value => super._value as _$_MainPageController;

  @override
  $Res call({
    Object? salesIds = freezed,
    Object? itemIds = freezed,
  }) {
    return _then(_$_MainPageController(
      salesIds: salesIds == freezed
          ? _value._salesIds
          : salesIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      itemIds: itemIds == freezed
          ? _value._itemIds
          : itemIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MainPageController extends _MainPageController {
  const _$_MainPageController(
      {required final List<String> salesIds,
      required final List<String> itemIds})
      : _salesIds = salesIds,
        _itemIds = itemIds,
        super._();

  factory _$_MainPageController.fromJson(Map<String, dynamic> json) =>
      _$$_MainPageControllerFromJson(json);

  final List<String> _salesIds;
  @override
  List<String> get salesIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_salesIds);
  }

  final List<String> _itemIds;
  @override
  List<String> get itemIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_itemIds);
  }

  @override
  String toString() {
    return 'MainPageController(salesIds: $salesIds, itemIds: $itemIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainPageController &&
            const DeepCollectionEquality().equals(other._salesIds, _salesIds) &&
            const DeepCollectionEquality().equals(other._itemIds, _itemIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_salesIds),
      const DeepCollectionEquality().hash(_itemIds));

  @JsonKey(ignore: true)
  @override
  _$$_MainPageControllerCopyWith<_$_MainPageController> get copyWith =>
      __$$_MainPageControllerCopyWithImpl<_$_MainPageController>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MainPageControllerToJson(
      this,
    );
  }
}

abstract class _MainPageController extends MainPageController {
  const factory _MainPageController(
      {required final List<String> salesIds,
      required final List<String> itemIds}) = _$_MainPageController;
  const _MainPageController._() : super._();

  factory _MainPageController.fromJson(Map<String, dynamic> json) =
      _$_MainPageController.fromJson;

  @override
  List<String> get salesIds;
  @override
  List<String> get itemIds;
  @override
  @JsonKey(ignore: true)
  _$$_MainPageControllerCopyWith<_$_MainPageController> get copyWith =>
      throw _privateConstructorUsedError;
}
