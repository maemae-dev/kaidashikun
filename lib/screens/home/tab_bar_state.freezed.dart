// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tab_bar_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TabBarStateTearOff {
  const _$TabBarStateTearOff();

  _TabBarState call({TabController? controller, int currentIndex = 0}) {
    return _TabBarState(
      controller: controller,
      currentIndex: currentIndex,
    );
  }
}

/// @nodoc
const $TabBarState = _$TabBarStateTearOff();

/// @nodoc
mixin _$TabBarState {
  TabController? get controller => throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TabBarStateCopyWith<TabBarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabBarStateCopyWith<$Res> {
  factory $TabBarStateCopyWith(
          TabBarState value, $Res Function(TabBarState) then) =
      _$TabBarStateCopyWithImpl<$Res>;
  $Res call({TabController? controller, int currentIndex});
}

/// @nodoc
class _$TabBarStateCopyWithImpl<$Res> implements $TabBarStateCopyWith<$Res> {
  _$TabBarStateCopyWithImpl(this._value, this._then);

  final TabBarState _value;
  // ignore: unused_field
  final $Res Function(TabBarState) _then;

  @override
  $Res call({
    Object? controller = freezed,
    Object? currentIndex = freezed,
  }) {
    return _then(_value.copyWith(
      controller: controller == freezed
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as TabController?,
      currentIndex: currentIndex == freezed
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$TabBarStateCopyWith<$Res>
    implements $TabBarStateCopyWith<$Res> {
  factory _$TabBarStateCopyWith(
          _TabBarState value, $Res Function(_TabBarState) then) =
      __$TabBarStateCopyWithImpl<$Res>;
  @override
  $Res call({TabController? controller, int currentIndex});
}

/// @nodoc
class __$TabBarStateCopyWithImpl<$Res> extends _$TabBarStateCopyWithImpl<$Res>
    implements _$TabBarStateCopyWith<$Res> {
  __$TabBarStateCopyWithImpl(
      _TabBarState _value, $Res Function(_TabBarState) _then)
      : super(_value, (v) => _then(v as _TabBarState));

  @override
  _TabBarState get _value => super._value as _TabBarState;

  @override
  $Res call({
    Object? controller = freezed,
    Object? currentIndex = freezed,
  }) {
    return _then(_TabBarState(
      controller: controller == freezed
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as TabController?,
      currentIndex: currentIndex == freezed
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$_TabBarState with DiagnosticableTreeMixin implements _TabBarState {
  const _$_TabBarState({this.controller, this.currentIndex = 0});

  @override
  final TabController? controller;
  @JsonKey(defaultValue: 0)
  @override
  final int currentIndex;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TabBarState(controller: $controller, currentIndex: $currentIndex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TabBarState'))
      ..add(DiagnosticsProperty('controller', controller))
      ..add(DiagnosticsProperty('currentIndex', currentIndex));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TabBarState &&
            (identical(other.controller, controller) ||
                const DeepCollectionEquality()
                    .equals(other.controller, controller)) &&
            (identical(other.currentIndex, currentIndex) ||
                const DeepCollectionEquality()
                    .equals(other.currentIndex, currentIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(controller) ^
      const DeepCollectionEquality().hash(currentIndex);

  @JsonKey(ignore: true)
  @override
  _$TabBarStateCopyWith<_TabBarState> get copyWith =>
      __$TabBarStateCopyWithImpl<_TabBarState>(this, _$identity);
}

abstract class _TabBarState implements TabBarState {
  const factory _TabBarState({TabController? controller, int currentIndex}) =
      _$_TabBarState;

  @override
  TabController? get controller => throw _privateConstructorUsedError;
  @override
  int get currentIndex => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TabBarStateCopyWith<_TabBarState> get copyWith =>
      throw _privateConstructorUsedError;
}
