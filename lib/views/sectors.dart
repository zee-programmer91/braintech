import 'package:flutter/material.dart';

import '../main.dart';

class Sectors extends StatefulWidget {
  const Sectors({Key? key}) : super(key: key);

  @override
  State<Sectors> createState() => _SectorsState();
}

class _SectorsState extends State<Sectors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 5,
          ),
          BrainTech.navBar(context, false),
          Text("Sectors"),
        ],
      ),
    );
  }
}
