import 'package:flutter/material.dart';
import 'package:navbar_2/src/screens/navbar_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: NavbarScreen()
        ),
      );
  }
}