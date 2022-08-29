import 'package:car_rental/screens/payment_detials.dart';
import 'package:car_rental/utils/app_style.dart';
import 'package:car_rental/utils/string_manager.dart';
import 'package:car_rental/widgets/text.dart';
import 'package:flutter/material.dart';

import '../utils/utils.dart';
import '../widgets/appbar_view.dart';
import '../widgets/text_form_feild.dart';

class MyContactAndPickup extends StatefulWidget {
  const MyContactAndPickup({Key? key}) : super(key: key);

  @override
  State<MyContactAndPickup> createState() => _MyContactAndPickupState();
}

class _MyContactAndPickupState extends State<MyContactAndPickup> {
  String dropdownvalue = '+91';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarView().appBar(
        context,
        title: StringManager.contactPickup,
        actions: [],
      ),
      body: Container(
        padding: EdgeInsets.all(Utils.getWidth(context) / 30.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: Utils.getWidth(context) / 1,
                // height: Utils.getHeight(context) / 3,
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Form(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Text(
                                StringManager.from,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              MyTextFormFeild(
                                title: 'Ashar Alam',
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                StringManager.email,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              MyTextFormFeild(
                                title: 'asharalam65@gmail.com',
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Text(
                                StringManager.mobile,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              DropdownButton<String>(
                                value: dropdownvalue,
                                items: const [
                                  DropdownMenuItem(
                                      value: "+91", child: Text("+91")),
                                  DropdownMenuItem(
                                      value: "+95", child: Text("+95")),
                                  DropdownMenuItem(
                                      value: "+93", child: Text("+93")),
                                ],
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownvalue = newValue!;
                                  });
                                },
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              MyTextFormFeild(
                                title: '9625108154',
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                StringManager.pickupAddress,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              MyTextFormFeild(
                                title: 'search area name',
                              ),
                              const Icon(Icons.location_on),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: AppStyle.primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  minimumSize: Size(
                    Utils.getWidth(context) / 1,
                    Utils.getHeight(context) / 18,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MyPaymentDetials(),
                    ),
                  );
                },
                child: const Text(
                  StringManager.proceed,
                  style: TextStyle(fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: Utils.getWidth(context) / 1,
                // height: Utils.getHeight(context) / 1.5,
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ExpansionTile(
                      title: const Text(
                        StringManager.bookingDetials,
                        style: TextStyle(fontSize: 20.0, color: AppStyle.black),
                      ),
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              StringManager.pickupCity,
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                            MyText(
                              title: "Jabalpur,Madhya Pardesh",
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              StringManager.tripType,
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            MyText(
                              title: "Local 8 hrs|80kms",
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              StringManager.pickupDateTime,
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            MyText(
                              title: "24-08-2022|01:00 PM",
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              StringManager.careType,
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            MyText(
                              title: "Toyota Ertios or Equivalant",
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              StringManager.totalFare,
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            MyText(
                              title: "1995",
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
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
      ),
    );
  }
}
