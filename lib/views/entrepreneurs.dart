import 'package:flutter/material.dart';

import '../main.dart';

class Entrepreneurs extends StatefulWidget {
  const Entrepreneurs({Key? key}) : super(key: key);

  @override
  State<Entrepreneurs> createState() => _EntrepreneursState();
}

class _EntrepreneursState extends State<Entrepreneurs> {
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
          const Text("Entrepreneurs"),
        ],
      ),
    );
  }
}
