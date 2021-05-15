import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = 'satya';
    return MaterialApp(
      home: Container(
        child: Text(data),
      ),
    );
  }
}
