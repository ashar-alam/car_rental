import 'package:car_rental/utils/AppStyle.dart';
import 'package:flutter/material.dart';

class MyToggleButton extends StatefulWidget {
  String title, title1;
  MyToggleButton({Key? key, required this.title, required this.title1})
      : super(key: key);

  @override
  State<MyToggleButton> createState() => _MyToggleButtonState();
}

class _MyToggleButtonState extends State<MyToggleButton> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_types_as_parameter_names
    List<bool> selections = List.generate(2, (bool) => false);
    return ToggleButtons(
        borderRadius: BorderRadius.circular(10),
        fillColor: AppStyle.primaryColor,
        
        isSelected: selections,
        onPressed: (index) {
          setState(() {
            // print('Tapped  index$index');
            selections[index] = !selections[index];
            if (index == 0 && selections[index]) {
              // print('0 index selected');
            } else if (index == 1 && selections[index]) {
              // print('1 index selected');
            }
          });
        },
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.title),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.title1),
          ),
        ]);
  }
}
