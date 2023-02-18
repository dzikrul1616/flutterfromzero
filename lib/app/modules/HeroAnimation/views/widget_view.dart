import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/widget_controller.dart';

class WidgetView extends GetView<WidgetController> {
  const WidgetView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Animation'),
        centerTitle: true,
      ),
      body: GestureDetector(
        child: Hero(
            tag: 'imageHero',
            child: Image.network(
                'https://www.udacoding.id/wp-content/uploads/2022/08/man-img-3.png')),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return DetailHeroAnimation();
          }));
        },
      ),
    );
  }
}

class DetailHeroAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Hero(
            tag: 'imageHero',
            child: Image.network(
                'https://www.udacoding.id/wp-content/uploads/2022/08/man-img-3.png')),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
