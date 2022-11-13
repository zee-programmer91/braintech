import 'package:braintech/views/login.dart';
import 'package:braintech/views/register.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class LoginRegister extends StatefulWidget {
  const LoginRegister({Key? key}) : super(key: key);

  @override
  State<LoginRegister> createState() => _LoginRegisterState();
}

class _LoginRegisterState extends State<LoginRegister> {
  _goToLoginView(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const Login(),
      ),
    );
  }

  _goToRegisterView(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const Register(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 5,
          ),
          BrainTech.navBar(context, true),
          BrainTech.space(200),
          Center(
              child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  _goToLoginView(context);
                },
                child: const Text(
                  "LOGIN",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              BrainTech.space(10),
              ElevatedButton(
                onPressed: () {
                  _goToRegisterView(context);
                },
                child: const Text(
                  "REGISTER",
                  style: TextStyle(fontSize: 30),
                ),
              )
            ],
          )),
        ],
      ),
    );
  }
}
