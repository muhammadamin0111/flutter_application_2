import 'package:flutter/material.dart';

class CPage extends StatefulWidget {
  const CPage({super.key});

  @override
  State<CPage> createState() => _CPageState();
}

class _CPageState extends State<CPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          'C Page',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
