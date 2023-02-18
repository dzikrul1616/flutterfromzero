
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelengkapnyaButton extends StatelessWidget {
  const SelengkapnyaButton({
    Key? key,
    required this.deskripsi,
  }) : super(key: key);

  final String deskripsi;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Text(
        "Selengkapnya",
        style:
            TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
      ),
      onTap: () {
        showDialog(
            context: context,
            builder: (_) => AlertDialog(
                  content: SingleChildScrollView(
                    child: Text(deskripsi, textAlign: TextAlign.justify),
                  ),
                ));
      },
    );
  }
}