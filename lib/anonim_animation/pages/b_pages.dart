import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

import '../Widgets/custom_page_animation.dart';
import 'c_pages.dart';

class BPages extends StatefulWidget {
  const BPages({Key? key}) : super(key: key);

  @override
  State<BPages> createState() => _BPagesState();
}

class _BPagesState extends State<BPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          'B Page',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
                context, CustomPageRouteBuilder(child: const CPages()));
          },
          label: const Text('C Page')),
    );
  }
}
