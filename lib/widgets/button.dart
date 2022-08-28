import 'package:car_rental/screens/outstation/oneWay.dart';
import 'package:flutter/material.dart';

import '../utils/Utils.dart';
import '../utils/app_style.dart';

class MyButton extends StatelessWidget {
  final String title;
  const MyButton({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: AppStyle.primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        minimumSize: Size(
          Utils.getWidth(context) / 1.1,
          Utils.getHeight(context) / 20,
        ),
      ),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const OneWay(),
          ),
        );
      },
      child: Text(
        title,
        style: const TextStyle(fontSize: 15),
      ),
    );
  }
}
