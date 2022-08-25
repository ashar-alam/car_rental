import 'package:car_rental/utils/utils.dart';
import 'package:flutter/material.dart';

import '../../utils/AppStyle.dart';
import '../../utils/StringManager.dart';
import '../../widgets/AppBarView.dart';

class MyUpdatePassword extends StatefulWidget {
  const MyUpdatePassword({Key? key}) : super(key: key);

  @override
  State<MyUpdatePassword> createState() => _MyUpdatePasswordState();
}

class _MyUpdatePasswordState extends State<MyUpdatePassword> {
  bool _secureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarView().appBar(
        context,
        title: StringManager.updatePassword,
        actions: [],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Form(
                child: SizedBox(
                  width: Utils.getWidth(context) / 1,
                  height: Utils.getHeight(context) / 3.2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TextField(
                        decoration: InputDecoration(
                          // border: OutlineInputBorder(),
                          hintText: "Enter your old password",
                          label: Text(StringManager.oldPassword),
                          labelStyle: TextStyle(
                              color: AppStyle.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 15),
                          hintStyle: TextStyle(color: AppStyle.grey),
                        ),
                      ),
                      TextField(
                        obscuringCharacter: '*',
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _secureText = !_secureText;
                              });
                            },
                            icon: Icon(
                              _secureText
                                  ? Icons.visibility_off
                                  : Icons.remove_red_eye,
                              color: AppStyle.grey,
                            ),
                          ),
                          hintText: "Enter your new password",
                          label: const Text(StringManager.newPassword),
                          labelStyle: const TextStyle(
                            color: AppStyle.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                          hintStyle: const TextStyle(color: AppStyle.grey),
                        ),
                        obscureText: _secureText,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          hintText: "Retype your new password",
                          label: Text(StringManager.retypeNewPassword),
                          labelStyle: TextStyle(
                              color: AppStyle.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 15),
                          hintStyle: TextStyle(color: AppStyle.grey),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: AppStyle.lightBlue,
                  minimumSize: Size(
                    Utils.getWidth(context) / 3.5,
                    Utils.getHeight(context) / 16,
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  StringManager.update,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
