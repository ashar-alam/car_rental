import 'package:car_rental/screens/outstation.dart/oneWay.dart';
import 'package:flutter/material.dart';

import '../utils/utils.dart';

class MyButton extends StatelessWidget {
  String title;
  MyButton({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        minimumSize: Size(
          Utils.getWidth(context) / 1.2,
          Utils.getHeight(context) / 18,
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
