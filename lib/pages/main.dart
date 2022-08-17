import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/A/a_page.dart';
import 'package:flutter_application_2/pages/B/b_page.dart';
import 'package:flutter_application_2/pages/C/c_page.dart';

void main() {
  runApp(const MyApp());
}

//anonymous routing
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.green),
      initialRoute: '/a',
    );
  }
}
