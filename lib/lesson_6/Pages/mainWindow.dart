import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/lesson_6/Pages/basic_page.dart';
import 'package:flutter_application_2/lesson_6/Pages/button_page.dart';
import 'package:flutter_application_2/lesson_6/Pages/column_page.dart';
import 'package:flutter_application_2/lesson_6/Pages/expand.dart';
import 'package:flutter_application_2/lesson_6/Pages/image_page.dart';
import 'package:flutter_application_2/lesson_6/Pages/layer_page.dart';
import 'package:flutter_application_2/lesson_6/Pages/row_page.dart';
import 'package:flutter_application_2/lesson_6/Pages/stack_page.dart';
import 'package:flutter_application_2/lesson_6/Pages/task_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      routes: {
        '/': (context) => const BasicPage(),
        '/image_page': (context) => const ImagePage(),
        '/button_page': (context) => const ButtonPage(),
        '/layer': (context) => const LayerPage(),
        '/col': (context) => const ColPage(),
        '/row': (context) => const RowPage(),
        '/stack': (context) => const StackPage(),
        '/expand': (context) => const ExpandPage(),
        '/task': (context) => const TaskPage()
      },
      initialRoute: '/',
    );
  }
}
