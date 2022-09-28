// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_page_controller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MainPageController _$$_MainPageControllerFromJson(
        Map<String, dynamic> json) =>
    _$_MainPageController(
      salesIds:
          (json['salesIds'] as List<dynamic>).map((e) => e as String).toList(),
      itemIds:
          (json['itemIds'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_MainPageControllerToJson(
        _$_MainPageController instance) =>
    <String, dynamic>{
      'salesIds': instance.salesIds,
      'itemIds': instance.itemIds,
    };
