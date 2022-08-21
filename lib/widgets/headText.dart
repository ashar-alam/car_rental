import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  String title;
  MyText({
    Key? key,
    required this.title, required TextStyle style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(color: Colors.blue, fontSize: 15),
    );
  }
}
