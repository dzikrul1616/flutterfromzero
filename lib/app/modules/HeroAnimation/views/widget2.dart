import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Animation extends StatelessWidget {
  const Animation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(child: Hero(tag: 'imageHero', child: Image.network('https://www.udacoding.id/wp-content/uploads/2022/08/man-img-3.png')),),
    );
  }
}
