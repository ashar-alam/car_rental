import 'package:car_rental/utils/AppStyle.dart';
import 'package:car_rental/widgets/headText.dart';
import 'package:flutter/material.dart';

import '../utils/StringManager.dart';
import '../utils/utils.dart';
import '../widgets/AppBarView.dart';
import '../widgets/iconButton.dart';

class MyPaymentDetials extends StatefulWidget {
  const MyPaymentDetials({Key? key}) : super(key: key);

  @override
  State<MyPaymentDetials> createState() => _MyPaymentDetialsState();
}

class _MyPaymentDetialsState extends State<MyPaymentDetials> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarView().appBar(
        context,
        title: StringManager.paymentDetials,
        actions: [
          GestureDetector(
            onTap: () {
              // Navigator.pushNamed(context, Routes.profile);
            },
            child: Container(
              padding: EdgeInsets.all(Utils.getWidth(context) / 90.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.transparent,
                  width: 1.5,
                ),
              ),
              child: const MyIconButton(),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: Utils.getWidth(context) / 1,
              height: Utils.getHeight(context) / 4,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Radio<int>(
                            value: 1,
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value!;
                              });
                            },
                          ),
                          const Text(StringManager.payDuringTheTrip),
                        ],
                      ),
                      Row(
                        children: [
                          Radio<int>(
                            value: 2,
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value!;
                              });
                            },
                          ),
                          const Text(StringManager.pay500Now),
                        ],
                      ),
                      Row(
                        children: [
                          Radio<int>(
                            value: 3,
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value!;
                              });
                            },
                          ),
                          const Text(StringManager.pay1000Now),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              width: Utils.getWidth(context),
              child: MyText(
                title: StringManager.gotCoupon,
                style: const TextStyle(fontSize: 15),
              ),
            ),
            // const SizedBox(
            //   height: 10,
            // ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.zero),
                          labelText: StringManager.enterCouponCode),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        primary: AppStyle.grey,
                        minimumSize: Size(Utils.getWidth(context) / 3,
                            Utils.getHeight(context) / 11.8)),
                    onPressed: () {},
                    child: const Text(StringManager.apply),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: AppStyle.lightBlue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                minimumSize: Size(
                  Utils.getWidth(context) / 1.1,
                  Utils.getHeight(context) / 18,
                ),
              ),
              onPressed: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (context) => const MyPaymentDetials(),
                //   ),
                // );
              },
              child: const Text(
                StringManager.booknow,
                style: TextStyle(fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ExpansionTile(
                    title: const Text(
                      StringManager.bookingDetials,
                      style: TextStyle(fontSize: 20.0, color: Colors.black),
                    ),
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            StringManager.pickupCity,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          MyText(
                            title: "Jabalpur,Madhya Pardesh",
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            StringManager.tripType,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          MyText(
                            title: "Local 8 hrs|80kms",
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            StringManager.pickupDateTime,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          MyText(
                            title: "24-08-2022|01:00 PM",
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            StringManager.careType,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          MyText(
                            title: "Toyota Ertios or Equivalant",
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            StringManager.totalFare,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          MyText(
                            title: "Rs 1995",
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
