import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kaidashikun/models/shopping/shopping.dart';
import 'package:kaidashikun/models/utils/json_converter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
part 'cuisine.freezed.dart';
part 'cuisine.g.dart';

List<Map<String, dynamic>>? shoppingsToJson(List<Shopping>? shoppings) =>
    shoppings != null
        ? shoppings.map((Shopping s) => s.toJson()).toList()
        : null;

@freezed
abstract class Cuisine with _$Cuisine {
  const factory Cuisine({
    String? id,
    @Default('') String name,
    @JsonKey(toJson: dateTimeToTimestamp, fromJson: timestampToDateTime)
        DateTime? lastCookedAt,
    @Default([]) @JsonKey(toJson: shoppingsToJson) List<Shopping> shoppings,
  }) = _Cuisine;

  factory Cuisine.fromJson(Map<String, dynamic> json) =>
      _$CuisineFromJson(json);
}
