import 'package:car_rental/utils/StringManager.dart';
import 'package:car_rental/widgets/button.dart';
import 'package:car_rental/widgets/headText.dart';
import 'package:car_rental/widgets/iconButton.dart';
import 'package:car_rental/widgets/toggleButton.dart';
import 'package:flutter/material.dart';

import '../../utils/AppStyle.dart';
import '../../utils/utils.dart';
import '../../widgets/AppBarView.dart';
import '../../widgets/textFormFeild.dart';

class Airport extends StatefulWidget {
  const Airport({Key? key}) : super(key: key);

  @override
  State<Airport> createState() => _AirportState();
}

class _AirportState extends State<Airport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarView().appBar(
        context,
        title: StringManager.airportCabs,
        actions: [
          GestureDetector(
            onTap: () {
              // Navigator.pushNamed(context, Routes.profile);
            },
            child: Container(
              padding: EdgeInsets.all(Utils.getWidth(context) / 80.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 1.5,
                ),
              ),
              child: const MyIconButton(),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(Utils.getWidth(context) / 20),
              child: Column(
                children: [
                  MyText(
                    title: StringManager.relibleAirportPickUpDrops,
                    style: const TextStyle(
                        color: AppStyle.lightBlue, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  MyToggleButton(
                      title: StringManager.fromAirport,
                      title1: StringManager.toAirport),
                  const SizedBox(
                    height: 20,
                  ),
                  Form(
                      child: Column(
                    children: [
                      Row(
                        children: [
                          const Text(
                            StringManager.city,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  hintText:
                                      'Start typing city - e.g New Delhi'),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.highlight_off),
                          ),
                          const SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Text(
                            StringManager.dropAddress,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  hintText: StringManager.enterYourAddress),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.room_outlined),
                          ),
                          const SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Text(
                            StringManager.pickUp,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          MyTextFormFeild(
                            title: '30-09-2022',
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.calendar_month_outlined),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Text(
                            StringManager.pickUpAt,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          MyTextFormFeild(
                            title: '12 :00 PM',
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.schedule),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      MyButton(
                        title: StringManager.selectCar,
                      ),
                    ],
                  ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
