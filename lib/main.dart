import 'package:airbnb/main-screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Airbnb Hotel and Travel',
        theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Work Sans'),
        home: MainScreen());
  }
}
