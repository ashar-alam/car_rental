import 'package:car_rental/screens/contactPickUp.dart';
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
                  Icon(
                    Icons.arrow_back,
                  ),
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
                    Utils.getWidth(context) / 15.0,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      // color: Colors.blue,
                      width: 2,
                    ),
                  ),
                  child: const Icon(Icons.car_crash_outlined),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  padding: EdgeInsets.all(
                    Utils.getWidth(context) / 15.0,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      // color: Colors.blue,
                      width: 2,
                    ),
                  ),
                  child: const Icon(
                    Icons.car_crash,
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
                      height: 5,
                    ),
                    const Text(
                      "2000",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "2299",
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyText(
                          title: StringManager.timeKm,
                          style: const TextStyle(color: Colors.black),
                        ),
                        Container(
                          padding:
                              EdgeInsets.all(Utils.getHeight(context) / 70),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 2),
                          ),
                        ),
                        MyText(
                          title: "4 Seater",
                          style: const TextStyle(color: Colors.black),
                        ),
                        Container(
                          padding:
                              EdgeInsets.all(Utils.getHeight(context) / 70),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 2),
                          ),
                        ),
                        MyText(
                          title: "2 bags",
                          style: const TextStyle(color: Colors.black),
                        ),
                        Container(
                          padding:
                              EdgeInsets.all(Utils.getHeight(context) / 95),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 2),
                          ),
                          child: const Icon(
                            Icons.ac_unit,
                            size: 10,
                          ),
                        ),
                        MyText(
                          title: " AC",
                          style: const TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // MyButton(title: StringManager.selectCar),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        minimumSize: Size(
                          Utils.getWidth(context) / 1.2,
                          Utils.getHeight(context) / 18,
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const MyContactAndPickup(),
                          ),
                        );
                      },
                      child: const Text(
                        StringManager.selectCar,
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const ExpansionTile(
              title: Text(
                "Hello",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
              ),
              children: [
                TabBar(
                  tabs: <Widget>[
                    Tab(
                      icon: Icon(Icons.cloud_outlined),
                    ),
                    Tab(
                      icon: Icon(Icons.beach_access_sharp),
                    ),
                    Tab(
                      icon: Icon(Icons.brightness_5_sharp),
                    ),
                  ],
                ),
                ListTile(
                  title: Text(
                    "hey",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
