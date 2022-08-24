import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LayerPage extends StatefulWidget {
  const LayerPage({Key? key}) : super(key: key);

  @override
  State<LayerPage> createState() => _LayerPageState();
}

class _LayerPageState extends State<LayerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed('/col');
        },
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(15)),
          margin: const EdgeInsets.only(top: 20),
          padding: const EdgeInsets.all(20),
          child: Container(
            padding: const EdgeInsets.all(15),
            color: Colors.blue,
            //child joylashuvi
            alignment: const Alignment(1, -1),
            child: const Text('Container widget'),
          ),
        ),
      )),
    );
  }
}
