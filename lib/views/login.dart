import 'package:flutter/material.dart';

import '../main.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

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
          Form(
            key: _formKey,
            child: Expanded(
              child: ListView(
                padding: const EdgeInsets.all(30),
                children: [
                  //  EMAIL FIELD
                  TextFormField(
                    decoration: const InputDecoration(
                        icon: Icon(Icons.account_box_rounded),
                        hintText: 'Enter your email',
                        labelText: 'Email',
                        border: OutlineInputBorder()),
                  ),
                  BrainTech.space(10),
                  //  PASSWORD FIELD
                  TextFormField(
                    decoration: const InputDecoration(
                        icon: Icon(Icons.password_outlined),
                        hintText: 'Enter your password',
                        labelText: 'Password',
                        border: OutlineInputBorder()),
                  ),
                  BrainTech.space(10),
                  Center(
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text("Submit")))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
