import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaidashikun/screens/auth_reader/auth_reader.dart';
import 'package:kaidashikun/screens/home/home.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kaidashikun/utils/my_theme.dart';
import 'controllers/repository_providers.dart';
import 'repositories/auth_repository.dart';
import 'repositories/user_repository.dart';
import 'repositories/cuisine_repository.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    ProviderScope(overrides: [
      // authRepositoryProvider.overrideWithValue(MockAuthRepository()),
      // cuisineRepositoryProvider.overrideWithValue(FakeCuisineRepository()),
      // userRepositoryProvider.overrideWithValue(MockUserRepository()),
    ], child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''),
        const Locale('ja', ''),
      ],
      // themeMode: ThemeMode.light,
      title: 'kaidashikun',
      theme: MyTheme.light(),
      darkTheme: MyTheme.dark(),
      home: AuthReader(child: Home()),
    );
  }
}
