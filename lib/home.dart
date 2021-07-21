import 'package:flutter/material.dart';
import 'package:nazareth_presby_school_project/components/carousel.dart';
import 'package:nazareth_presby_school_project/components/header.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      child: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Header(),
              const Carousel(),
              // Center(
              //   child: ElevatedButton(
              //     onPressed: null,
              //     child: Text(
              //       "WORK IN PROGRESS",
              //       style: Theme.of(context).textTheme.button,
              //     ),
              //   )
              // ),
            ],
          ),
      ),
    );
  }
}
