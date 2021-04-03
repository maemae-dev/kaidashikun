import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kaidashikun/models/user/user.dart' as model;
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:mockito/mockito.dart';

class UserRepository {
  final _db = FirebaseFirestore.instance;

  Stream<model.User?> streamUser() {
    final transformer = StreamTransformer<auth.User?, model.User?>.fromHandlers(
        handleData: (firebaseUser, sink) {
      if (firebaseUser != null) {
        _db
            .collection('users')
            .doc(firebaseUser.uid)
            .snapshots()
            .map((snap) =>
                snap.exists ? model.User.fromJson(snap.data()!) : null)
            .listen(sink.add);
      } else {
        sink.add(null);
      }
    });
    return FirebaseAuth.instance.userChanges().transform(transformer);
  }

  Future<void> createUser(model.User user) {
    return _db.collection('users').doc(user.uid).set(user.toJson());
  }
}

class MockUserRepository extends Fake implements UserRepository {
  @override
  Stream<model.User> streamUser() {
    return Stream.value(model.User(uid: 'mockUserUid'));
  }

  @override
  Future<void> createUser(model.User user) {
    return Future.value();
  }
}
