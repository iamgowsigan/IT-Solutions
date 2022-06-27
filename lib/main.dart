import 'package:flutter/material.dart';
import 'package:it_app/homePage.dart';
import 'package:it_app/stu_loginPage.dart';
import 'package:it_app/tea_loginPage.dart';
import 'package:it_app/title.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IT APP',
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}
