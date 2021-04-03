// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'shopping.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Shopping _$ShoppingFromJson(Map<String, dynamic> json) {
  return _Shopping.fromJson(json);
}

/// @nodoc
class _$ShoppingTearOff {
  const _$ShoppingTearOff();

  _Shopping call({@JsonKey(toJson: foodToJson) Food? food, int amount = 1}) {
    return _Shopping(
      food: food,
      amount: amount,
    );
  }

  Shopping fromJson(Map<String, Object> json) {
    return Shopping.fromJson(json);
  }
}

/// @nodoc
const $Shopping = _$ShoppingTearOff();

/// @nodoc
mixin _$Shopping {
  @JsonKey(toJson: foodToJson)
  Food? get food => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShoppingCopyWith<Shopping> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingCopyWith<$Res> {
  factory $ShoppingCopyWith(Shopping value, $Res Function(Shopping) then) =
      _$ShoppingCopyWithImpl<$Res>;
  $Res call({@JsonKey(toJson: foodToJson) Food? food, int amount});

  $FoodCopyWith<$Res>? get food;
}

/// @nodoc
class _$ShoppingCopyWithImpl<$Res> implements $ShoppingCopyWith<$Res> {
  _$ShoppingCopyWithImpl(this._value, this._then);

  final Shopping _value;
  // ignore: unused_field
  final $Res Function(Shopping) _then;

  @override
  $Res call({
    Object? food = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      food: food == freezed
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as Food?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $FoodCopyWith<$Res>? get food {
    if (_value.food == null) {
      return null;
    }

    return $FoodCopyWith<$Res>(_value.food!, (value) {
      return _then(_value.copyWith(food: value));
    });
  }
}

/// @nodoc
abstract class _$ShoppingCopyWith<$Res> implements $ShoppingCopyWith<$Res> {
  factory _$ShoppingCopyWith(_Shopping value, $Res Function(_Shopping) then) =
      __$ShoppingCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(toJson: foodToJson) Food? food, int amount});

  @override
  $FoodCopyWith<$Res>? get food;
}

/// @nodoc
class __$ShoppingCopyWithImpl<$Res> extends _$ShoppingCopyWithImpl<$Res>
    implements _$ShoppingCopyWith<$Res> {
  __$ShoppingCopyWithImpl(_Shopping _value, $Res Function(_Shopping) _then)
      : super(_value, (v) => _then(v as _Shopping));

  @override
  _Shopping get _value => super._value as _Shopping;

  @override
  $Res call({
    Object? food = freezed,
    Object? amount = freezed,
  }) {
    return _then(_Shopping(
      food: food == freezed
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as Food?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Shopping with DiagnosticableTreeMixin implements _Shopping {
  const _$_Shopping({@JsonKey(toJson: foodToJson) this.food, this.amount = 1});

  factory _$_Shopping.fromJson(Map<String, dynamic> json) =>
      _$_$_ShoppingFromJson(json);

  @override
  @JsonKey(toJson: foodToJson)
  final Food? food;
  @JsonKey(defaultValue: 1)
  @override
  final int amount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Shopping(food: $food, amount: $amount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Shopping'))
      ..add(DiagnosticsProperty('food', food))
      ..add(DiagnosticsProperty('amount', amount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Shopping &&
            (identical(other.food, food) ||
                const DeepCollectionEquality().equals(other.food, food)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(food) ^
      const DeepCollectionEquality().hash(amount);

  @JsonKey(ignore: true)
  @override
  _$ShoppingCopyWith<_Shopping> get copyWith =>
      __$ShoppingCopyWithImpl<_Shopping>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ShoppingToJson(this);
  }
}

abstract class _Shopping implements Shopping {
  const factory _Shopping(
      {@JsonKey(toJson: foodToJson) Food? food, int amount}) = _$_Shopping;

  factory _Shopping.fromJson(Map<String, dynamic> json) = _$_Shopping.fromJson;

  @override
  @JsonKey(toJson: foodToJson)
  Food? get food => throw _privateConstructorUsedError;
  @override
  int get amount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShoppingCopyWith<_Shopping> get copyWith =>
      throw _privateConstructorUsedError;
}
