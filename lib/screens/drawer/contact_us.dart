import 'package:car_rental/Utils/string_manager.dart';
import 'package:car_rental/widgets/appbar_view.dart';
import 'package:flutter/material.dart';

class MyContactus extends StatelessWidget {
  const MyContactus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarView().appBar(
        context,
        title: StringManager.contactUs,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              StringManager.seeYouSoonContactus,
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "+919625108154",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              StringManager.help,
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              StringManager.mobileNo,
              style: TextStyle(fontSize: 20),
            ),
            Text(
              StringManager.emailId,
              style: TextStyle(fontSize: 20),
            ),
            Text(
              StringManager.mobileNo,
              style: TextStyle(fontSize: 20),
            ),
            Text(
              StringManager.delhiAddress,
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              StringManager.address,
              style: TextStyle(fontSize: 20),
            ),
            Text(
              StringManager.mobileNo,
              style: TextStyle(fontSize: 20),
            ),
            Text(
              StringManager.emailId,
              style: TextStyle(fontSize: 20),
            ),
            Text(
              StringManager.mobileNo,
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "For any feedback or concerns related to your booking,\n please mail us at orders@savari.com or call us at\n 9625108154",
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
