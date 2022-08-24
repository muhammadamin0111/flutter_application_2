import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Utils/custom_utils.dart';

class ButtonPage extends StatefulWidget {
  const ButtonPage({Key? key}) : super(key: key);

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  void _showName(String? buttonName) {
    AppToast.show(buttonName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
        actions: [
          PopupMenuButton(
              initialValue: 'first',
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(child: Text('first')),
                  const PopupMenuItem(child: Text('second')),
                  const PopupMenuItem(child: Text('third')),
                ];
              }),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            MaterialButton(
              onPressed: () {
                _showName('Material Button');
              },
              child: const Text('Material button'),
            ),
            TextButton(
                onPressed: () {
                  _showName('elevated button');
                },
                child: const Text('elevated button')),
            OutlinedButton(
                onPressed: () {}, child: const Text('outlined Button')),
            IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
            CupertinoButton(
                child: const Text('cupertino button'), onPressed: () {}),
            CupertinoButton.filled(
                child: const Text('Cupertino button filled'), onPressed: () {}),
            FloatingActionButton.large(
                heroTag: 'large',
                child: const Icon(Icons.abc),
                onPressed: () {
                  Navigator.of(context).pushNamed('/layer');
                }),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('text button icon')),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('elevated button icon')),
            OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('outlined button icon')),
            DropdownButton(
                value: 'salom',
                items: const [
                  DropdownMenuItem(
                    value: 'salom',
                    child: Text('Salom'),
                  ),
                  DropdownMenuItem(
                    value: 'hello',
                    child: Text('Hello'),
                  ),
                  DropdownMenuItem(
                    value: 'hi',
                    child: Text('Hi'),
                  ),
                ],
                onChanged: (value) {})
          ],
        ),
      ),
    );
  }
}
