import 'network.dart';

class NetworkImplementation extends Network {
  NetworkImplementation._(String baseUrl) : super(baseUrl);

  factory NetworkImplementation.instance(String baseUrl) {
    return NetworkImplementation._(baseUrl);
  }
}
