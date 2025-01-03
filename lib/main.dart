import 'package:flutter/material.dart';
import 'package:recipehomepage_lesson09/prezentatsia/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageTen(),
    );
  }
}
//823   jami: 20qatorga tushdi!!
