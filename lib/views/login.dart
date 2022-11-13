import 'package:flutter/material.dart';
import '../main.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final Map<String, String> loginDetails = {
    "password": "password@123",
    "email": "example@email.com"
  };
  late String _email;
  late String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 5,
          ),
          BrainTech.navBar(context),
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
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Email empty";
                      } else if (value != loginDetails["email"]) {
                        return "Incorrect Email";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _email = value!;
                    },
                  ),
                  BrainTech.space(10),
                  //  PASSWORD FIELD
                  TextFormField(
                    decoration: const InputDecoration(
                        icon: Icon(Icons.password_outlined),
                        hintText: 'Enter your password',
                        labelText: 'Password',
                        border: OutlineInputBorder()),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password empty";
                      } else if (value != loginDetails["password"]) {
                        return "Password incorrect";
                      }
                    },
                    obscureText: true,
                    onSaved: (value) {
                      _password = value!;
                    },
                  ),
                  BrainTech.space(10),
                  Center(
                      child: ElevatedButton(
                          onPressed: () {
                            if (!_formKey.currentState!.validate()) {
                              return;
                            } else {
                              _formKey.currentState!.save();
                              BrainTech.isLoggedIn = true;
                              BrainTech.goToHomeView(context);
                            }
                          },
                          child: const Text("Submit")))
                ],
              ),
            ),
          ),
          BrainTech.footer()
        ],
      ),
    );
  }
}
