// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_sales.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DailySales _$$_DailySalesFromJson(Map<String, dynamic> json) =>
    _$_DailySales(
      date: DateTime.parse(json['date'] as String),
      price: json['price'] as int,
    );

Map<String, dynamic> _$$_DailySalesToJson(_$_DailySales instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'price': instance.price,
    };
