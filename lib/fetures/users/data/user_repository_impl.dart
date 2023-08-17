import 'package:flutter_tester/core/repositories/network_utils.dart';
import 'package:flutter_tester/fetures/users/data/entity.dart';
import '../../../core/exceptions/repository_exception.dart';
import '../domain/user_repository.dart';

class UserRepositoryImpl implements UserRepository {

  @override
  Future<List<User>> getUsers() async {
    final response = await NetworkUtils.get<List>('/users').catchError((error) {
      if (error is RepositoryException) {
        throw error;
      } else {
        throw const RepositoryException();
      }
    });

    return response.map((e) => User.fromJson(e)).toList();
  }

  @override
  Future<User> getUser(int id) async {
    final response = await NetworkUtils.get<Map<String, dynamic>>('/users/$id')
        .catchError((error) {
      if (error is RepositoryException) {
        throw error;
      } else {
        throw const RepositoryException();
      }
    });

    final user = User.fromJson(response);
    return user;
  }
}
