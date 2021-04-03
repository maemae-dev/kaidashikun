import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kaidashikun/controllers/repository_providers.dart';

import 'package:kaidashikun/repositories/auth_repository.dart';
import 'package:kaidashikun/repositories/cuisine_repository.dart';
import 'package:kaidashikun/repositories/user_repository.dart';
import 'package:kaidashikun/screens/cuisine/cuisine_list_screen.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(ProviderScope(overrides: [
      authRepositoryProvider.overrideWithValue(MockAuthRepository()),
      cuisineRepositoryProvider.overrideWithValue(FakeCuisineRepository()),
      userRepositoryProvider.overrideWithValue(MockUserRepository()),
    ], child: MaterialApp(home: CuisineListScreen())));

    // expect(find.text('料理'), findsOneWidget);
    // await tester.tap(find.text('料理'));
    await tester.pumpAndSettle();
    await tester.pump(Duration(seconds: 1));

    expect(find.text('肉じゃが'), findsOneWidget);
    expect(find.text('カレー'), findsOneWidget);
    // // Verify that our counter starts at 0.
    // expect(find.text('0'), findsOneWidget);
    // expect(find.text('1'), findsNothing);

    // // Tap the '+' icon and trigger a frame.
    // await tester.tap(find.byIcon(Icons.add));
    // await tester.pump();

    // // Verify that our counter has incremented.
    // expect(find.text('0'), findsNothing);
    // expect(find.text('1'), findsOneWidget);
  });
}
