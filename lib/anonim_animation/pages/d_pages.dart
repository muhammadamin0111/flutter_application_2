import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

class DPages extends StatefulWidget {
  const DPages({Key? key}) : super(key: key);

  @override
  State<DPages> createState() => _DPagesState();
}

class _DPagesState extends State<DPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          'D page',
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
    );
  }
}
