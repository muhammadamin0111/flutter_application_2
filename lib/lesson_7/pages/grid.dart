import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class GridPage extends StatefulWidget {
  const GridPage({Key? key}) : super(key: key);

  @override
  State<GridPage> createState() => _GridPageState();
}

class _GridPageState extends State<GridPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 3,
          padding: const EdgeInsets.only(left: 15, top: 10, right: 15),
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          physics: const BouncingScrollPhysics(),
          children: [
            _itemWid1(
                imageUrl:
                    'https://images.pexels.com/photos/762527/pexels-photo-762527.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
            _itemWid1(
                imageUrl:
                    'https://images.pexels.com/photos/762527/pexels-photo-762527.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
            _itemWid1(
                imageUrl:
                    'https://images.pexels.com/photos/762527/pexels-photo-762527.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
            _itemWid1(
                imageUrl:
                    'https://images.pexels.com/photos/762527/pexels-photo-762527.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
            _itemWid1(
                imageUrl:
                    'https://images.pexels.com/photos/762527/pexels-photo-762527.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
            _itemWid1(
                imageUrl:
                    'https://images.pexels.com/photos/762527/pexels-photo-762527.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
            _itemWid1(
                imageUrl:
                    'https://images.pexels.com/photos/762527/pexels-photo-762527.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
            _itemWid1(
                imageUrl:
                    'https://images.pexels.com/photos/762527/pexels-photo-762527.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
            _itemWid1(
                imageUrl:
                    'https://images.pexels.com/photos/762527/pexels-photo-762527.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
            _itemWid1(
                imageUrl:
                    'https://images.pexels.com/photos/762527/pexels-photo-762527.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
            _itemWid1(
                imageUrl:
                    'https://images.pexels.com/photos/762527/pexels-photo-762527.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
            ...List.generate(
              30,
              (index) => _itemWid1(
                  imageUrl:
                      'https://images.pexels.com/photos/762527/pexels-photo-762527.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/previus');
        },
      ),
    );
  }

  Widget _itemWid1({required String? imageUrl}) {
    return Container(
      color: Colors.red,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          CachedNetworkImage(
            imageUrl: imageUrl!,
            fit: BoxFit.cover,
            width: 80,
            height: 80,
            placeholder: (context, url) => const FlutterLogo(),
          ),
          const Text('Item one')
        ],
      ),
    );
  }
}
