import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TaskFour extends StatefulWidget {
  const TaskFour({Key? key}) : super(key: key);

  @override
  State<TaskFour> createState() => _TaskFourState();
}

class _TaskFourState extends State<TaskFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Image(
        width: 300,
        height: 300,
        fit: BoxFit.cover,
        image: AssetImage('assets/images/kalla.jpeg'),
      )),
    );
  }
}
