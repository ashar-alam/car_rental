import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyTextFormFeild extends StatelessWidget {
  String title;
  bool readOnly;
  void Function()? onTap;
  MyTextFormFeild(
      {Key? key, required this.title, this.readOnly = false, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: TextFormField(
        decoration: InputDecoration(hintText: title),
        readOnly: readOnly,
        onTap: onTap,
      ),
    );
  }
}
