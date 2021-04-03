import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'food.freezed.dart';
part 'food.g.dart';

@freezed
abstract class Food with _$Food {
  const factory Food({
    String? uid,
    @Default('') String name,
  }) = _Food;

  factory Food.fromJson(Map<String, dynamic> json) => _$FoodFromJson(json);
}
