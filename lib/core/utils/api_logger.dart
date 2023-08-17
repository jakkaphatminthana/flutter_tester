import 'dart:developer';
import 'package:flutter_tester/core/constant/http_method.dart';


class ApiLogger {
  const ApiLogger(this.method);

  final HttpMethod method;

  void request(Uri uri) => log(
        '$_method $uri',
        name: 'REST API',
        time: DateTime.now(),
      );

  void status(Uri uri, int statusCode) => log(
        '$_method $uri $statusCode',
        name: 'REST API',
        time: DateTime.now(),
      );

  void error(
    Uri uri,
    Object error,
    StackTrace stackTrace,
  ) =>
      log(
        '$_method $uri',
        name: 'REST API ERROR',
        time: DateTime.now(),
        error: error,
        stackTrace: stackTrace,
      );

  String get _method => method.toString().split('.').last.toUpperCase();
}
