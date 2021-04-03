import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kaidashikun/controllers/repository_providers.dart';
import 'package:kaidashikun/models/cuisine/cuisine.dart';
import 'package:kaidashikun/models/food/food.dart';
import 'package:kaidashikun/models/shopping/shopping.dart';

import 'package:kaidashikun/repositories/auth_repository.dart';
import 'package:kaidashikun/repositories/cuisine_repository.dart';
import 'package:kaidashikun/repositories/user_repository.dart';
import 'package:kaidashikun/screens/cuisine/shopping_item.dart';

void main() {
  testWidgets('Shoppin List Item test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(ProviderScope(
      overrides: [
        authRepositoryProvider.overrideWithValue(MockAuthRepository()),
        cuisineRepositoryProvider.overrideWithValue(FakeCuisineRepository()),
        userRepositoryProvider.overrideWithValue(MockUserRepository()),
      ],
      child: MediaQuery(
        data: MediaQueryData(size: Size(600, 1000)),
        child: Material(
          child: Localizations(
            delegates: [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            locale: Locale('ja'),
            child: ShoppingItem(
              Cuisine(
                name: '肉じゃが',
                shoppings: [
                  Shopping(food: Food(name: 'じゃがいも', uid: 'jyaga'), amount: 1)
                ],
              ),
              Shopping(food: Food(name: 'じゃがいも', uid: 'jyaga'), amount: 1),
            ),
          ),
        ),
      ),
    ));

    await tester.pumpAndSettle();

    expect(find.text('じゃがいも'), findsOneWidget);
    expect(find.text('1'), findsOneWidget);
  });
}
