// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Shopping _$_$_ShoppingFromJson(Map<String, dynamic> json) {
  return _$_Shopping(
    food: json['food'] == null
        ? null
        : Food.fromJson(json['food'] as Map<String, dynamic>),
    amount: json['amount'] as int? ?? 1,
  );
}

Map<String, dynamic> _$_$_ShoppingToJson(_$_Shopping instance) =>
    <String, dynamic>{
      'food': foodToJson(instance.food),
      'amount': instance.amount,
    };
