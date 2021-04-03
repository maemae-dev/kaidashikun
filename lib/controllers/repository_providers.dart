import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kaidashikun/repositories/auth_repository.dart';
import 'package:kaidashikun/repositories/cuisine_repository.dart';
import 'package:kaidashikun/repositories/user_repository.dart';

final authRepositoryProvider =
    Provider<AuthRepository>((ref) => AuthRepository());

final cuisineRepositoryProvider =
    Provider<CuisineRepository>((ref) => CuisineRepository());

final userRepositoryProvider =
    Provider<UserRepository>((ref) => UserRepository());
