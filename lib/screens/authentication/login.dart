import 'package:car_rental/screens/bottomscreens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../Utils/app_style.dart';
import '../../Utils/string_manager.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppStyle.black,
        onPressed: () {},
        child: const Icon(Icons.arrow_forward),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [AppStyle.white, AppStyle.primaryDark.withOpacity(0.5)],
              begin: const FractionalOffset(0.5, 0.5),
              end: const FractionalOffset(0.5, 1.0),
              stops: const [0.0, 1.0],
              tileMode: TileMode.clamp),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()),
                        );
                      },
                      icon: const Icon(Icons.clear),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    const Text(
                      StringManager.seeYouSoon,
                      style: TextStyle(
                          fontSize: 30,
                          color: AppStyle.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  StringManager.loginOrCreateAccount,
                  style: TextStyle(
                      fontSize: 25,
                      // color: AppStyle.white,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 100,
                ),
                const Text(
                  StringManager.mobileNumner,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                TextField(
                  decoration: const InputDecoration(
                    prefixText: "+91",
                    prefixStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
