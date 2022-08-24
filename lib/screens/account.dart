import 'package:car_rental/utils/AppStyle.dart';
import 'package:car_rental/utils/StringManager.dart';
import 'package:car_rental/utils/utils.dart';
import 'package:car_rental/widgets/button.dart';
import 'package:flutter/material.dart';

import '../widgets/AppBarView.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarView().appBar(
        context,
        title: StringManager.account,
        actions: [],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(Utils.getWidth(context)) / 20,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text(
                        StringManager.name,
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text(
                        StringManager.mobile,
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text(
                        StringManager.email,
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            MyButton(
              title: StringManager.update,
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    StringManager.signOut,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  onPressed: () {},
                  child: const Text(
                    StringManager.updatePassword,
                    style: TextStyle(color: AppStyle.lightBlue),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                side: const BorderSide(
                  color: AppStyle.lightBlue,
                ),
                primary: Colors.white,
                minimumSize: Size(
                  Utils.getWidth(context) / 3.5,
                  Utils.getHeight(context) / 20,
                ),
              ),
              onPressed: () {},
              child: const Text(
                StringManager.booking,
                style: TextStyle(color: AppStyle.lightBlue),
              ),
            ),
            const SizedBox(
              height: 200,
            ),
            const BottomAppBar(
              color: AppStyle.lightBlue,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "For any feedback or concerns related to your booking,\n please mail us at orders@savari.com or call us at\n 9625108154",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
