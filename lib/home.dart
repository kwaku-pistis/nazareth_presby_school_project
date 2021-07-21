import 'package:flutter/material.dart';
import 'package:nazareth_presby_school_project/components/header.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Header(),
              Center(
                child: ElevatedButton(
                  onPressed: null,
                  child: Text(
                    "WORK IN PROGRESS",
                    style: Theme.of(context).textTheme.button,
                  ),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
