import 'package:braintech/views/about.dart';
import 'package:braintech/views/contact.dart';
import 'package:braintech/views/investors.dart';
import 'package:braintech/views/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BrainTech());
}

class BrainTech extends StatelessWidget {
  const BrainTech({super.key});

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

  static navBar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        //  Home View
        ElevatedButton(
          onPressed: () {
            goToHomeView(context);
          },
          child: const Text(
            "Home",
            style: TextStyle(fontSize: 30),
          ),
        ),
        //  About View
        ElevatedButton(
          onPressed: () {
            goToAboutView(context);
          },
          child: const Text(
            "About",
            style: TextStyle(fontSize: 30),
          ),
        ),
        //  Partners View
        ElevatedButton(
          onPressed: () {
            goToPartnersView(context);
          },
          child: const Text(
            "Partners",
            style: TextStyle(fontSize: 30),
          ),
        ),
        //  Contact View
        ElevatedButton(
          onPressed: () {
            goToContactView(context);
          },
          child: const Text(
            "Contact",
            style: TextStyle(fontSize: 30),
          ),
        ),
        //  Login View
        ElevatedButton(
          onPressed: () {
            goToLoginView(context);
          },
          child: const Text(
            "Login",
            style: TextStyle(fontSize: 30),
          ),
        ),
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
        builder: (context) => const Login(),
      ),
    );
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
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          _space(5),
          BrainTech.navBar(context),
          _space(20),
          //  Imvelisi Logo
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              "assets/images/imvelisi-logo.jpg",
              width: 678,
            ),
          ),
          _space(40),
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
          _space(40),
          //  Motto
          const Text(
            "Potential Market Opportunities for Entrepreneurs in the Water & Biodiversity Sector",
            style: TextStyle(color: Colors.green, fontSize: 20),
          ),
          _space(25),
          Expanded(
              child: Container(
            color: Colors.blue,
            child: Column(
              children: [
                _space(10),
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
                            _space(10),
                            ElevatedButtonTheme(
                                data: ElevatedButtonThemeData(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.grey))),
                                child: ElevatedButton(
                                    onPressed: () {},
                                    child: const Text("EMAIL"))),
                            const Text(""),
                            const Text(""),
                            const Text(""),
                          ],
                        ))
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }

  _space(double size) {
    return SizedBox(
      height: size,
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
