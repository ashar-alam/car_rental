import 'package:flutter/material.dart';

import '../../utils/StringManager.dart';
import '../home.dart';
import 'Airport.dart';
import 'Local.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> screenS = const <Widget>[
      HomeScreen(),
      Local(),
      Airport(),
    ];
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.ev_station_outlined),
                label: StringManager.outStation),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.local_activity,
                  size: 20,
                ),
                label: StringManager.local),
            BottomNavigationBarItem(
                icon: Icon(Icons.airport_shuttle),
                label: StringManager.airport),
          ],
          currentIndex: selectedIndex,
          onTap: selectedScreen),
      body: Center(
        child: screenS.elementAt(selectedIndex),
      ),
    );
  }

  selectedScreen(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
