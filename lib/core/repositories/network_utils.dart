import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tester/core/constant/http_method.dart';

import '../exceptions/general_exception.dart';
import '../exceptions/repository_exception.dart';
import '../utils/api_logger.dart';
//protected = เป็นเมธอดที่ควรจะถูกเรียกใช้เฉพาะภายในคลาสที่สืบทอดมาจาก BaseRepository เท่านั้น
@protected
const String baseUrl = 'jsonplaceholder.typicode.com';

final dio = Dio();

class NetworkUtils {
  static Future<T> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async =>
      _remoteRequest(
        path,
        HttpMethod.get,
        queryParameters: queryParameters,
      );

  static Future<T> _remoteRequest<T>(
    String path,
    HttpMethod method, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    if (path.isEmpty) {
      throw const GeneralException('Invalid path');
    }

    final uri = Uri.https(baseUrl, path);
    final logger = ApiLogger(method);
    logger.request(uri);

    try {
      final response = await dio.getUri(uri);
      final statusCode = response.statusCode;

      logger.status(uri, statusCode!);

      if (statusCode == HttpStatus.ok) {
        final data = response.data;
        return data;
      } else {
        throw RepositoryStatusCodeException(statusCode);
      }
    } on DioError catch (e) {
      final stackTrace = e.stackTrace ?? StackTrace.current;
      logger.error(uri, e, stackTrace);
      rethrow;
    } catch (e, stackTrace) {
      throw const RepositoryException();
    }
  }
}
