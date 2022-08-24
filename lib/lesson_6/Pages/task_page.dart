import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.purple,
            alignment: Alignment.center,
            child: const Text('fghj12'),
          ),
          SizedBox(
            height: 100,
            width: double.infinity,
            child: Row(
              children: [
                // Expanded(
                // child: Container(
                //   color: Colors.green,
                //   alignment: Alignment.center,
                //   child: RichText(
                //       text: const TextSpan(
                //           style: TextStyle(color: Colors.black),
                //           text: 'gh67\n',
                //           children: [TextSpan(text: '67hj')])),
                // )),
                getWidget(color: Colors.green, text1: 'ghj56', text2: 'hjj67')!,
                getWidget(
                    color: Colors.orange, text1: 'ghj56', text2: 'hjj67')!,
              ],
            ),
          ),
          SizedBox(
            height: 100,
            width: double.infinity,
            child: Row(
              children: [
                getWidget(color: Colors.red, text1: 'bn8', text2: 'nm789')!,
                getWidget(color: Colors.blue, text1: 'bn8', text2: 'nm789')!,
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget? getWidget(
      {required Color? color, required String? text1, required String? text2}) {
    return Expanded(
        child: Container(
            color: color!,
            alignment: Alignment.center,
            child: RichText(
                text: TextSpan(
                    style: const TextStyle(color: Colors.black),
                    text: '$text1\n',
                    children: [TextSpan(text: '$text2')]))));
  }
}
