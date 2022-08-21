import 'package:car_rental/utils/StringManager.dart';
import 'package:car_rental/utils/utils.dart';
import 'package:car_rental/widgets/button.dart';
import 'package:flutter/material.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          StringManager.account,
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(Utils.getWidth(context)) / 20,
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  label: Text(
                    StringManager.name,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  label: Text(
                    StringManager.mobile,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  label: Text(
                    StringManager.email,
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              MyButton(
                title: StringManager.update,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      StringManager.signOut,
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      StringManager.forgotPassword,
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(
                    color: Colors.green,
                  ),
                  primary: Colors.white,
                  minimumSize: Size(
                    Utils.getWidth(context) / 10,
                    Utils.getHeight(context) / 15,
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  StringManager.booking,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
