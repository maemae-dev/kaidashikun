// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cuisine.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Cuisine _$_$_CuisineFromJson(Map<String, dynamic> json) {
  return _$_Cuisine(
    id: json['id'] as String?,
    name: json['name'] as String? ?? '',
    lastCookedAt: timestampToDateTime(json['lastCookedAt'] as Timestamp),
    shoppings: (json['shoppings'] as List<dynamic>)
        .map((e) => Shopping.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_CuisineToJson(_$_Cuisine instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'lastCookedAt': dateTimeToTimestamp(instance.lastCookedAt),
      'shoppings': shoppingsToJson(instance.shoppings),
    };
