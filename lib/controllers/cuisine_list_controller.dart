import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kaidashikun/models/cuisine/cuisine.dart';
import 'package:kaidashikun/models/user/user.dart';
import 'package:kaidashikun/repositories/cuisine_repository.dart';
import 'repository_providers.dart';
import 'user_provider.dart';

final cuisineListController =
    StateNotifierProvider<CuisineListController>((ref) {
  final user = ref.watch(userProvider.state);
  return CuisineListController(user, ref.read(cuisineRepositoryProvider));
});

class CuisineListController extends StateNotifier<List<Cuisine>> {
  final CuisineRepository repository;
  final User? user;
  CuisineListController(this.user, this.repository) : super(<Cuisine>[]) {
    final s = repository.streamCuisines(user);
    s.listen((event) {
      if (mounted) state = event;
    });
  }

  void add(Cuisine cuisine, {String? newId}) {
    final withId = cuisine.copyWith(id: newId ?? repository.newId());
    repository.addCuisine(user, withId);
    state = [...state, withId];
  }

  void update(Cuisine cuisine) {
    repository.updateCuisine(user, cuisine);
    state = state.map((c) => c.id == cuisine.id ? cuisine : c).toList();
  }

  void delete(Cuisine cuisine) {
    repository.deleteCuisine(user, cuisine);
    state = state.where((c) => c.id != cuisine.id).toList();
  }
}
