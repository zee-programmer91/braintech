import 'package:braintech/views/about.dart';
import 'package:braintech/views/chat.dart';
import 'package:braintech/views/contact.dart';
import 'package:braintech/views/entrepreneurs.dart';
import 'package:braintech/views/investors.dart';
import 'package:braintech/views/login_register.dart';
import 'package:braintech/views/sectors.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

void main() async {
  runApp(const BrainTech());
}

class BrainTech extends StatelessWidget {
  const BrainTech({super.key});
  static bool isLoggedIn = false;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Imvelisi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }

  static space(double size) {
    return SizedBox(
      height: size,
    );
  }

  static navBar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        //  Home View
        Expanded(
          flex: 1,
          child: ElevatedButton(
            onPressed: () {
              goToHomeView(context);
            },
            child: const Text(
              "Home",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        //  About View
        Expanded(
          flex: 1,
          child: ElevatedButton(
            onPressed: () {
              goToAboutView(context);
            },
            child: const Text(
              "About",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        //  Sectors View
        BrainTech.isLoggedIn
            ? Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {
                    goToSectorsView(context);
                  },
                  child: const Text(
                    "Sectors",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              )
            : Container(),
        //  Entrepreneurs View
        BrainTech.isLoggedIn
            ? Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {
                    goToEntrepreneursView(context);
                  },
                  child: const Text(
                    "Entrepreneurs",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              )
            : Container(),
        //  Chat View
        BrainTech.isLoggedIn
            ? Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {
                    goToChatView(context);
                  },
                  child: const Text(
                    "Chat",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              )
            : Container(),
        //  Login View
        !BrainTech.isLoggedIn
            ? Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {
                    goToLoginView(context);
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              )
            : Container(),
      ],
    );
  }

  static goToHomeView(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const MyHomePage(
          title: 'Home Page',
        ),
      ),
    );
  }

  static goToAboutView(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const About(),
      ),
    );
  }

  static goToPartnersView(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const Investors(),
      ),
    );
  }

  static goToContactView(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const Contact(),
      ),
    );
  }

  static goToLoginView(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const LoginRegister(),
      ),
    );
  }

  static goToSectorsView(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const Sectors(),
      ),
    );
  }

  static goToEntrepreneursView(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const Entrepreneurs(),
      ),
    );
  }

  static goToChatView(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const Chat(),
      ),
    );
  }

  static footer() {
    return Expanded(
        child: Container(
      color: Colors.blue,
      child: Column(
        children: [
          BrainTech.space(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                  flex: 1,
                  child: Column(
                    children: const [
                      Text(
                        "ADDRESS",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("Regus, Twickenham Building,"),
                      Text("The Campus cnr Sloane and,"),
                      Text("Main Rd, Bryanston,"),
                      Text("Johannesburg, 2191"),
                      Text("South Africa"),
                    ],
                  )),
              Expanded(
                  flex: 2,
                  child: Column(
                    children: const [
                      Text(
                        "CONTACT",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("PHONE: 011 575 4268"),
                      Text("EMAIL ADDRESS: imvelisi@greenmatter.co.za"),
                      Text(""),
                      Text(""),
                      Text(""),
                    ],
                  )),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      const Text(
                        "JOIN NEWSLETTER",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      BrainTech.space(10),
                      ElevatedButtonTheme(
                          data: ElevatedButtonThemeData(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.grey))),
                          child: ElevatedButton(
                              onPressed: () {}, child: const Text("EMAIL"))),
                      const Text(""),
                      const Text(""),
                      const Text(""),
                    ],
                  ))
            ],
          )
        ],
      ),
    ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          BrainTech.space(5),
          BrainTech.navBar(context),
          BrainTech.space(20),
          //  Imvelisi Logo
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              "assets/images/imvelisi-logo.jpg",
              width: 678,
            ),
          ),
          BrainTech.space(40),
          //  Sponsors
          FittedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _sponsorImage("assets/images/first-sponsor.jpg"),
                _sponsorImage("assets/images/second-sponsor.jpg"),
                _sponsorImage("assets/images/third-sponsor.jpg"),
                _sponsorImage("assets/images/fourth-sponsor.png"),
                _sponsorImage("assets/images/fifth-sponsor.jpg"),
              ],
            ),
          ),
          BrainTech.space(40),
          //  Motto
          const Text(
            "Potential Market Opportunities for Entrepreneurs in the Water & Biodiversity Sector",
            style: TextStyle(color: Colors.green, fontSize: 20),
          ),
          BrainTech.space(25),
          BrainTech.footer()
        ],
      ),
    );
  }

  _sponsorImage(String imagePath) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Image.asset(
        imagePath,
        height: 100,
        width: 250,
      ),
    );
  }
}
