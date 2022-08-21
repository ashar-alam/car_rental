import 'package:car_rental/utils/StringManager.dart';
import 'package:car_rental/widgets/button.dart';
import 'package:car_rental/widgets/headText.dart';
import 'package:car_rental/widgets/iconButton.dart';
import 'package:car_rental/widgets/toggleButton.dart';
import 'package:flutter/material.dart';

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
        child: Container(
          padding: EdgeInsets.all(Utils.getWidth(context) / 20),
          child: Column(
            children: [
              MyText(
                title: StringManager.relibleAirportPickUpDrops,
                style: const TextStyle(color: Colors.blue),
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
                      const Text(StringManager.city),
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: TextFormField(
                          decoration: const InputDecoration(
                              hintText: 'Start typing city - e.g New Delhi'),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.clear),
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
                      const Text(StringManager.dropAddress),
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: TextFormField(
                          decoration: const InputDecoration(
                              hintText: 'Start typing city - e.g New Delhi'),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.location_on),
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
                      const Text(StringManager.pickUp),
                      const SizedBox(
                        width: 10,
                      ),
                      MyTextFormFeild(
                        title: 'pickUp date',
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.calendar_today_rounded),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Text(StringManager.pickUpAt),
                      const SizedBox(
                        width: 10,
                      ),
                      MyTextFormFeild(
                        title: 'pickUp date',
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.lock_clock),
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
    );
  }
}
