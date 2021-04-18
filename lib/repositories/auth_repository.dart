import 'package:firebase_auth/firebase_auth.dart';
import 'package:mockito/mockito.dart';

class AuthRepository {
  Stream<User?> authStateChanges() {
    return FirebaseAuth.instance.authStateChanges();
  }

  Future<UserCredential> signInAnonymously() {
    return FirebaseAuth.instance.signInAnonymously();
  }

  Future signOut() {
    return FirebaseAuth.instance.signOut();
  }
}

class MockAuthRepository extends Mock implements AuthRepository {}
