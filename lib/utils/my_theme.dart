import 'package:flutter/material.dart';
import 'package:kaidashikun/gen/fonts.gen.dart';

class MyTheme {
  static Color get primary => Color(0xFF06b2bb);
  static Color get accent => Color(0xFFfa5456);

  static ThemeData light() {
    final defaultTheme = ThemeData.light();
    return defaultTheme.copyWith(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme:
          defaultTheme.textTheme.apply(fontFamily: FontFamily.notoSansJP),
      primaryTextTheme: defaultTheme.primaryTextTheme
          .apply(fontFamily: FontFamily.notoSansJP),
      accentTextTheme:
          defaultTheme.accentTextTheme.apply(fontFamily: FontFamily.notoSansJP),
      primaryColor: primary,
      colorScheme: defaultTheme.colorScheme.copyWith(
        primary: primary,
        secondary: accent,
      ),
    );
  }

  static ThemeData dark() {
    final defaultTheme = ThemeData.dark();
    return defaultTheme.copyWith(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme:
          defaultTheme.textTheme.apply(fontFamily: FontFamily.notoSansJP),
      primaryTextTheme: defaultTheme.primaryTextTheme
          .apply(fontFamily: FontFamily.notoSansJP),
      accentTextTheme:
          defaultTheme.accentTextTheme.apply(fontFamily: FontFamily.notoSansJP),
      // primaryColor: primary,
      accentColor: primary,
      floatingActionButtonTheme: defaultTheme.floatingActionButtonTheme
          .copyWith(backgroundColor: accent),
      colorScheme: defaultTheme.colorScheme.copyWith(
        primary: primary,
        secondary: accent,
      ),
    );
  }
}
