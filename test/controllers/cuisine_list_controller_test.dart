import 'package:flutter_test/flutter_test.dart';
import 'package:kaidashikun/controllers/cuisine_list_controller.dart';
import 'package:kaidashikun/models/cuisine/cuisine.dart';
import 'package:kaidashikun/models/user/user.dart';
import 'package:kaidashikun/repositories/cuisine_repository.dart';
import 'package:mockito/mockito.dart';

class MockUser extends Mock implements User {}

void main() {
  test('CuisineListController', () async {
    final controller =
        CuisineListController(MockUser(), MockCuisineRepository());
    expect(controller.debugState, []);

    final cuisine = Cuisine();

    controller.add(cuisine, newId: 'test');
    expect(controller.debugState, [Cuisine(id: 'test')]);

    controller.update(cuisine.copyWith(id: 'test', name: 'tomato salad'));
    expect(controller.debugState, [Cuisine(id: 'test', name: 'tomato salad')]);

    controller.delete(Cuisine(id: 'test', name: 'tomato salad'));
    expect(controller.debugState, []);
  });
}
