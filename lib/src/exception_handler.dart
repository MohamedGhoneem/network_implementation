import 'dart:async';
import 'dart:io';

import '../network_implementation.dart';

class ExceptionHandler {
  void handleException(
      Exception exception, HttpMethod method, String endpoint) {
    switch (exception) {
      case DioException():
        if (exception.response == null) {
          throw exception;
        }
        throw exception.response?.data;
      case SocketException():
      case FormatException():
      case TimeoutException():
      case HttpException():
        throw exception;

      default:
        throw exception;
    }
  }
}
