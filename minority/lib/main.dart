import 'package:flutter/material.dart';
import 'package:minority/demo/Demo.dart';
import 'package:minority/welcome/SplashScreen1.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      //  Demo(),
      SplashScreen1(),
      // home: ,
    );
  }
}