import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kaidashikun/screens/home/tab_bar_state.dart';

class AppController extends StateNotifier<TabBarState> {
  AppController()
      : super(
          TabBarState(
            controller: TabController(
              length: 3,
              vsync: MyTicker(),
            ),
            currentIndex: 0,
          ),
        );

  void handleTap(int index) {
    state.controller?.animateTo(index);
    state = state.copyWith(currentIndex: index);
  }
}

final appController =
    StateNotifierProvider<AppController>((ref) => AppController());

class MyTicker implements TickerProvider {
  Ticker? _ticker;

  @override
  Ticker createTicker(TickerCallback onTick) {
    assert(() {
      if (_ticker == null) return true;
      throw FlutterError.fromParts(<DiagnosticsNode>[
        ErrorSummary(
            '$runtimeType is a SingleTickerProviderStateMixin but multiple tickers were created.'),
        ErrorDescription(
            'A SingleTickerProviderStateMixin can only be used as a TickerProvider once.'),
        ErrorHint(
            'If a State is used for multiple AnimationController objects, or if it is passed to other '
            'objects and those objects might use it more than one time in total, then instead of '
            'mixing in a SingleTickerProviderStateMixin, use a regular TickerProviderStateMixin.')
      ]);
    }());
    _ticker = Ticker(onTick, debugLabel: 'created by $this');
    return _ticker!;
  }
}
