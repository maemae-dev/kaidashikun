import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kaidashikun/models/cuisine/cuisine.dart';
import 'package:kaidashikun/models/food/food.dart';
import 'package:kaidashikun/models/shopping/shopping.dart';
import 'package:kaidashikun/models/user/user.dart';
import 'package:kaidashikun/utils/auto_id_generator.dart';
import 'package:mockito/mockito.dart';

class CuisineRepository {
  final _db = FirebaseFirestore.instance;
  Stream<List<Cuisine>> streamCuisines(User? user) {
    if (user == null) return Stream.value([]);
    return _db
        .collection('users')
        .doc(user.uid)
        .collection('cuisines')
        .snapshots()
        .map<List<Cuisine>>(
          (snap) => snap.docs
              .map((doc) => Cuisine.fromJson(
                    doc.data()!,
                  ))
              .toList(),
        );
  }

  Future<void> addCuisine(User? user, Cuisine cuisine) {
    assert(user != null);

    return _db
        .collection('users')
        .doc(user?.uid)
        .collection('cuisines')
        .doc(cuisine.id)
        .set(cuisine.toJson());
  }

  Future<void> updateCuisine(User? user, Cuisine cuisine) {
    assert(user != null);
    return _db
        .collection('users')
        .doc(user?.uid)
        .collection('cuisines')
        .doc(cuisine.id)
        .update(cuisine.toJson());
  }

  Future<void> deleteCuisine(User? user, Cuisine cuisine) {
    assert(user != null);
    return _db
        .collection('users')
        .doc(user?.uid)
        .collection('cuisines')
        .doc(cuisine.id)
        .delete();
  }

  String newId() {
    return _db.collection('users').doc().id;
  }
}

class MockCuisineRepository extends Mock implements CuisineRepository {}

class FakeCuisineRepository extends Fake implements CuisineRepository {
  FakeCuisineRepository()
      : controller = StreamController<List<Cuisine>>.broadcast() {
    controller.add(list);
  }
  List<Cuisine> list = [
    Cuisine(
      id: 'nikujyaga',
      name: '肉じゃが',
      lastCookedAt: DateTime(2020, 2, 10),
      shoppings: <Shopping>[
        Shopping(food: Food(uid: 'gyuniku', name: '牛肉'), amount: 1),
        Shopping(food: Food(uid: 'imo', name: 'じゃがいも'), amount: 2),
      ],
    ),
    Cuisine(
      id: 'curry',
      name: 'カレー',
      lastCookedAt: DateTime(2020, 2, 10),
      shoppings: <Shopping>[
        Shopping(food: Food(uid: 'gyuniku', name: '牛肉'), amount: 2),
        Shopping(food: Food(uid: 'imo', name: 'じゃがいも'), amount: 3),
        Shopping(food: Food(uid: 'ninnjin', name: '人参'), amount: 1),
      ],
    ),
  ];
  final StreamController<List<Cuisine>> controller;

  @override
  Stream<List<Cuisine>> streamCuisines(User? user) {
    Future.delayed(
        Duration(milliseconds: 200), () async => controller.add(list));
    return controller.stream;
  }

  @override
  Future<void> addCuisine(User? user, Cuisine cuisine) async {
    Future.delayed(Duration(milliseconds: 500), () async {
      list = [...list, cuisine];
      controller.sink.add(list);
    });
    return Future.value();
  }

  @override
  Future<void> updateCuisine(User? user, Cuisine cuisine) async {
    list = list.map((c) => c.id == cuisine.id ? cuisine : c).toList();
    controller.sink.add(list);
    return Future.value();
  }

  @override
  Future<void> deleteCuisine(User? user, Cuisine cuisine) async {
    list = list.where((c) => c.id != cuisine.id).toList();
    controller.sink.add(list);
    return Future.value();
  }

  @override
  String newId() {
    return AutoIdGenerator.autoId();
  }
}
