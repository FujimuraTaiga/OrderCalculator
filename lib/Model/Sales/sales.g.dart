// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Sales _$$_SalesFromJson(Map<String, dynamic> json) => _$_Sales(
      id: json['id'] as String,
      date: DateTime.parse(json['date'] as String),
      price: json['price'] as int,
    );

Map<String, dynamic> _$$_SalesToJson(_$_Sales instance) => <String, dynamic>{
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'price': instance.price,
    };
