import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kaidashikun/models/cuisine/cuisine.dart';
import 'package:kaidashikun/models/shopping/shopping.dart';
part 'shopping_list.freezed.dart';
part 'shopping_list.g.dart';

@freezed
abstract class ShoppingList with _$ShoppingList {
  const factory ShoppingList({
    @Default([]) List<Cuisine> cuisines,
    @Default([]) List<Shopping> shoppings,
  }) = _ShoppingList;

  factory ShoppingList.fromJson(Map<String, dynamic> json) =>
      _$ShoppingListFromJson(json);
}
