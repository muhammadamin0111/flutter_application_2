import 'package:flutter/material.dart';

import 'package:flutter_application_2/pages/B/b_page.dart';

//stf bn main ochiladi
class APage extends StatefulWidget {
  const APage({super.key});

  @override
  State<APage> createState() => _APageState();
}

class _APageState extends State<APage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          'A page',
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/b');
          //Navigator.pushNamed(context,'/b);
        },
        child: const Text('B'),
      ),
    );
  }
}
