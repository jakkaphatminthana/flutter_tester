import '../data/entities/user.dart';
abstract class UserRepository {

  Future<List<User>> getUsers();
  Future<User> getUser(int id);
}
