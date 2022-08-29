import 'package:car_rental/widgets/my_button.dart';
import 'package:car_rental/widgets/toggle_button.dart';
import 'package:flutter/material.dart';

import '../../utils/app_style.dart';
import '../../utils/string_manager.dart';
import '../../utils/utils.dart';

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
    // List<bool> selections = List.generate(2, (bool) => false);
    return Scaffold(
      // appBar: AppBarView().appBar(
      //   context,
      //   title: StringManager.localHourlyRentals,
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
                  const Text(
                    StringManager.indiasPremierIntercityCabs,
                    style: TextStyle(
                        color: AppStyle.primaryColor,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 10),
                  const MyToggleButton(
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
                            )
                          ],
                        ),
                        // const SizedBox(height: 10),
                        // Row(
                        //   children: [
                        //     const Text(StringManager.to),
                        //     const SizedBox(
                        //       width: 10,
                        //     ),
                        //     Flexible(
                        //       child: TextFormField(
                        //         decoration: const InputDecoration(
                        //             hintText:
                        //                 'Start typing city - e.g New Delhi'),
                        //       ),
                        //     ),
                        //     IconButton(
                        //       onPressed: () {},
                        //       icon: const Icon(Icons.clear),
                        //     )
                        //   ],
                        // ),
                        const SizedBox(height: 10),
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
                            Flexible(
                              child: TextFormField(
                                controller: dateController,
                                readOnly: true,
                                onTap: () async {
                                  pickUpDate = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime.now(),
                                    lastDate: DateTime.now().add(
                                      const Duration(days: 60),
                                    ),
                                  );
                                  if (pickUpDate != null) {
                                    dateController.text =
                                        pickUpDate!.toLocal().toString();
                                  }
                                },
                                decoration: const InputDecoration(
                                    hintText: 'pickUp date'),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.calendar_month_outlined),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Text(
                              StringManager.pickUpAt,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Flexible(
                              child: TextFormField(
                                decoration: const InputDecoration(hintText: ''),
                              ),
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
    );
  }
}
