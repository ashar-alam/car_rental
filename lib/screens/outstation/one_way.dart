import 'package:car_rental/screens/contact_pickup.dart';
import 'package:car_rental/utils/app_style.dart';
import 'package:car_rental/utils/string_manager.dart';
import 'package:car_rental/widgets/head_text.dart';
import 'package:flutter/material.dart';

import '../../utils/assets_manager.dart';
import '../../utils/utils.dart';

class OneWay extends StatefulWidget {
  const OneWay({Key? key}) : super(key: key);

  @override
  State<OneWay> createState() => _OneWayState();
}

class _OneWayState extends State<OneWay> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: const [
                  BackButton(),
                  SizedBox(
                    width: 80,
                  ),
                  Text(
                    StringManager.jaipurTonk,
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 15, color: AppStyle.primaryColor),
                  ),
                ],
              ),
              const Text(
                StringManager.dateTime,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                StringManager.modifingBooking,
                style: TextStyle(
                    color: AppStyle.primaryColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  MyText(
                    title: StringManager.sedan,
                    style: TextStyle(color: AppStyle.primaryColor),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  MyText(
                    title: StringManager.ertiga,
                    style: TextStyle(color: AppStyle.black),
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
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppStyle.primaryLight,
                        width: 2,
                      ),
                    ),
                    child: const Icon(
                      Icons.local_taxi,
                      size: 40,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppStyle.grey,
                        width: 2,
                      ),
                    ),
                    child: const Icon(
                      Icons.local_taxi,
                      size: 40,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  MyText(
                    title: StringManager.rent,
                    style: TextStyle(color: AppStyle.primaryColor),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  MyText(
                    title: StringManager.rent,
                    style: TextStyle(color: AppStyle.black),
                  ),
                ],
              ),
              Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                MyText(
                                  title: StringManager.carName,
                                  style: TextStyle(
                                      color: AppStyle.black, fontSize: 18),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "2000",
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: AppStyle.primaryColor,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "2299",
                                  style: TextStyle(
                                      fontSize: 20, color: AppStyle.red),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                              ],
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            child: Image.asset(
                              AssetsManager.toyota,
                              height: Utils.getHeight(context) / 6,
                              width: Utils.getWidth(context) / 2,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const MyText(
                            title: StringManager.timeKm,
                            style:
                                TextStyle(color: AppStyle.black, fontSize: 12),
                          ),
                          Container(
                            padding: const EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(width: 1, color: AppStyle.grey),
                            ),
                            child: const Icon(Icons.airline_seat_legroom_extra,
                                size: 16, color: AppStyle.grey),
                          ),
                          const MyText(
                            title: "4 Seater",
                            style:
                                TextStyle(color: AppStyle.black, fontSize: 15),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            padding: const EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(width: 1, color: AppStyle.grey),
                            ),
                            child: const Icon(Icons.luggage,
                                size: 16, color: AppStyle.grey),
                          ),
                          const MyText(
                            title: "2 bags",
                            style:
                                TextStyle(color: AppStyle.black, fontSize: 15),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            padding: const EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(width: 1, color: AppStyle.grey),
                            ),
                            child: const Icon(Icons.ac_unit,
                                size: 16, color: AppStyle.grey),
                          ),
                          const MyText(
                            title: " AC",
                            style:
                                TextStyle(color: AppStyle.black, fontSize: 15),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppStyle.primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          minimumSize: Size(
                            Utils.getWidth(context) / 1.1,
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
              Card(
                elevation: 5,
                child: ExpansionTile(
                  title: const Text(
                    StringManager.fareDetials,
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: AppStyle.black),
                  ),
                  children: [
                    Column(
                      children: [
                        TabBar(
                          indicator: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(10), // Creates border
                              color: AppStyle.primaryColor),
                          unselectedLabelColor: AppStyle.black,
                          labelColor: AppStyle.white,
                          labelStyle: const TextStyle(color: AppStyle.white),
                          tabs: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                              ),
                              child: const Tab(
                                text: StringManager.inclusion,
                              ),
                            ),
                            const Tab(
                              text: StringManager.exclusion,
                            )
                          ],
                          controller: _tabController,
                          indicatorSize: TabBarIndicatorSize.tab,
                        ),
                        SizedBox(
                          height: 200,
                          child: TabBarView(
                            controller: _tabController,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(4.0),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              width: 1,
                                              color: AppStyle.primaryLight,
                                            ),
                                          ),
                                          child: const Icon(
                                            Icons.local_gas_station,
                                            size: 15,
                                            color: AppStyle.primaryLight,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const MyText(
                                          title: StringManager.fuelChange,
                                          style:
                                              TextStyle(color: AppStyle.black),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(4.0),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              width: 1,
                                              color: AppStyle.primaryLight,
                                            ),
                                          ),
                                          child: const Icon(
                                            Icons.sports_motorsports,
                                            size: 15,
                                            color: AppStyle.primaryLight,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const MyText(
                                          title: StringManager.driverAllowance,
                                          style:
                                              TextStyle(color: AppStyle.black),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(4.0),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              width: 1,
                                              color: AppStyle.primaryLight,
                                            ),
                                          ),
                                          child: const Icon(
                                            Icons.receipt,
                                            size: 15,
                                            color: AppStyle.primaryLight,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const MyText(
                                          title: StringManager.gst,
                                          style:
                                              TextStyle(color: AppStyle.black),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(4.0),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              width: 1,
                                              color: AppStyle.primaryLight,
                                            ),
                                          ),
                                          child: const Icon(
                                            Icons.payments_sharp,
                                            size: 15,
                                            color: AppStyle.primaryLight,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const MyText(
                                          title: "Pay 13/km after 80kms",
                                          style:
                                              TextStyle(color: AppStyle.black),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(4.0),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              width: 1,
                                              color: AppStyle.primaryLight,
                                            ),
                                          ),
                                          child: const Icon(
                                            Icons.payments_sharp,
                                            size: 15,
                                            color: AppStyle.primaryLight,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const MyText(
                                          title: "Pay 144/hrafter 8 hours",
                                          style:
                                              TextStyle(color: AppStyle.black),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(4.0),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              width: 1,
                                              color: AppStyle.primaryLight,
                                            ),
                                          ),
                                          child: const Icon(
                                            Icons.car_crash,
                                            size: 15,
                                            color: AppStyle.primaryLight,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const MyText(
                                          title: StringManager.tollTax,
                                          style:
                                              TextStyle(color: AppStyle.black),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(4.0),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                width: 1,
                                                color: AppStyle.primaryLight),
                                          ),
                                          child: const Icon(
                                              Icons.dark_mode_sharp,
                                              size: 15,
                                              color: AppStyle.primaryLight),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const MyText(
                                          title: StringManager.nightAllowance,
                                          style:
                                              TextStyle(color: AppStyle.black),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
