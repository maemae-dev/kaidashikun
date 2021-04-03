import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kaidashikun/models/cuisine/cuisine.dart';
import 'package:kaidashikun/models/shopping/shopping.dart';
import 'package:kaidashikun/models/shopping_list/shopping_list.dart';

class ShoppingListController extends StateNotifier<ShoppingList> {
  ShoppingListController()
      : super(
          ShoppingList(cuisines: <Cuisine>[], shoppings: <Shopping>[]),
        );

  void onTap(Cuisine cuisine) {
    if (state.cuisines.contains(cuisine)) {
      state = _removeCuisine(cuisine);
      return;
    }
    state = _addCuisine(cuisine);
  }

  ShoppingList _removeCuisine(Cuisine cuisine) {
    final excluded = state.cuisines.where((c) => c != cuisine).toList();
    return state.copyWith(
      cuisines: excluded,
      shoppings: _calcShoppings(excluded),
    );
  }

  ShoppingList _addCuisine(Cuisine cuisine) {
    final newCuisines = [...state.cuisines, cuisine];
    return state.copyWith(
      cuisines: newCuisines,
      shoppings: _calcShoppings(newCuisines),
    );
  }

  List<Shopping> _calcShoppings(List<Cuisine> cuisines) {
    return cuisines
        .map<List<Shopping>>((cuisine) => cuisine.shoppings)
        .expand<Shopping>((s) => s)
        .fold<List<Shopping>>(
            [],
            (prev, shopping) => prev.map((e) => e.food).contains(shopping.food)
                ? prev
                    .map((pre) => pre.food == shopping.food
                        ? pre.copyWith(amount: pre.amount + shopping.amount)
                        : pre)
                    .toList()
                : [...prev, shopping]);
  }
}

final shoppingListController = StateNotifierProvider<ShoppingListController>(
  (ref) => ShoppingListController(),
);
