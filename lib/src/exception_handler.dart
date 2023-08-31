import 'dart:async';
import 'dart:io';
import 'package:dio/dio.dart';

import '../network_implementation.dart';

class ExceptionHandler {

  static void handleException(Exception exception) {

    switch (exception){
      case DioException():
        break;
      case SocketException():
        break;
      case FormatException():
        break;
      case TimeoutException():
        break;
      case HttpException():
        break;
      default :
        break;

    }
  }










  // static void handleDioError(DioError error, HttpMethod method, String endpoint) {
  //   printError('$method ===>>> $endpoint ===>>> ${error.message}\n');
  //   if (error.response == null) {
  //     rethrow;
  //   }
  //   throw error.response?.data;
  // }
  //
  // static void handleSocketError(SocketException error, HttpMethod method, String endpoint) {
  //   printError('$method ===>>> $endpoint ===>>> ${error.message}\n');
  //   rethrow;
  // }
  //
  // static void handleFormatError(FormatException error, HttpMethod method, String endpoint) {
  //   printError('$method ===>>> $endpoint ===>>> ${error.message}\n');
  //   // Handle the format error appropriately (e.g., log an error message or throw custom exception)
  //   rethrow;
  // }
  //
  // static void handleTimeoutError(TimeoutException error, HttpMethod method, String endpoint) {
  //   printError('$method ===>>> $endpoint ===>>> ${error.message}\n');
  //   // Handle the timeout error appropriately (e.g., log an error message or throw custom exception)
  //   rethrow;
  // }
  //
  // static void handleHttpError(HttpException error, HttpMethod method, String endpoint) {
  //   printError('$method ===>>> $endpoint ===>>> ${error.message}\n');
  //   // Handle the HTTP error appropriately (e.g., log an error message or throw custom exception)
  //   rethrow;
  // }
  //
  // static void handleGenericError(dynamic error, HttpMethod method, String endpoint) {
  //   printError('$method ===>>> $endpoint ===>>> ${error.toString()}\n');
  //   // Handle the generic error appropriately (e.g., log an error message or throw custom exception)
  //   rethrow;
  // }

  static void printError(String message) {
    // You can customize the error logging/printing behavior here
    print('\x1B[31m$message\x1B[0m');
  }
}