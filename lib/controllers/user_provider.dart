import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kaidashikun/models/user/user.dart';
import 'repository_providers.dart';

final userStreamProvider = StreamProvider<User?>(
    (ref) => ref.read(userRepositoryProvider).streamUser());

final userProvider = StateNotifierProvider<UserProvider>(
    (ref) => UserProvider(ref.watch(userStreamProvider)));

class UserProvider extends StateNotifier<User?> {
  UserProvider(AsyncValue<User?> value) : super(null) {
    if (mounted) {
      state = value.when(
          data: (user) => user, loading: () => null, error: (_, __) => null);
    }
  }
}
