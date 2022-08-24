import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_application_2/lesson_5/pages/home/home_page.dart';
import 'package:flutter_application_2/lesson_7/pages/first.dart';
import 'package:flutter_application_2/lesson_7/pages/grid.dart';
import 'package:flutter_application_2/lesson_7/pages/page.dart';
import 'package:flutter_application_2/lesson_7/pages/second.dart';
import 'package:flutter_application_2/lesson_7/pages/home.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter DEmo',
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      routes: {
        '/': (context) => const HomePage(),
        '/first': (context) => const FirstPage(),
        '/second': (context) => const SecondPage(),
        '/grid_page': (context) => const GridPage(),
        "/previus": (context) => const Previuspage()
      },
      initialRoute: '/',
    );
  }
}
