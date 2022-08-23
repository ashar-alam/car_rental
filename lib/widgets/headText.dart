import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  String title;
  TextStyle style;
  MyText({
    Key? key,
    required this.title, required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: style,
    );
  }
}
