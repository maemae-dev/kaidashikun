// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'shopping_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShoppingList _$ShoppingListFromJson(Map<String, dynamic> json) {
  return _ShoppingList.fromJson(json);
}

/// @nodoc
class _$ShoppingListTearOff {
  const _$ShoppingListTearOff();

  _ShoppingList call(
      {List<Cuisine> cuisines = const [],
      List<Shopping> shoppings = const []}) {
    return _ShoppingList(
      cuisines: cuisines,
      shoppings: shoppings,
    );
  }

  ShoppingList fromJson(Map<String, Object> json) {
    return ShoppingList.fromJson(json);
  }
}

/// @nodoc
const $ShoppingList = _$ShoppingListTearOff();

/// @nodoc
mixin _$ShoppingList {
  List<Cuisine> get cuisines => throw _privateConstructorUsedError;
  List<Shopping> get shoppings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShoppingListCopyWith<ShoppingList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingListCopyWith<$Res> {
  factory $ShoppingListCopyWith(
          ShoppingList value, $Res Function(ShoppingList) then) =
      _$ShoppingListCopyWithImpl<$Res>;
  $Res call({List<Cuisine> cuisines, List<Shopping> shoppings});
}

/// @nodoc
class _$ShoppingListCopyWithImpl<$Res> implements $ShoppingListCopyWith<$Res> {
  _$ShoppingListCopyWithImpl(this._value, this._then);

  final ShoppingList _value;
  // ignore: unused_field
  final $Res Function(ShoppingList) _then;

  @override
  $Res call({
    Object? cuisines = freezed,
    Object? shoppings = freezed,
  }) {
    return _then(_value.copyWith(
      cuisines: cuisines == freezed
          ? _value.cuisines
          : cuisines // ignore: cast_nullable_to_non_nullable
              as List<Cuisine>,
      shoppings: shoppings == freezed
          ? _value.shoppings
          : shoppings // ignore: cast_nullable_to_non_nullable
              as List<Shopping>,
    ));
  }
}

/// @nodoc
abstract class _$ShoppingListCopyWith<$Res>
    implements $ShoppingListCopyWith<$Res> {
  factory _$ShoppingListCopyWith(
          _ShoppingList value, $Res Function(_ShoppingList) then) =
      __$ShoppingListCopyWithImpl<$Res>;
  @override
  $Res call({List<Cuisine> cuisines, List<Shopping> shoppings});
}

/// @nodoc
class __$ShoppingListCopyWithImpl<$Res> extends _$ShoppingListCopyWithImpl<$Res>
    implements _$ShoppingListCopyWith<$Res> {
  __$ShoppingListCopyWithImpl(
      _ShoppingList _value, $Res Function(_ShoppingList) _then)
      : super(_value, (v) => _then(v as _ShoppingList));

  @override
  _ShoppingList get _value => super._value as _ShoppingList;

  @override
  $Res call({
    Object? cuisines = freezed,
    Object? shoppings = freezed,
  }) {
    return _then(_ShoppingList(
      cuisines: cuisines == freezed
          ? _value.cuisines
          : cuisines // ignore: cast_nullable_to_non_nullable
              as List<Cuisine>,
      shoppings: shoppings == freezed
          ? _value.shoppings
          : shoppings // ignore: cast_nullable_to_non_nullable
              as List<Shopping>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ShoppingList with DiagnosticableTreeMixin implements _ShoppingList {
  const _$_ShoppingList({this.cuisines = const [], this.shoppings = const []});

  factory _$_ShoppingList.fromJson(Map<String, dynamic> json) =>
      _$_$_ShoppingListFromJson(json);

  @JsonKey(defaultValue: const [])
  @override
  final List<Cuisine> cuisines;
  @JsonKey(defaultValue: const [])
  @override
  final List<Shopping> shoppings;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShoppingList(cuisines: $cuisines, shoppings: $shoppings)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShoppingList'))
      ..add(DiagnosticsProperty('cuisines', cuisines))
      ..add(DiagnosticsProperty('shoppings', shoppings));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShoppingList &&
            (identical(other.cuisines, cuisines) ||
                const DeepCollectionEquality()
                    .equals(other.cuisines, cuisines)) &&
            (identical(other.shoppings, shoppings) ||
                const DeepCollectionEquality()
                    .equals(other.shoppings, shoppings)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cuisines) ^
      const DeepCollectionEquality().hash(shoppings);

  @JsonKey(ignore: true)
  @override
  _$ShoppingListCopyWith<_ShoppingList> get copyWith =>
      __$ShoppingListCopyWithImpl<_ShoppingList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ShoppingListToJson(this);
  }
}

abstract class _ShoppingList implements ShoppingList {
  const factory _ShoppingList(
      {List<Cuisine> cuisines, List<Shopping> shoppings}) = _$_ShoppingList;

  factory _ShoppingList.fromJson(Map<String, dynamic> json) =
      _$_ShoppingList.fromJson;

  @override
  List<Cuisine> get cuisines => throw _privateConstructorUsedError;
  @override
  List<Shopping> get shoppings => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShoppingListCopyWith<_ShoppingList> get copyWith =>
      throw _privateConstructorUsedError;
}
