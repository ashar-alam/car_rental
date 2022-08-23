import 'package:car_rental/utils/StringManager.dart';
import 'package:car_rental/widgets/text.dart';
import 'package:flutter/material.dart';

import '../utils/utils.dart';
import '../widgets/AppBarView.dart';
import '../widgets/iconButton.dart';
import '../widgets/textFormFeild.dart';

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
        title: StringManager.title,
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
      body: Container(
        padding: EdgeInsets.all(Utils.getWidth(context) / 30.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: Utils.getWidth(context) / 1,
                height: Utils.getHeight(context) / 3,
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
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  minimumSize: Size(
                    Utils.getWidth(context) / 1,
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
                  StringManager.proceed,
                  style: TextStyle(fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // SizedBox(
              //   width: Utils.getWidth(context) / 1,
              //   height: Utils.getHeight(context) / 3,
              Card(
                elevation: 7,
                child: ExpansionTile(
                  title: const Text(
                    StringManager.bookingDetials,
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                  children: <Widget>[
                    ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            StringManager.pickupCity,
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                          MyText(
                            title: "Jabalpur,Madhya Pardesh",
                            style: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            StringManager.tripType,
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                          MyText(
                            title: "Local 8 hrs|80kms",
                            style: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            StringManager.pickupDateTime,
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                          MyText(
                            title: "24-08-2022|01:00 PM",
                            style: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            StringManager.careType,
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                          MyText(
                            title: "Toyota Ertios or Equivalant",
                            style: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            StringManager.totalFare,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          MyText(
                            title: "1995",
                            style: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
