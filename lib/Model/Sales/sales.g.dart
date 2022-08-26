// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Sales _$$_SalesFromJson(Map<String, dynamic> json) => _$_Sales(
      date: DateTime.parse(json['date'] as String),
      price: json['price'] as int,
    );

Map<String, dynamic> _$$_SalesToJson(_$_Sales instance) => <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'price': instance.price,
    };
