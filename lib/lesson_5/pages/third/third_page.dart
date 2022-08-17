import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

import '../fourth/fourth_page.dart';

class ThirdPage extends StatefulWidget {
  static const String route = '/third';
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  late int? data;
  @override
  // ignore: must_call_super
  void didChangeDependencies() {
    Map<String, dynamic> map =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    if (map.containsKey('data') && map['data'] != null) {
      data = map['data'];
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Page'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            data.toString(),
            style: Theme.of(context).textTheme.displayLarge,
          ),
          MaterialButton(
            onPressed: () {
              Navigator.of(context).pushNamed(FourthPage.route);
            },
            color: Colors.red,
            child: Text("Fourth $data"),
          ),
        ],
      )),
    );
  }
}
