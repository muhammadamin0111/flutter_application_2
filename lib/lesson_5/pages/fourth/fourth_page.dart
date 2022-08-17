import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/lesson_5/pages/home/home_page.dart';
import 'package:flutter_application_2/lesson_5/pages/other/other_page.dart';
import 'package:flutter_application_2/lesson_5/pages/third/third_page.dart';

class FourthPage extends StatefulWidget {
  static const String route = '/fourth';
  const FourthPage({super.key});

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fourth page'),
      ),
      body: Center(
          child: MaterialButton(
        onPressed: () {
          Navigator.of(context).pushNamedAndRemoveUntil(
              OtherPage.route, ModalRoute.withName(HomePage.route));
        },
        color: Colors.red,
        child: const Text('Other'),
      )),
    );
  }
}
