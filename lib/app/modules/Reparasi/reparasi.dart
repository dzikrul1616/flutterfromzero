import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterfromzero/app/modules/Reparasi/Banner.dart';
import 'package:flutterfromzero/app/modules/Reparasi/CariWidget.dart';
import 'package:flutterfromzero/app/modules/Reparasi/Kategori/Komputer.dart';
import 'package:flutterfromzero/app/modules/Reparasi/Kategori/ssd.dart';
import 'package:flutterfromzero/app/modules/Reparasi/RowKategoriBanner.dart';
import 'package:flutterfromzero/app/modules/home/views/home_view.dart';

class Reparasi extends StatefulWidget {
  const Reparasi({Key? key}) : super(key: key);

  @override
  State<Reparasi> createState() => _ReparasiState();
}

class _ReparasiState extends State<Reparasi> {
  var item = [
    "komputer",
    "android",
    "laptop",
    "ssd",
    "rakit komputer",
    "service"
  ];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Reparasi Comp.',
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: CariWidget(),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'Service',
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                RowBanner(),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'Kategori',
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  controller: ScrollController(),
                  child: Row(
                    children: List.generate(
                      item.length,
                      (index) {
                        bool selected = _selectedIndex == index;

                        return GestureDetector(
                          onTap: () {
                            _onItemTapped(index);
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                switch (item[index]) {
                                  case 'komputer':
                                    return KomputerPage();
                                  case 'android':
                                    return KomputerPage();
                                  case 'laptop':
                                    return KomputerPage();
                                  case 'ssd':
                                    return SsdPage();
                                  case 'rakit komputer':
                                    return KomputerPage();
                                  case 'service':
                                    return KomputerPage();
                                  default:
                                    return Container();
                                }
                              }),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15.0,
                              vertical: 8.0,
                            ),
                            margin: const EdgeInsets.only(left: 10.0),
                            decoration: BoxDecoration(
                              color: selected ? Colors.amber : Colors.grey,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(16.0),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "${item[index]}",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 11.0,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
