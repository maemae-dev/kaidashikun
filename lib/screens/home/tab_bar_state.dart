import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'tab_bar_state.freezed.dart';

@freezed
abstract class TabBarState with _$TabBarState {
  const factory TabBarState({
    TabController? controller,
    @Default(0) int currentIndex,
  }) = _TabBarState;
}
