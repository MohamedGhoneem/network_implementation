import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:nirikshak/nirikshak.dart';
import 'exception_handler.dart';
import 'http_method.dart';
export 'http_method.dart';

///==========================================================
/// CREATED BY MOHAMED GHONEIM 01/01/2022 TEL// +201064626369
///==========================================================
///
abstract class Network extends ExceptionHandler {
  final String _baseUrl;
  Options? options;

  Network(this._baseUrl, {this.options});

  final Dio _dio = Dio();
  final Nirikshak _nirikshak = Nirikshak();

  Future<Response?> request(
    HttpMethod method, {
    required String endpoint,
    Map<String, dynamic>? queryParameters,
    body,
    Map<String, dynamic>? headers,
  }) async {
    String url = '$_baseUrl$endpoint';
    logRequest('\n$method ===>>> $endpoint');
    logRequest('queryParameters : $queryParameters');
    logRequest('body : $body');
    Response response;
    _dio.interceptors.add(_nirikshak.getDioInterceptor());

    try {
      switch (method) {
        case HttpMethod.get:
          response = await _dio.get(url,
              queryParameters: queryParameters, options: _options(headers));
          logResponse('$method ===>>> $endpoint ===>>> $response\n');
          return response;
        case HttpMethod.post:
          response =
              await _dio.post(url, data: body, options: _options(headers));
          logResponse('$method ===>>> $endpoint ===>>> $response\n');
          return response;
        case HttpMethod.put:
          response =
              await _dio.put(url, data: body, options: _options(headers));
          logResponse('$method ===>>> $endpoint ===>>> $response\n');
          return response;
        case HttpMethod.patch:
          response =
              await _dio.patch(url, data: body, options: _options(headers));
          logResponse('$method ===>>> $endpoint ===>>> $response\n');
          return response;
        case HttpMethod.delete:
          response = await _dio.delete(url,
              queryParameters: queryParameters, options: _options(headers));
          logResponse('$method ===>>> $endpoint ===>>> $response\n');
          return response;
        default:
          throw "Invalid request method";
      }
    } on DioException {
      rethrow;
    } on SocketException {
      rethrow;
    } on FormatException {
      rethrow;
    } on TimeoutException {
      rethrow;
    } on HttpException {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Options _options(Map<String, dynamic>? headers) {
    Map<String, dynamic>? baseHeaders = {
      'Accept': 'application/json',
    };

    if (headers == null || headers.isEmpty) {
      if (options != null) {
        //options?.headers = baseHeaders;
        logRequest('headers : ${options?.headers}');

        return options!;
      } else {
        logRequest('headers : $baseHeaders');

        return Options(
            sendTimeout: const Duration(seconds: 5), // 5 seconds
            receiveTimeout: const Duration(seconds: 5), // 5 seconds
            headers: baseHeaders);
      }
    } else {
      logRequest('headers : $headers');

      if (options != null) {
        options?.headers = headers;
        return options!;
      } else {
        return Options(
            sendTimeout: const Duration(seconds: 5), // 5 seconds
            receiveTimeout: const Duration(seconds: 5), // 5 seconds
            headers: headers);
      }
    }
  }

  void logResponse(String text) {
    log(text);
    // log('\x1B[32m$text\x1B[0m');
  }

  void logRequest(String text) {
    debugPrint('\x1B[33m$text\x1B[0m');
  }

  Nirikshak get nirikshak {
    return _nirikshak;
  }
}
