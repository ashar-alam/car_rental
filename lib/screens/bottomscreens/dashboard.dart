import 'package:car_rental/screens/account.dart';
import 'package:car_rental/screens/authentication/login.dart';
import 'package:car_rental/screens/authentication/outside_login.dart';
import 'package:car_rental/screens/booking.dart';
import 'package:car_rental/screens/drawer/about_us.dart';
import 'package:car_rental/screens/drawer/contact_us.dart';
import 'package:car_rental/screens/drawer/privacy_policy.dart';
import 'package:car_rental/screens/drawer/refund_policy.dart';
import 'package:car_rental/screens/drawer/term_condition.dart';
import 'package:car_rental/utils/app_style.dart';
import 'package:car_rental/utils/string_manager.dart';
import 'package:flutter/material.dart';

import '../../widgets/appbar_view.dart';
import 'home.dart';
import 'airport.dart';
import 'local.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
// int selectedIndex = 0;
  int currentIndex = 0;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    List<Widget> screenS = const <Widget>[
      HomeScreen(),
      Airport(),
      Local(),
      MyBooking(),
      MyAccount()
    ];
    List<String> appBarTitles = [
      StringManager.outStationCabs,
      StringManager.airportCabs,
      StringManager.localHourlyRentals,
      StringManager.booking,
      StringManager.account,
    ];
    return Scaffold(
      appBar: AppBarView().appBar(
        context,
        title: appBarTitles[currentIndex],
        actions: [],
      ),
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          screenS.elementAt(currentIndex),
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              width: size.width,
              height: 80,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 24, 141, 28)
                              .withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: CustomPaint(
                      size: Size(size.width, 80),
                      painter: BNBCustomPainter(),
                    ),
                  ),
                  Center(
                    heightFactor: 0.7,
                    child: SizedBox(
                      height: 62,
                      width: 70,
                      child: FloatingActionButton(
                          backgroundColor: AppStyle.primaryColor,
                          elevation: 0.5,
                          onPressed: () {
                            setBottomBarIndex(2);
                          },
                          child: const Icon(
                            Icons.local_taxi,
                            size: 25,
                          )),
                    ),
                  ),
                  SizedBox(
                    width: size.width,
                    height: 80,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.luggage,
                                  size: 25,
                                  color: currentIndex == 0
                                      ? AppStyle.primaryColor
                                      : Colors.grey.shade400,
                                ),
                                onPressed: () {
                                  setBottomBarIndex(0);
                                },
                                splashColor: Colors.white,
                              ),
                              IconButton(
                                  icon: Icon(
                                    Icons.local_airport,
                                    size: 25,
                                    color: currentIndex == 1
                                        ? AppStyle.primaryColor
                                        : Colors.grey.shade400,
                                  ),
                                  onPressed: () {
                                    setBottomBarIndex(1);
                                  }),
                              Container(
                                width: size.width * 0.20,
                              ),
                              IconButton(
                                  icon: Icon(
                                    Icons.stars,
                                    size: 25,
                                    color: currentIndex == 3
                                        ? AppStyle.primaryColor
                                        : Colors.grey.shade400,
                                  ),
                                  onPressed: () {
                                    setBottomBarIndex(3);
                                  }),
                              IconButton(
                                icon: Icon(
                                  Icons.account_circle,
                                  size: 25,
                                  color: currentIndex == 4
                                      ? AppStyle.primaryColor
                                      : Colors.grey.shade400,
                                ),
                                onPressed: () {
                                  setBottomBarIndex(4);
                                },
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                StringManager.outStation,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                StringManager.airport,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Container(
                                width: size.width * 0.15,
                              ),
                              const Text(
                                StringManager.booking,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                StringManager.account,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 250,
              child: DrawerHeader(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [AppStyle.primaryLight, AppStyle.primaryDark],
                      begin: FractionalOffset(0.0, 0.0),
                      end: FractionalOffset(0.5, 0.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      StringManager.seeYouSoon,
                      style: TextStyle(
                          fontSize: 25,
                          color: AppStyle.white,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      StringManager.wlecomeToSeeYouSoon,
                      style: TextStyle(
                          fontSize: 20,
                          color: AppStyle.white,
                          fontWeight: FontWeight.w500),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        minimumSize: const Size(250.0, 40.0),
                        primary: AppStyle.white,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const MyLogin()),
                        );
                      },
                      child: const Text(
                        StringManager.login,
                        style: TextStyle(color: AppStyle.black),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        StringManager.createAccount,
                        style: TextStyle(
                            fontSize: 16,
                            color: AppStyle.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              trailing: const Icon(Icons.chevron_right),
              leading: const Icon(Icons.security),
              title: const Text(
                StringManager.privacyAndPolicy,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MyPrivacyPolicy(),
                  ),
                );
              },
            ),
            const Divider(),
            ListTile(
              trailing: const Icon(Icons.chevron_right),
              leading: const Icon(Icons.library_books),
              title: const Text(
                StringManager.termAndCondition,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MyTermCondition(),
                  ),
                );
              },
            ),
            const Divider(),
            ListTile(
              trailing: const Icon(Icons.chevron_right),
              leading: const Icon(Icons.policy),
              title: const Text(
                StringManager.refundpolicy,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MyRefundPolicy(),
                  ),
                );
              },
            ),
            const Divider(),
            ListTile(
              trailing: const Icon(Icons.chevron_right),
              leading: const Icon(Icons.supervised_user_circle),
              title: const Text(
                StringManager.aboutUs,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MyAboutus(),
                  ),
                );
              },
            ),
            const Divider(),
            ListTile(
              trailing: const Icon(Icons.chevron_right),
              leading: const Icon(Icons.whatsapp),
              title: const Text(
                StringManager.whatsapp,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MyOutsideLogin(),
                  ),
                );
              },
            ),
            const Divider(),
            ListTile(
              trailing: const Icon(Icons.chevron_right),
              leading: const Icon(Icons.contact_support),
              title: const Text(
                StringManager.contactUs,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MyContactus(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 20); // Start
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(Offset(size.width * 0.60, 20),
        radius: const Radius.circular(20.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 20);
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
