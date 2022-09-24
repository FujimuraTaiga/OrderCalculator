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
      tomorrowStock: json['tomorrowStock'] as int? ?? 0,
      dayAfterStock: json['dayAfterStock'] as int? ?? 0,
      stocks: (json['stocks'] as List<dynamic>?)
              ?.map((e) => Stock.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sortOrder': instance.sortOrder,
      'image': instance.image,
      'amountPerSales': instance.amountPerSales,
      'todayStock': instance.todayStock,
      'tomorrowStock': instance.tomorrowStock,
      'dayAfterStock': instance.dayAfterStock,
      'stocks': instance.stocks,
    };
