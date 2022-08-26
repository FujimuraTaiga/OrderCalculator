// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Store _$$_StoreFromJson(Map<String, dynamic> json) => _$_Store(
      items: (json['items'] as List<dynamic>)
          .map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      sales: (json['sales'] as List<dynamic>)
          .map((e) => Sales.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_StoreToJson(_$_Store instance) => <String, dynamic>{
      'items': instance.items,
      'sales': instance.sales,
    };
