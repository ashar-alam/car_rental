import 'package:car_rental/utils/StringManager.dart';
import 'package:car_rental/widgets/headText.dart';
import 'package:flutter/material.dart';

import '../../utils/assetsManager.dart';
import '../../utils/utils.dart';
import '../../widgets/iconButton.dart';

class OneWay extends StatefulWidget {
  const OneWay({Key? key}) : super(key: key);

  @override
  State<OneWay> createState() => _OneWayState();
}

class _OneWayState extends State<OneWay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(Utils.getWidth(context) / 90.0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Row(
                children: const [
                  Icon(Icons.arrow_back),
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    StringManager.jaipurTonk,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25, color: Colors.blue),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  MyIconButton(),
                ],
              ),
            ),
            const Text(
              StringManager.dateTime,
              style: TextStyle(fontSize: 15),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              StringManager.modifingBooking,
              style: TextStyle(color: Colors.blue, fontSize: 18),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyText(
                  title: StringManager.sedan,
                  style: const TextStyle(color: Colors.blue),
                ),
                const SizedBox(
                  width: 30,
                ),
                MyText(
                  title: StringManager.ertiga,
                  style: const TextStyle(color: Colors.black),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(
                    Utils.getWidth(context) / 10.0,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      // color: Colors.blue,
                      width: 2,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  padding: EdgeInsets.all(
                    Utils.getWidth(context) / 10.0,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      // color: Colors.blue,
                      width: 2,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyText(
                  title: StringManager.rent,
                  style: const TextStyle(color: Colors.blue),
                ),
                const SizedBox(
                  width: 50,
                ),
                MyText(
                  title: StringManager.rent,
                  style: const TextStyle(color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height: Utils.getHeight(context) / 2.5,
              width: Utils.getWidth(context) / 1.1,
              child: Card(
                elevation: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        MyText(
                          title: StringManager.carName,
                          style: const TextStyle(color: Colors.black),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          AssetsManager.toyota,
                          height: Utils.getHeight(context) / 6,
                          width: Utils.getWidth(context) / 2,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "2000",
                      style: TextStyle(fontSize: 30, color: Colors.blue),
                    ),
                    const Text(
                      "22967",
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    ),
                    Row(
                      children: [
                        MyText(
                          title: StringManager.timeKm,
                          style: const TextStyle(color: Colors.black),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const ExpansionTile(
              title: Text(
                "Hello",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
              ),
              children: <Widget>[
                ListTile(
                  title: Text(
                    "hey",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
