import 'package:flutter/material.dart';
import 'package:planet_community/screens/earth_screen/screen.dart';
import 'package:planet_community/screens/home_screen/screen.dart';
import 'package:planet_community/screens/venus_screen/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

