## Getting started

With `null-safety`

```dart 
  dependencies: 
        network_implementation: ^0.0.15
```

Add the dependency to your project and start using **flavorizer_config** #

Importing the package #

```dart
import 'package:network_implementation/network_implementation.dart';
```

## Usage

To use this plugin, add flavorizer_config as a dependency in your pubspec.yaml file.

## Example

Here are an example that show you how to use this plugin.

## main.dart

```dart
 final NetworkImplementation _network = NetworkImplementation.instance(
      'your base url',
  options: Options(
    // sendTimeout: const Duration(seconds: 5), // 5 seconds
    // receiveTimeout: const Duration(seconds: 5), // 5 seconds
    headers: {
      'lang': 'en',
      "Authorization":
      'Bearer accessToken',
    },
  ),
);

```

```dart
Future getData() async {
  try {
    final response = await _network.request(
      HttpMethod.get,
      endpoint: 'getDataEndPoint',
      queryParameters: {"param1":"param1"},
      // body: {"param1":"param1"},
      // headers: {
      //   'Accept-Language': "en",
      //   "Authorization": 'Bearer accessToken'
      // }
    );
    return response;
  } catch (e) {
    return e;
  }
}
```

## Improve

Help me by reporting bugs, **submit new ideas** for features or anything else that you want to
share.

- Just [write an issue](https://github.com/MohamedGhoneem/network_implementation/issues) on GitHub. ✏️
- And don't forget to hit the **like button** for this package ✌️

## More

Check out my other useful packages on [pub.dev](https://pub.dev/publishers/ghoneem.com/packages)

