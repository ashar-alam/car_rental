import 'package:car_rental/utils/AppStyle.dart';
import 'package:flutter/material.dart';

import '../utils/StringManager.dart';
import '../widgets/AppBarView.dart';

class MyBooking extends StatefulWidget {
  const MyBooking({Key? key}) : super(key: key);

  @override
  State<MyBooking> createState() => _MyBookingState();
}

class _MyBookingState extends State<MyBooking>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarView().appBar(
        context,
        title: StringManager.booking,
        actions: [],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: AppStyle.grey),
              borderRadius: BorderRadius.circular(10.0)),
          child: TabBar(
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(10), // Creates border
                color: AppStyle.primaryColor),
            unselectedLabelColor: AppStyle.black,
            labelColor: AppStyle.white,
            labelStyle: const TextStyle(color: AppStyle.white),
            tabs: const [
              Tab(
                text: StringManager.upconing,
              ),
              Tab(
                text: StringManager.current,
              ),
              Tab(
                text: StringManager.history,
              )
            ],
            controller: _tabController,
            indicatorSize: TabBarIndicatorSize.tab,
          ),
        ),
      ),
    );
  }
}
