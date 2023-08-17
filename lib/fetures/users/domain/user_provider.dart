import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tester/fetures/users/data/entity.dart';
import 'package:flutter_tester/fetures/users/data/user_repository_impl.dart';
import 'package:flutter_tester/fetures/users/domain/user_repository.dart';

final sentUserRepositoryProvider = Provider<UserRepository>((ref) => UserRepositoryImpl());
final UserRepository repository = UserRepositoryImpl();

final userNotifierProvider =
    StateNotifierProvider<UserProviderNotifier, List<User>>(
        (ref) => UserProviderNotifier(ref));

class UserProviderNotifier extends StateNotifier<List<User>> {
  final Ref ref;
  UserProviderNotifier(this.ref) : super([]);

  Future<List<User>> getUsers() async {
    final result = await ref.read(sentUserRepositoryProvider).getUsers();
    ref.read(userNotifierProvider.notifier).state = result;
    return result;
  }

  Future<User> getUser(int id) async {
    final result = await ref.read(sentUserRepositoryProvider).getUser(id);
    return result;
  }
}
