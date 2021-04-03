// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShoppingList _$_$_ShoppingListFromJson(Map<String, dynamic> json) {
  return _$_ShoppingList(
    cuisines: (json['cuisines'] as List<dynamic>?)
            ?.map((e) => Cuisine.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    shoppings: (json['shoppings'] as List<dynamic>?)
            ?.map((e) => Shopping.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_ShoppingListToJson(_$_ShoppingList instance) =>
    <String, dynamic>{
      'cuisines': instance.cuisines,
      'shoppings': instance.shoppings,
    };
