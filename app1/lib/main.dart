import 'package:app1/pages/home_page.dart';
import 'package:app1/pages/login_page.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      // home: Homepage(),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      // initialRoute: "/login",
      routes: {
        // "/":(context)=>Homepage(),
        
        "/":(context)=>Loginpage(),
      },
    );
  }
}
