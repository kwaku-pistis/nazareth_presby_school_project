import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        onPressed: null,
        child: Text(
          "WORK IN PROGRESS",
          style: Theme.of(context).textTheme.button,
        ),
      )),
    );
  }
}
