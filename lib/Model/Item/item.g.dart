// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Item _$$_ItemFromJson(Map<String, dynamic> json) => _$_Item(
      id: json['id'] as String,
      name: json['name'] as String,
      sortOrder: json['sortOrder'] as int,
      image: json['image'] as String? ?? 'question',
      amountPerSales: json['amountPerSales'] as int,
      todayStock: json['todayStock'] as int? ?? 0,
      yesterdayOrderAmount: json['yesterdayOrderAmount'] as int? ?? 0,
      todayOrderAmount: json['todayOrderAmount'] as int? ?? 0,
    );

Map<String, dynamic> _$$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sortOrder': instance.sortOrder,
      'image': instance.image,
      'amountPerSales': instance.amountPerSales,
      'todayStock': instance.todayStock,
      'yesterdayOrderAmount': instance.yesterdayOrderAmount,
      'todayOrderAmount': instance.todayOrderAmount,
    };
