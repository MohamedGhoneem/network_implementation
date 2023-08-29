import 'dart:async';
import 'dart:isolate';

class IsolateThread {
  Future<dynamic> startIsolate(isolateEntryPoint) {
    var completer = Completer<dynamic>();
    var receivePort = ReceivePort(); // Create a new port to listen for data

    void isolateCallback(dynamic message) {
      completer
          .complete(message); // Complete the Future with the received message
      receivePort.close(); // Close the receive port when done
    }

    receivePort.listen(isolateCallback); // Listen for data from the isolate

    Isolate.spawn(
        isolateEntryPoint, receivePort.sendPort); // Spawn a new isolate/thread

    return completer
        .future; // Return the Future that will resolve with the response
  }
}
