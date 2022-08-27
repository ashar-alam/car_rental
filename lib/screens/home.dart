import 'package:car_rental/utils/AppStyle.dart';
import 'package:car_rental/utils/StringManager.dart';
import 'package:car_rental/widgets/Button.dart';
import 'package:car_rental/widgets/HeadText.dart';
import 'package:car_rental/widgets/toggleButton.dart';
import 'package:flutter/material.dart';

import '../widgets/AppBarView.dart';
import '../widgets/textFormFeild.dart';

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
      appBar: AppBarView().appBar(
        context,
        title: StringManager.outStationCabs,
        actions: [],
      ),
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
                  MyText(
                    title: StringManager.indiasPremierIntercityCabs,
                    style: const TextStyle(
                        color: AppStyle.primaryColor,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MyToggleButton(
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
                        MyButton(
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
