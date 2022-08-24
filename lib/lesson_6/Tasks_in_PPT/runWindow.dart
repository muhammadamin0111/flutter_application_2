import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/lesson_6/Tasks_in_PPT/task1.dart';
import 'package:flutter_application_2/lesson_6/Tasks_in_PPT/task_2.dart';
import 'package:flutter_application_2/lesson_6/Tasks_in_PPT/task_4.dart';
import 'package:flutter_application_2/lesson_6/Tasks_in_PPT/task_5.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      routes: {
        // '/': (context) => const TaskOne(),
        '/': (context) => Buttons(),
      },
    );
  }
}
