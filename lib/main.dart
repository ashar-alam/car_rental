import 'package:car_rental/utils/Routes.dart';
import 'package:car_rental/utils/routes_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Car Rental',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RoutesManager.generateRoute,
      initialRoute: Routes.dashboard,
      theme: ThemeData(
        fontFamily: GoogleFonts.ubuntu().fontFamily,
      ),
      // home: HomePage(title: 'Flutter Demo'),
    );
  }
}
