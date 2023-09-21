import 'package:dio/dio.dart';

import 'network.dart';

///==========================================================
/// CREATED BY MOHAMED GHONEIM 01/01/2022 TEL// +201064626369
///==========================================================
///
class NetworkImplementation extends Network {
  NetworkImplementation._(String baseUrl, {Options? options})
      : super(baseUrl, options: options);

  factory NetworkImplementation.instance(String baseUrl, {Options? options}) {
    return NetworkImplementation._(baseUrl, options: options);
  }
}
