import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

import '../Widgets/custom_size_route.dart';
import 'd_pages.dart';

class CPages extends StatefulWidget {
  const CPages({Key? key}) : super(key: key);

  @override
  State<CPages> createState() => _CPagesState();
}

class _CPagesState extends State<CPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          'C Page',
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(CustomSizeRouter(child: const DPages()));
        },
        child: const Text('D page'),
      ),
    );
  }
}
