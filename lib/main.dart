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
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 5,
          ),
          BrainTech.navBar(context),
          const SizedBox(
            height: 20,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              "assets/images/imvelisi-logo.jpg",
              width: 678,
            ),
          )
        ],
      ),
    );
  }
}
