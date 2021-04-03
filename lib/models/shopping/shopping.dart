import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kaidashikun/models/food/food.dart';
part 'shopping.freezed.dart';
part 'shopping.g.dart';

Map<String, dynamic>? foodToJson(Food? food) => food?.toJson();

@freezed
abstract class Shopping with _$Shopping {
  const factory Shopping({
    @JsonKey(toJson: foodToJson) Food? food,
    @Default(1) int amount,
  }) = _Shopping;
  factory Shopping.fromJson(Map<String, dynamic> json) =>
      _$ShoppingFromJson(json);
}
