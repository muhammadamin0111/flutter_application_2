import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final List<Color> _colorList = [
    Colors.red,
    Colors.green,
    Colors.black,
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.black,
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.black,
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.black,
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.black,
    Colors.blue,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // body: SafeArea(
      //   child: ListView.builder(
      //     shrinkWrap: true,
      //     scrollDirection: Axis.vertical,
      //     itemCount: _colorList.length,
      //     itemBuilder: (context, index) => Container(
      //         height: 100, width: double.infinity, color: _colorList[index]),
      //   ),
      // ),

      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: [
          _customWidget(
              imageUrl:
                  'https://yandex.ru/images/search?pos=6&from=tabbar&img_url=http%3A%2F%2Fsetaswall.com%2Fwp-content%2Fuploads%2F2017%2F06%2FMountains-Nature-River-3000-x-2000.jpg&text=nature&rpt=simage&lr=10335',
              text: 'itemOne'),
          _customWidget(
              imageUrl:
                  'https://yandex.ru/images/search?pos=6&from=tabbar&img_url=http%3A%2F%2Fsetaswall.com%2Fwp-content%2Fuploads%2F2017%2F06%2FMountains-Nature-River-3000-x-2000.jpg&text=nature&rpt=simage&lr=10335',
              text: '2'),
          _customWidget(
              imageUrl:
                  'https://yandex.ru/images/search?pos=6&from=tabbar&img_url=http%3A%2F%2Fsetaswall.com%2Fwp-content%2Fuploads%2F2017%2F06%2FMountains-Nature-River-3000-x-2000.jpg&text=nature&rpt=simage&lr=10335',
              text: '3'),
          _customWidget(
              imageUrl:
                  'https://yandex.ru/images/search?pos=6&from=tabbar&img_url=http%3A%2F%2Fsetaswall.com%2Fwp-content%2Fuploads%2F2017%2F06%2FMountains-Nature-River-3000-x-2000.jpg&text=nature&rpt=simage&lr=10335',
              text: '4'),
          _customWidget(
              imageUrl:
                  'https://yandex.ru/images/search?pos=6&from=tabbar&img_url=http%3A%2F%2Fsetaswall.com%2Fwp-content%2Fuploads%2F2017%2F06%2FMountains-Nature-River-3000-x-2000.jpg&text=nature&rpt=simage&lr=10335',
              text: '5'),
          _customWidget(
              imageUrl:
                  'https://yandex.ru/images/search?pos=6&from=tabbar&img_url=http%3A%2F%2Fsetaswall.com%2Fwp-content%2Fuploads%2F2017%2F06%2FMountains-Nature-River-3000-x-2000.jpg&text=nature&rpt=simage&lr=10335',
              text: '6'),
          _customWidget(
              imageUrl:
                  'https://yandex.ru/images/search?pos=6&from=tabbar&img_url=http%3A%2F%2Fsetaswall.com%2Fwp-content%2Fuploads%2F2017%2F06%2FMountains-Nature-River-3000-x-2000.jpg&text=nature&rpt=simage&lr=10335',
              text: '7'),
          _customWidget(
              imageUrl:
                  'https://yandex.ru/images/search?pos=6&from=tabbar&img_url=http%3A%2F%2Fsetaswall.com%2Fwp-content%2Fuploads%2F2017%2F06%2FMountains-Nature-River-3000-x-2000.jpg&text=nature&rpt=simage&lr=10335',
              text: '8'),
          _customWidget(
              imageUrl:
                  'https://yandex.ru/images/search?pos=6&from=tabbar&img_url=http%3A%2F%2Fsetaswall.com%2Fwp-content%2Fuploads%2F2017%2F06%2FMountains-Nature-River-3000-x-2000.jpg&text=nature&rpt=simage&lr=10335',
              text: '9'),
          _customWidget(
              imageUrl:
                  'https://yandex.ru/images/search?pos=6&from=tabbar&img_url=http%3A%2F%2Fsetaswall.com%2Fwp-content%2Fuploads%2F2017%2F06%2FMountains-Nature-River-3000-x-2000.jpg&text=nature&rpt=simage&lr=10335',
              text: '10'),
          _customWidget(
              imageUrl:
                  'https://yandex.ru/images/search?pos=6&from=tabbar&img_url=http%3A%2F%2Fsetaswall.com%2Fwp-content%2Fuploads%2F2017%2F06%2FMountains-Nature-River-3000-x-2000.jpg&text=nature&rpt=simage&lr=10335',
              text: '11'),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context).pushNamed('/second');
      }),
    );
  }
}

Widget _customWidget({required String? imageUrl, required String? text}) {
  return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: .0,
        color: Colors.transparent,
        child: SizedBox(
          width: 80,
          child: Row(
            children: [
              CachedNetworkImage(
                imageUrl: imageUrl!,
                fit: BoxFit.cover,
                width: 80,
                height: 80,
                placeholder: (context, url) => const FlutterLogo(),
              ),
              const Spacer(
                flex: 1,
              ),
              Expanded(child: Text(text!), flex: 10),
            ],
          ),
        ),
      ));
}
