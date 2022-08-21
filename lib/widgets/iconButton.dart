import 'package:car_rental/screens/account.dart';
import 'package:flutter/material.dart';

class MyIconButton extends StatefulWidget {
  const MyIconButton({Key? key}) : super(key: key);

  @override
  State<MyIconButton> createState() => _MyIconButtonState();
}

class _MyIconButtonState extends State<MyIconButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 40,
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const MyAccount(),
          ),
        );
      },
      icon: const Icon(
        Icons.account_circle,
        color: Colors.blue,
      ),
    );
  }
}
