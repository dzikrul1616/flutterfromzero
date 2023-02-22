import 'package:flutter/material.dart';
import 'package:flutterfromzero/app/modules/HeroAnimation/views/widget_view.dart';
import 'package:flutterfromzero/app/modules/MovieApp/views/moivepage.dart';
import 'package:flutterfromzero/app/modules/MovieApp/views/movie_app_view.dart';
import 'package:flutterfromzero/app/modules/Reparasi/Bottom%20Bar/bottomBar.dart';
import 'package:flutterfromzero/app/modules/Reparasi/RowKategoriBanner.dart';
import 'package:flutterfromzero/app/modules/Reparasi/reparasi.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter From Zero'),
          centerTitle: true,
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WidgetView()));
                    },
                    child: Center(
                      child: Text('HERO ANIMATION'),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.greenAccent,
                    )),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyHomePage()));
                    },
                    child: Center(
                      child: Text('MOVIE APP'),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                    )),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BottomBar()));
                    },
                    child: Center(
                      child: Text('UI REPARASI'),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueAccent,
                    )),
              ),
            ],
          ),
        )));
  }
}
