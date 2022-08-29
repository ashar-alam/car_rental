import 'package:car_rental/utils/app_style.dart';
import 'package:car_rental/utils/string_manager.dart';
import 'package:car_rental/widgets/head_text.dart';
import 'package:car_rental/widgets/my_button.dart';
import 'package:car_rental/widgets/toggle_button.dart';
import 'package:flutter/material.dart';

import '../widgets/text_form_feild.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBarView().appBar(
      //   context,
      //   title: StringManager.outStationCabs,
      //   actions: [],
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const MyText(
                    title: StringManager.indiasPremierIntercityCabs,
                    style: TextStyle(
                        color: AppStyle.primaryColor,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const MyToggleButton(
                    title: StringManager.oneWay,
                    title1: StringManager.roundTrip,
                  ),
                  Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text(
                              StringManager.from,
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            MyTextFormFeild(
                              readOnly: true,
                              // onTap: () => {
                              //   showSearch(context: context, delegate: SearchDelegate())
                              // },
                              title: 'Start typing city - e.g New Delhi',
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.highlight_off),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const Text(
                              StringManager.to,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            MyTextFormFeild(
                              title: 'Start typing city - e.g New Delhi',
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.highlight_off),
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
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            MyTextFormFeild(
                              title: 'pickUp date',
                            ),
                            const SizedBox(
                              width: 10,
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
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            MyTextFormFeild(
                              title: '',
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.schedule,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const MyButton(
                          title: StringManager.selectCar,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

      // appBar: AppBar(
      //   title: const Text(
      //     'Outstation Cabs',
      //     style: TextStyle(fontSize: 25, color: Colors.black),
      //   ),
      //   backgroundColor: Colors.white,
      // ),
    );
  }

  // int add(int x, int y) {
  //   // int a = 4, b = 6;
  //   return x + y;
  // }
}
