import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyTextFormFeild extends StatelessWidget {
  String title;
  MyTextFormFeild({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: TextFormField(
        decoration: InputDecoration(hintText: title),
      ),
    );
  }
}
