import 'package:flutter/material.dart';

import '../main.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
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
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: const [
                  Text(
                    "ABOUT US",
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(
                    width: 300,
                    child: Text(
                      "Imvelisi is as a programme designed to provide support and guide aspiring young entrepreneurs through the process of developing their business ideas. Our programme is aimed to prepare young people who are considering start-up businesses in the water and biodiversity sector for a better understanding of what it takes to run a successful business.",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
              Image.asset("assets/images/abt.jpg")
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          BrainTech.footer()
        ],
      ),
    );
  }
}
