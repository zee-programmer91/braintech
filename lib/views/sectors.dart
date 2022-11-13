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
          BrainTech.navBar(context),
          const SizedBox(
            height: 30,
          ),
          TextField(
            decoration: InputDecoration(
                constraints: const BoxConstraints(maxWidth: 300),
                labelText: "search here",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
                hintText: "eg. Water Harvesting",
                prefixIcon: const Icon(Icons.search),
                prefixIconColor: Colors.green),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Image.asset(
              "assets/images/FACT_SHEET.png",
            ),
          ),
        ],
      ),
    );
  }
}
