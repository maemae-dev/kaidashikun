// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cuisine.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Cuisine _$CuisineFromJson(Map<String, dynamic> json) {
  return _Cuisine.fromJson(json);
}

/// @nodoc
class _$CuisineTearOff {
  const _$CuisineTearOff();

  _Cuisine call(
      {String? id,
      String name = '',
      @JsonKey(toJson: dateTimeToTimestamp, fromJson: timestampToDateTime)
          DateTime? lastCookedAt,
      @JsonKey(toJson: shoppingsToJson)
          List<Shopping> shoppings = const []}) {
    return _Cuisine(
      id: id,
      name: name,
      lastCookedAt: lastCookedAt,
      shoppings: shoppings,
    );
  }

  Cuisine fromJson(Map<String, Object> json) {
    return Cuisine.fromJson(json);
  }
}

/// @nodoc
const $Cuisine = _$CuisineTearOff();

/// @nodoc
mixin _$Cuisine {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(toJson: dateTimeToTimestamp, fromJson: timestampToDateTime)
  DateTime? get lastCookedAt => throw _privateConstructorUsedError;
  @JsonKey(toJson: shoppingsToJson)
  List<Shopping> get shoppings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CuisineCopyWith<Cuisine> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CuisineCopyWith<$Res> {
  factory $CuisineCopyWith(Cuisine value, $Res Function(Cuisine) then) =
      _$CuisineCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String name,
      @JsonKey(toJson: dateTimeToTimestamp, fromJson: timestampToDateTime)
          DateTime? lastCookedAt,
      @JsonKey(toJson: shoppingsToJson)
          List<Shopping> shoppings});
}

/// @nodoc
class _$CuisineCopyWithImpl<$Res> implements $CuisineCopyWith<$Res> {
  _$CuisineCopyWithImpl(this._value, this._then);

  final Cuisine _value;
  // ignore: unused_field
  final $Res Function(Cuisine) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? lastCookedAt = freezed,
    Object? shoppings = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastCookedAt: lastCookedAt == freezed
          ? _value.lastCookedAt
          : lastCookedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      shoppings: shoppings == freezed
          ? _value.shoppings
          : shoppings // ignore: cast_nullable_to_non_nullable
              as List<Shopping>,
    ));
  }
}

/// @nodoc
abstract class _$CuisineCopyWith<$Res> implements $CuisineCopyWith<$Res> {
  factory _$CuisineCopyWith(_Cuisine value, $Res Function(_Cuisine) then) =
      __$CuisineCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String name,
      @JsonKey(toJson: dateTimeToTimestamp, fromJson: timestampToDateTime)
          DateTime? lastCookedAt,
      @JsonKey(toJson: shoppingsToJson)
          List<Shopping> shoppings});
}

/// @nodoc
class __$CuisineCopyWithImpl<$Res> extends _$CuisineCopyWithImpl<$Res>
    implements _$CuisineCopyWith<$Res> {
  __$CuisineCopyWithImpl(_Cuisine _value, $Res Function(_Cuisine) _then)
      : super(_value, (v) => _then(v as _Cuisine));

  @override
  _Cuisine get _value => super._value as _Cuisine;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? lastCookedAt = freezed,
    Object? shoppings = freezed,
  }) {
    return _then(_Cuisine(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastCookedAt: lastCookedAt == freezed
          ? _value.lastCookedAt
          : lastCookedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      shoppings: shoppings == freezed
          ? _value.shoppings
          : shoppings // ignore: cast_nullable_to_non_nullable
              as List<Shopping>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Cuisine with DiagnosticableTreeMixin implements _Cuisine {
  const _$_Cuisine(
      {this.id,
      this.name = '',
      @JsonKey(toJson: dateTimeToTimestamp, fromJson: timestampToDateTime)
          this.lastCookedAt,
      @JsonKey(toJson: shoppingsToJson)
          this.shoppings = const []});

  factory _$_Cuisine.fromJson(Map<String, dynamic> json) =>
      _$_$_CuisineFromJson(json);

  @override
  final String? id;
  @JsonKey(defaultValue: '')
  @override
  final String name;
  @override
  @JsonKey(toJson: dateTimeToTimestamp, fromJson: timestampToDateTime)
  final DateTime? lastCookedAt;
  @override
  @JsonKey(toJson: shoppingsToJson)
  final List<Shopping> shoppings;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Cuisine(id: $id, name: $name, lastCookedAt: $lastCookedAt, shoppings: $shoppings)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Cuisine'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('lastCookedAt', lastCookedAt))
      ..add(DiagnosticsProperty('shoppings', shoppings));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Cuisine &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.lastCookedAt, lastCookedAt) ||
                const DeepCollectionEquality()
                    .equals(other.lastCookedAt, lastCookedAt)) &&
            (identical(other.shoppings, shoppings) ||
                const DeepCollectionEquality()
                    .equals(other.shoppings, shoppings)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(lastCookedAt) ^
      const DeepCollectionEquality().hash(shoppings);

  @JsonKey(ignore: true)
  @override
  _$CuisineCopyWith<_Cuisine> get copyWith =>
      __$CuisineCopyWithImpl<_Cuisine>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CuisineToJson(this);
  }
}

abstract class _Cuisine implements Cuisine {
  const factory _Cuisine(
      {String? id,
      String name,
      @JsonKey(toJson: dateTimeToTimestamp, fromJson: timestampToDateTime)
          DateTime? lastCookedAt,
      @JsonKey(toJson: shoppingsToJson)
          List<Shopping> shoppings}) = _$_Cuisine;

  factory _Cuisine.fromJson(Map<String, dynamic> json) = _$_Cuisine.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(toJson: dateTimeToTimestamp, fromJson: timestampToDateTime)
  DateTime? get lastCookedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(toJson: shoppingsToJson)
  List<Shopping> get shoppings => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CuisineCopyWith<_Cuisine> get copyWith =>
      throw _privateConstructorUsedError;
}
