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
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  BackButton(),
                  Text(
                    StringManager.jaipurTonk,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                  MyIconButton(),
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
                    color: Colors.blue,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
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
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color.fromARGB(255, 110, 201, 246),
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
                        color: Colors.grey,
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
                children: [
                  MyText(
                    title: StringManager.rent,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 90, 225, 245),
                    ),
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
              Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                MyText(
                                  title: StringManager.carName,
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "2000",
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Color.fromARGB(255, 100, 211, 248),
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "2299",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.red),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                MyText(
                                  title: StringManager.timeKm,
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            child: Column(
                              children: [
                                Image.asset(
                                  AssetsManager.toyota,
                                  height: Utils.getHeight(context) / 6,
                                  width: Utils.getWidth(context) / 2,
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(4.0),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            width: 1, color: Colors.grey),
                                      ),
                                      child: const Icon(
                                          Icons.airline_seat_legroom_extra,
                                          size: 12,
                                          color: Colors.grey),
                                    ),
                                    MyText(
                                      title: "4 Seater",
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 12),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(4.0),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            width: 1, color: Colors.grey),
                                      ),
                                      child: const Icon(Icons.luggage,
                                          size: 12, color: Colors.grey),
                                    ),
                                    MyText(
                                      title: "2 bags",
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 12),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(4.0),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            width: 1, color: Colors.grey),
                                      ),
                                      child: const Icon(Icons.ac_unit,
                                          size: 12, color: Colors.grey),
                                    ),
                                    MyText(
                                      title: " AC",
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ],
                            ),
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
                        color: Colors.black),
                  ),
                  children: [
                    Column(
                      children: [
                        TabBar(
                          unselectedLabelColor: Colors.black,
                          labelColor: Colors.blue,
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
                                              color: const Color.fromARGB(
                                                  255, 169, 212, 247),
                                            ),
                                          ),
                                          child: const Icon(
                                            Icons.local_gas_station,
                                            size: 15,
                                            color: Color.fromARGB(
                                                255, 169, 212, 247),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        MyText(
                                          title: StringManager.fuelChange,
                                          style: const TextStyle(
                                              color: Colors.black),
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
                                              color: const Color.fromARGB(
                                                  255, 169, 212, 247),
                                            ),
                                          ),
                                          child: const Icon(
                                            Icons.sports_motorsports,
                                            size: 15,
                                            color: Color.fromARGB(
                                                255, 169, 212, 247),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        MyText(
                                          title: StringManager.driverAllowance,
                                          style: const TextStyle(
                                              color: Colors.black),
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
                                              color: const Color.fromARGB(
                                                  255, 169, 212, 247),
                                            ),
                                          ),
                                          child: const Icon(
                                            Icons.receipt,
                                            size: 15,
                                            color: Color.fromARGB(
                                                255, 169, 212, 247),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        MyText(
                                          title: StringManager.gst,
                                          style: const TextStyle(
                                              color: Colors.black),
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
                                              color: const Color.fromARGB(
                                                  255, 169, 212, 247),
                                            ),
                                          ),
                                          child: const Icon(
                                            Icons.payments_sharp,
                                            size: 15,
                                            color: Color.fromARGB(
                                                255, 169, 212, 247),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        MyText(
                                          title: "Pay 13/km after 80kms",
                                          style: const TextStyle(
                                              color: Colors.black),
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
                                              color: const Color.fromARGB(
                                                  255, 169, 212, 247),
                                            ),
                                          ),
                                          child: const Icon(
                                            Icons.payments_sharp,
                                            size: 15,
                                            color: Color.fromARGB(
                                                255, 169, 212, 247),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        MyText(
                                          title: "Pay 144/hrafter 8 hours",
                                          style: const TextStyle(
                                              color: Colors.black),
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
                                              color: const Color.fromARGB(
                                                  255, 169, 212, 247),
                                            ),
                                          ),
                                          child: const Icon(
                                            Icons.car_crash,
                                            size: 15,
                                            color: Color.fromARGB(
                                                255, 169, 212, 247),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        MyText(
                                          title: StringManager.tollTax,
                                          style: const TextStyle(
                                              color: Colors.black),
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
                                              color: const Color.fromARGB(
                                                  255, 150, 200, 242),
                                            ),
                                          ),
                                          child: const Icon(
                                            Icons.dark_mode_sharp,
                                            size: 15,
                                            color: Color.fromARGB(
                                                255, 150, 200, 242),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        MyText(
                                          title: StringManager.nightAllowance,
                                          style: const TextStyle(
                                              color: Colors.black),
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
