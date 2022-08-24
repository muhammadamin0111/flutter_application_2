import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ColPage extends StatefulWidget {
  const ColPage({Key? key}) : super(key: key);

  @override
  State<ColPage> createState() => _ColPageState();
}

class _ColPageState extends State<ColPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            LimitedBox(
                maxHeight: 200,
                maxWidth: 300,
                child: Container(height: 200, width: 300, color: Colors.black)),
            LimitedBox(maxHeight: 100, child: Container(color: Colors.red)),
            LimitedBox(
                maxHeight: 200,
                maxWidth: 100,
                child: Container(height: 200, width: 100, color: Colors.green)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/row');
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
