import 'package:car_rental/utils/Routes.dart';
import 'package:car_rental/utils/RoutesManager.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Car Rental',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RoutesManager.generateRoute,
      initialRoute: Routes.dashboard,
      // home: HomePage(title: 'Flutter Demo'),
    );
  }
}
