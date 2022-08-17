import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

import '../Widgets/custom_page_route.dart';
import 'b_pages.dart';

class APages extends StatefulWidget {
  const APages({super.key});

  @override
  State<APages> createState() => _APagesState();
}

class _APagesState extends State<APages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('A page'),
        centerTitle: true,
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.access_alarm)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notification_add)),
        ],
      ),
      // drawer: const Drawer(),
      // endDrawer: const Drawer(),
      body: Center(
        child: Text(
          'A page',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, CustomAnimationRoute(child: const BPages()));
        },
        child: const Text("B"),
      ),
    );
  }
}
