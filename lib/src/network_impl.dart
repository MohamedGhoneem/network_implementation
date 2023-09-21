import 'package:dio/dio.dart';

import 'network.dart';

///==========================================================
/// CREATED BY MOHAMED GHONEIM 01/01/2022 TEL// +201064626369
///==========================================================
///
class NetworkImpl extends Network {
  NetworkImpl._(String baseUrl, {Options? options})
      : super(baseUrl, options: options);

  factory NetworkImpl.instance(String baseUrl, {Options? options}) {
    return NetworkImpl._(baseUrl, options: options);
  }
}
