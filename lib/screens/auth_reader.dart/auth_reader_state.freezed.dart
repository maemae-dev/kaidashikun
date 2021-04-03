// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_reader_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthReaderStateTearOff {
  const _$AuthReaderStateTearOff();

  _AuthReaderState call({bool isShowedDialog = false}) {
    return _AuthReaderState(
      isShowedDialog: isShowedDialog,
    );
  }
}

/// @nodoc
const $AuthReaderState = _$AuthReaderStateTearOff();

/// @nodoc
mixin _$AuthReaderState {
  bool get isShowedDialog => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthReaderStateCopyWith<AuthReaderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthReaderStateCopyWith<$Res> {
  factory $AuthReaderStateCopyWith(
          AuthReaderState value, $Res Function(AuthReaderState) then) =
      _$AuthReaderStateCopyWithImpl<$Res>;
  $Res call({bool isShowedDialog});
}

/// @nodoc
class _$AuthReaderStateCopyWithImpl<$Res>
    implements $AuthReaderStateCopyWith<$Res> {
  _$AuthReaderStateCopyWithImpl(this._value, this._then);

  final AuthReaderState _value;
  // ignore: unused_field
  final $Res Function(AuthReaderState) _then;

  @override
  $Res call({
    Object? isShowedDialog = freezed,
  }) {
    return _then(_value.copyWith(
      isShowedDialog: isShowedDialog == freezed
          ? _value.isShowedDialog
          : isShowedDialog // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$AuthReaderStateCopyWith<$Res>
    implements $AuthReaderStateCopyWith<$Res> {
  factory _$AuthReaderStateCopyWith(
          _AuthReaderState value, $Res Function(_AuthReaderState) then) =
      __$AuthReaderStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isShowedDialog});
}

/// @nodoc
class __$AuthReaderStateCopyWithImpl<$Res>
    extends _$AuthReaderStateCopyWithImpl<$Res>
    implements _$AuthReaderStateCopyWith<$Res> {
  __$AuthReaderStateCopyWithImpl(
      _AuthReaderState _value, $Res Function(_AuthReaderState) _then)
      : super(_value, (v) => _then(v as _AuthReaderState));

  @override
  _AuthReaderState get _value => super._value as _AuthReaderState;

  @override
  $Res call({
    Object? isShowedDialog = freezed,
  }) {
    return _then(_AuthReaderState(
      isShowedDialog: isShowedDialog == freezed
          ? _value.isShowedDialog
          : isShowedDialog // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_AuthReaderState
    with DiagnosticableTreeMixin
    implements _AuthReaderState {
  const _$_AuthReaderState({this.isShowedDialog = false});

  @JsonKey(defaultValue: false)
  @override
  final bool isShowedDialog;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthReaderState(isShowedDialog: $isShowedDialog)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthReaderState'))
      ..add(DiagnosticsProperty('isShowedDialog', isShowedDialog));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthReaderState &&
            (identical(other.isShowedDialog, isShowedDialog) ||
                const DeepCollectionEquality()
                    .equals(other.isShowedDialog, isShowedDialog)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isShowedDialog);

  @JsonKey(ignore: true)
  @override
  _$AuthReaderStateCopyWith<_AuthReaderState> get copyWith =>
      __$AuthReaderStateCopyWithImpl<_AuthReaderState>(this, _$identity);
}

abstract class _AuthReaderState implements AuthReaderState {
  const factory _AuthReaderState({bool isShowedDialog}) = _$_AuthReaderState;

  @override
  bool get isShowedDialog => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AuthReaderStateCopyWith<_AuthReaderState> get copyWith =>
      throw _privateConstructorUsedError;
}
