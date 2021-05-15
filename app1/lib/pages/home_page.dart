// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var age = 34;
    return Scaffold(
      appBar: AppBar(
        title: Text('i am $age'),
      ),
     body: Container(
        child: Text('i am at $age'),
      ),
    );
  }
}
