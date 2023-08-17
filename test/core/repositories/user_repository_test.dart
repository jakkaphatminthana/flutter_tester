// import 'package:dio/dio.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:flutter_tester/core/exceptions/repository_exception.dart';
// import 'package:flutter_tester/fetures/users/data/entities/user.dart';
// import 'package:flutter_tester/fetures/users/data/user_repository_impl.dart';
// import 'package:flutter_tester/fetures/users/domain/user_repository.dart';
// import 'package:mockito/annotations.dart';
// import 'package:mockito/mockito.dart';
// import 'user_repository_test.mocks.dart';

// @GenerateMocks([Dio])
// void main() {
//   late MockDio mockDio;
//   late UserRepository userRepository;

//   setUp(() {
//     mockDio = MockDio();
//     userRepository = UserRepositoryImpl();
//   });

//   tearDown(() {
//     mockDio.close();
//   });

//   group('UserRepository', () {
//     test('should create UserRepository without dio', () async {
//       // ACT
//       final userRepository = UserRepositoryImpl();

//       // ASSERT
//       expect(userRepository, isA<UserRepository>());
//       expect(userRepository, isA<UserRepositoryImpl>());
//     });

//     group('getUsers', () {
//       test('should return List<User> when status code is 200', () async {
//         // ARRANGE
//         const fakeBody =
//             '[{"id":1,"name":"Leanne Goodbye","username":"Bret","email":"Sincere@april.biz","address":{"street":"Kulas Light","suite":"Apt. 556","city":"Gwenborough","zipcode":"92998-3874","geo":{"lat":"-37.3159","lng":"81.1496"}},"phone":"1-770-736-8031 x56442","website":"hildegard.org","company":{"name":"Romaguera-Crona","catchPhrase":"Multi-layered client-server neural-net","bs":"harness real-time e-markets"}},{"id":2,"name":"Ervin Howell","username":"Antonette","email":"Shanna@melissa.tv","address":{"street":"Victor Plains","suite":"Suite 879","city":"Wisokyburgh","zipcode":"90566-7771","geo":{"lat":"-43.9509","lng":"-34.4618"}},"phone":"010-692-6593 x09125","website":"anastasia.net","company":{"name":"Deckow-Crist","catchPhrase":"Proactive didactic contingency","bs":"synergize scalable supply-chains"}}]';
//         final fakeResponse = Response(
//             statusCode: 200, requestOptions: RequestOptions(data: fakeBody));
//         when(mockDio.get(any)).thenAnswer((_) async => fakeResponse);

//         // ACT
//         final result = await userRepository.getUsers();
//         print('$result');

//         // ASSERT
//         expect(result, isA<List<User>>());
//         expect(result.isNotEmpty, true);
//       });

//       test(
//           'should return List<User> even if response is empty list when status code is 200',
//           () async {
//         // ARRANGE
//         final fakeResponse = Response(
//             statusCode: 200, requestOptions: RequestOptions(data: '[]'));
//         when(mockDio.get(any)).thenAnswer((_) async => fakeResponse);

//         // ACT
//         final result = await userRepository.getUsers();

//         // ASSERT
//         expect(result, isA<List<User>>());
//       });

//       test(
//           'should throw a RepositoryStatusCodeException when status code is not 200',
//           () async {
//         // ARRANGE
//         final fakeResponse = Response(
//             statusCode: 404, requestOptions: RequestOptions(data: '[]'));
//         when(mockDio.get(any)).thenAnswer((_) async => fakeResponse);

//         // ASSERT
//         expect(userRepository.getUsers(),
//             throwsA(isA<RepositoryStatusCodeException>));
//       });
//     });
//   });
// }
