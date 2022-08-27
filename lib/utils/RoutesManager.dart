import 'package:car_rental/screens/bottomscreens/dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/home.dart';
import 'Routes.dart';

class RoutesManager {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.dashboard:
        return MaterialPageRoute(builder: (_) => const Dashboard());
      // case Routes.register:
      //   return MaterialPageRoute(builder: (_) => RegisterScreen());
      // case Routes.forgotPassword:
      //   return MaterialPageRoute(builder: (_) => ForgotPasswordScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  // backgroundColor: AppStyle.purpleDark,
                  body: SafeArea(
                    child: Center(
                      child: Text(
                        'No Route Found',
                        // style: AppStyle.generalTextStyle(
                        //   color: AppStyle.white,
                        // ),
                      ),
                    ),
                  ),
                ));
    }
  }
}
