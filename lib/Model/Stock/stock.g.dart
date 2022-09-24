// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Stock _$$_StockFromJson(Map<String, dynamic> json) => _$_Stock(
      id: json['id'] as String,
      date: DateTime.parse(json['date'] as String),
      amount: json['amount'] as int,
    );

Map<String, dynamic> _$$_StockToJson(_$_Stock instance) => <String, dynamic>{
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'amount': instance.amount,
    };
