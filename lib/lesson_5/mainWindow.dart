// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/lesson_5/pages/fourth/fourth_page.dart';
import 'package:flutter_application_2/lesson_5/pages/home/home_page.dart';
import 'package:flutter_application_2/lesson_5/pages/other/other_page.dart';
import 'package:flutter_application_2/lesson_5/pages/third/third_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomePage.route: (context) => const HomePage(),
        OtherPage.route: (context) => const OtherPage(),
        ThirdPage.route: (context) => const ThirdPage(),
        FourthPage.route: (context) => const FourthPage(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: HomePage.route,
    );
  }
}
