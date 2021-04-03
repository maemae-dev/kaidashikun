import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kaidashikun/controllers/repository_providers.dart';

final authStreamProvider = StreamProvider(
    (ref) => ref.watch(authRepositoryProvider).authStateChanges());
