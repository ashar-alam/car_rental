import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String title;
  final TextStyle style;
  const MyText({
    Key? key,
    required this.title,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: style,
    );
  }
}
