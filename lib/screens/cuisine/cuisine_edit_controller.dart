import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kaidashikun/controllers/cuisine_list_controller.dart';
import 'package:kaidashikun/controllers/repository_providers.dart';
import 'package:kaidashikun/models/cuisine/cuisine.dart';
import 'package:kaidashikun/models/food/food.dart';
import 'package:kaidashikun/models/shopping/shopping.dart';
import 'package:kaidashikun/repositories/cuisine_repository.dart';
import 'package:state_notifier/state_notifier.dart';

class CuisineEditController extends StateNotifier<Cuisine> {
  CuisineEditController(
      this.repository, this.defaultCuisine, this.listController)
      : super(defaultCuisine ?? Cuisine());

  final Cuisine? defaultCuisine;
  final CuisineListController listController;
  final CuisineRepository repository;

  void onSave() {
    defaultCuisine == null ? _add() : _update();
  }

  void _add() {
    listController.add(state);
  }

  void _update() {
    listController.update(state);
  }

  void addShopping() {
    state = state.copyWith(shoppings: [
      ...state.shoppings,
      Shopping(
        food: Food(uid: repository.newId()),
      )
    ]);
  }

  void updateShoppingName(Shopping shopping, String name) {
    state = state.copyWith(
      shoppings: state.shoppings
          .map((s) => s.food!.uid == shopping.food!.uid
              ? s.copyWith(food: shopping.food!.copyWith(name: name))
              : s)
          .toList(),
    );
  }

  void updateShoppingAmount(Shopping shopping, String amount) {
    state = state.copyWith(
      shoppings: state.shoppings
          .map((s) => s.food!.uid == shopping.food!.uid
              ? shopping.copyWith(amount: int.parse(amount))
              : shopping)
          .toList(),
    );
  }

  void deleteShopping() {}

  void updateCuisineName(String name) {
    state = state.copyWith(name: name);
  }
}

final cuisineEditController = StateNotifierProvider.autoDispose.family(
    (ref, Cuisine? cuisine) => CuisineEditController(
        ref.watch(cuisineRepositoryProvider),
        cuisine,
        ref.read(cuisineListController)));
