import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kaidashikun/controllers/repository_providers.dart';
import 'package:kaidashikun/models/user/user.dart';
import 'package:kaidashikun/repositories/auth_repository.dart';
import 'package:kaidashikun/repositories/user_repository.dart';
import 'package:kaidashikun/screens/auth_reader/auth_reader_state.dart';

class AuthReaderController extends StateNotifier<AuthReaderState> {
  AuthReaderController(this.userRepository, this.authRepository)
      : super(AuthReaderState(isShowedDialog: false));

  final UserRepository userRepository;
  final AuthRepository authRepository;

  void showDialog() {
    state = state.copyWith(isShowedDialog: true);
  }

  void dismissDialog() {
    state = state.copyWith(isShowedDialog: false);
  }

  Future<void> createUserAnonymously() async {
    final credential = await authRepository.signInAnonymously();
    final user = User(uid: credential.user?.uid);
    await userRepository.createUser(user);
    return;
  }

  Future signOut() async {
    await authRepository.signOut();
  }
}

final authReaderController = StateNotifierProvider((ref) =>
    AuthReaderController(
        ref.read(userRepositoryProvider), ref.read(authRepositoryProvider)));
