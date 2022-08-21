import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  String title;
  MyText({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      // style: const TextStyle(fontSize: 40, color: Colors.black),
    );
  }
}
