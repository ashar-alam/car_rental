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
    print(add(5, 29));
    print('${add(6, 7)}hello ');
    return Scaffold(
      //  backgroundColor: AppStyle.purpleDark,
      appBar: AppBarView().appBar(
        context,
        actions: [
          GestureDetector(
            onTap: () {
              // Navigator.pushNamed(context, Routes.profile);
            },
            child: Container(
              padding: EdgeInsets.all(
                Utils.getWidth(context) / 80.0,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  // color: AppStyle.greenDark,
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
                title: StringManager.indiasPremierIntercityCabs,
                style: const TextStyle(color: Colors.blue),
              ),
              const SizedBox(
                height: 10,
              ),
              MyToggleButton(
                title: StringManager.oneWay,
                title1: StringManager.roundTrip,
              ),
              const SizedBox(
                height: 20,
              ),
              Form(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        const Text(StringManager.from),
                        const SizedBox(
                          width: 10,
                        ),
                        MyTextFormFeild(
                          title: 'Start typing city - e.g New Delhi',
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.clear),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Text(StringManager.to),
                        const SizedBox(
                          width: 10,
                        ),
                        MyTextFormFeild(
                          title: 'Start typing city - e.g New Delhi',
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.clear),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
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
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Text(StringManager.pickUpAt),
                        MyTextFormFeild(
                          title: '',
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.punch_clock),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
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

      // appBar: AppBar(
      //   title: const Text(
      //     'Outstation Cabs',
      //     style: TextStyle(fontSize: 25, color: Colors.black),
      //   ),
      //   backgroundColor: Colors.white,
      // ),
    );
  }

  int add(int x, int y) {
    // int a = 4, b = 6;
    return x + y;
  }
}
