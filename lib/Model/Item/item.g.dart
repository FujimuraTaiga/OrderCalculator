// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Item _$$_ItemFromJson(Map<String, dynamic> json) => _$_Item(
      image: json['image'] as String,
      name: json['name'] as String,
      stock: Stock.fromJson(json['stock'] as Map<String, dynamic>),
      amountPerSales: json['amountPerSales'] as int,
    );

Map<String, dynamic> _$$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'image': instance.image,
      'name': instance.name,
      'stock': instance.stock,
      'amountPerSales': instance.amountPerSales,
    };
