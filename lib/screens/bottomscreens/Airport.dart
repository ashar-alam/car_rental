import 'package:car_rental/utils/string_manager.dart';
import 'package:car_rental/widgets/head_text.dart';
import 'package:car_rental/widgets/my_button.dart';
import 'package:car_rental/widgets/toggle_button.dart';
import 'package:flutter/material.dart';

import '../../utils/app_style.dart';
import '../../utils/utils.dart';
import '../../widgets/text_form_feild.dart';

class Airport extends StatefulWidget {
  const Airport({Key? key}) : super(key: key);

  @override
  State<Airport> createState() => _AirportState();
}

class _AirportState extends State<Airport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBarView().appBar(
      //   context,
      //   title: StringManager.airportCabs,
      //   actions: [],
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(Utils.getWidth(context) / 20),
              child: Column(
                children: [
                  const MyText(
                    title: StringManager.relibleAirportPickUpDrops,
                    style: TextStyle(
                        color: AppStyle.primaryColor,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const MyToggleButton(
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
                                fontSize: 15, fontWeight: FontWeight.bold),
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
                                fontSize: 15, fontWeight: FontWeight.bold),
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
                                fontSize: 15, fontWeight: FontWeight.bold),
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
                                fontSize: 15, fontWeight: FontWeight.bold),
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
                      const MyButton(
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
