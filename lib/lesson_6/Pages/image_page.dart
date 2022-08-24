import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      //type 1 for image
      // body: Center(
      //   child: Image.asset('assets/images/kalla.jpeg',
      //       fit: BoxFit.cover, height: 200, width: 200),
      // ),

      //type 2 for image
      // body: Center(
      //   child: CachedNetworkImage(
      //     imageUrl:
      //         'https://yandex.ru/images/search?pos=21&from=tabbar&img_url=http%3A%2F%2Fget.wallhere.com%2Fphoto%2Flandscape-mountains-lake-nature-reflection-sunrise-evening-morning-river-national-park-valley-wilderness-dusk-Wyoming-plateau-cloud-tree-autumn-mountain-dawn-reservoir-tarn-loch-atmospheric-phenomenon-computer-wallpaper-mountainous-landforms-mountain-range-62181.jpg&text=wild+nature&rpt=simage&lr=10335',
      //     fit: BoxFit.cover,
      //   ),
      // ),

      body: Center(
        child: CachedNetworkImage(
          imageUrl:
              'https://mobimg.b-cdn.net/v3/fetch/96/96ff25c2152dfbd77ee45a751b9d40ac.jpeg?w=1470&r=0.5625',
          imageBuilder: (context, imageProvider) => Image(image: imageProvider),
          placeholder: (context, url) => const Text('PlaceHolder'),
          errorWidget: (context, url, error) => const Text('Error'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/button_page');
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
