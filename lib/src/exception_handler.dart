import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';

import '../network_impl.dart';

class ExceptionHandler {
  void handleException(Exception exception, HttpMethod method,
      String endpoint) {
    printError('$method ===>>> $endpoint ===>>> $exception\n');

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

  void printError(String message) {
    // You can customize the error logging/printing behavior here
    debugPrint('\x1B[31m$message\x1B[0m');
  }
}
