import 'package:car_rental/utils/AppStyle.dart';
import 'package:car_rental/utils/StringManager.dart';
import 'package:car_rental/widgets/button.dart';
import 'package:car_rental/widgets/headText.dart';
import 'package:car_rental/widgets/iconButton.dart';
import 'package:car_rental/widgets/toggleButton.dart';
import 'package:flutter/material.dart';

import '../utils/utils.dart';
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
    // print(add(5, 29));
    // print('${add(6, 7)}hello ');
    return Scaffold(
      appBar: AppBarView().appBar(
        context,
        title: StringManager.outStationCabs,
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(
                Utils.getWidth(context) / 80.0,
              ),
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText(
                    title: StringManager.indiasPremierIntercityCabs,
                    style: const TextStyle(
                        color: AppStyle.lightBlue, fontWeight: FontWeight.w600),
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
                                  fontSize: 16, fontWeight: FontWeight.bold),
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
                        Row(
                          children: [
                            const Text(
                              StringManager.to,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
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
                        Row(
                          children: [
                            const Text(
                              StringManager.pickUp,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
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
                              icon: const Icon(Icons.calendar_month),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              StringManager.pickUpAt,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
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
