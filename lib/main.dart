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
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
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
          _navBar(),
        ],
      ),
    );
  }

  _navBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _navBarButton("Home"),
        _navBarButton("About"),
        _navBarButton("Partners"),
        _navBarButton("Contact"),
        _navBarButton("Login"),
      ],
    );
  }

  _navBarButton(String text) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        text,
        style: const TextStyle(fontSize: 30),
      ),
    );
  }
}
