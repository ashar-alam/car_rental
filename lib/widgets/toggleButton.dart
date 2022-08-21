import 'package:flutter/material.dart';

class MyToggleButton extends StatefulWidget {
  String title, title1;
   MyToggleButton({Key? key,required this.title,required this.title1}) : super(key: key);

  @override
  State<MyToggleButton> createState() => _MyToggleButtonState();
}

class _MyToggleButtonState extends State<MyToggleButton> {
  @override
  Widget build(BuildContext context) {
    List<bool> selections = List.generate(2, (bool) => false);
    return ToggleButtons(
        isSelected: selections,
        onPressed: (index) {
          setState(() {
            print('Tapped  index$index');
            selections[index] = !selections[index];
            if (index == 0 && selections[index]) {
              print('0 index selected');
            } else if (index == 1 && selections[index]) {
              print('1 index selected');
            }
          });
        },
        children:  [
          Text(widget.title),
          Text(widget.title1),
        ]);
  }
}
