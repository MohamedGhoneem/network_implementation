import 'package:flutter/material.dart';

Future main() async {
  return runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter rxdart_bloc example',
      home: Scaffold(
        body: Container(color: Colors.green,),
      ),
    );
  }
}
