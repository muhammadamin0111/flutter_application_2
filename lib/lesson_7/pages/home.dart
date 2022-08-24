import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<bool> _showMaterialDialog() async {
    final bool? data = await showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Exit'),
              content: const Text('Are you sure?'),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              actions: [
                TextButton(
                    style: TextButton.styleFrom(
                      // foregroundColor: Colors.white,
                      backgroundColor: Colors.red,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    child: const Text('nope')),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                    child: const Text('yes')),
              ],
            ));
    return data!;
  }

  void _showCupertinoDialog() {
    showCupertinoDialog(
        context: context,
        builder: (context) => CupertinoAlertDialog(
              title: const Text('Waring'),
              content: const Text('Fix this Warning'),
              actions: [
                CupertinoDialogAction(
                  child: const Text('nope'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                CupertinoDialogAction(
                    child: const Text('ok'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    }),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => await _showMaterialDialog(),
      child: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                height: 200,
                padding: const EdgeInsets.all(20),
                color: Colors.grey,
                alignment: Alignment.centerLeft,
                child: const Text(
                  'gbhauuh83@jnw9',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              )
            ],
          ),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Builder(
            builder: (context) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //!material dialog
                  MaterialButton(
                    color: Colors.blue,
                    onPressed: _showMaterialDialog,
                    child: const Text('alert dialog'),
                  ),
                  //cupertino dialog
                  CupertinoButton.filled(
                      child: const Text('Cupertino fialog'),
                      onPressed: _showCupertinoDialog),

                  TextButton(
                    onPressed: () {
                      if (Platform.isAndroid) {
                        _showMaterialDialog();
                      } else if (Platform.isIOS) {
                        _showCupertinoDialog();
                      }
                    },
                    child: const Text('Platform dialog'),
                  ),
                ],
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/first');
          },
          child: const Icon(Icons.arrow_forward),
        ),
      ),
    );
  }
}
