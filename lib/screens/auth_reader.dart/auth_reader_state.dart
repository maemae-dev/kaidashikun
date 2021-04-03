import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_reader_state.freezed.dart';

@freezed
abstract class AuthReaderState with _$AuthReaderState {
  const factory AuthReaderState({
    @Default(false) bool isShowedDialog,
  }) = _AuthReaderState;
}
