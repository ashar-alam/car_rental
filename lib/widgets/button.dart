import 'package:car_rental/screens/outstation.dart/oneWay.dart';
import 'package:car_rental/utils/AppStyle.dart';
import 'package:flutter/material.dart';

import '../utils/utils.dart';

class MyButton extends StatelessWidget {
  String title;
  MyButton({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: AppStyle.lightBlue,
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
