import 'package:dio/dio.dart';

import 'network.dart';

class NetworkImplementation extends Network {
  NetworkImplementation._(String baseUrl, {Options? options})
      : super(baseUrl, options: options);

  factory NetworkImplementation.instance(String baseUrl, {Options? options}) {
    return NetworkImplementation._(baseUrl, options: options);
  }
}
