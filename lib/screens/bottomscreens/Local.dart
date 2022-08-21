// ignore: file_names
import 'package:car_rental/widgets/button.dart';
import 'package:car_rental/widgets/iconButton.dart';
import 'package:car_rental/widgets/toggleButton.dart';
import 'package:flutter/material.dart';

import '../../utils/StringManager.dart';
import '../../utils/utils.dart';
import '../../widgets/AppBarView.dart';

class Local extends StatefulWidget {
  const Local({Key? key}) : super(key: key);

  @override
  State<Local> createState() => _LocalState();
}

class _LocalState extends State<Local> {
  TextEditingController dateController = TextEditingController();
  DateTime? pickUpDate;
  @override
  Widget build(BuildContext context) {
    List<bool> selections = List.generate(2, (bool) => false);
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
              const Text(
                StringManager.indiasPremierIntercityCabs,
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
              const SizedBox(height: 10),
              MyToggleButton(
                title: "hello",
                title1: 'hey',
              ),
              // ToggleButtons(
              //     isSelected: selections,
              //     onPressed: (index) {
              //       setState(() {
              //         print('Tapped  index$index');
              //         selections[index] = !selections[index];
              //         if (index == 0 && selections[index]) {
              //           print('0 index selected');
              //         } else if (index == 1 && selections[index]) {
              //           print('1 index selected');
              //         }
              //       });
              //     },
              //     color: Colors.black,
              //     fillColor: Colors.red,
              //     children: const [
              //       Text('One Way'),
              //       Text('Round Trip'),
              //     ]),
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
                        Flexible(
                          child: TextFormField(
                            decoration: const InputDecoration(
                                hintText: 'Start typing city - e.g New Delhi'),
                          ),
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
                        Flexible(
                          child: TextFormField(
                            decoration: const InputDecoration(
                                hintText: 'Start typing city - e.g New Delhi'),
                          ),
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
                        Flexible(
                          child: TextFormField(
                            controller: dateController,
                            readOnly: true,
                            onTap: () async {
                              pickUpDate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime.now(),
                                  lastDate: DateTime.now()
                                      .add(const Duration(days: 60)));
                              if (pickUpDate != null) {
                                dateController.text =
                                    pickUpDate!.toLocal().toString();
                              }
                            },
                            decoration:
                                const InputDecoration(hintText: 'pickUp date'),
                          ),
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
                        Flexible(
                          child: TextFormField(
                            decoration: const InputDecoration(hintText: ''),
                          ),
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
                     MyButton(title: StringManager.selectCar,)
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
