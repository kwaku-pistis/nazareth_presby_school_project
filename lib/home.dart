import 'package:flutter/material.dart';
import 'package:nazareth_presby_school_project/components/about_project.dart';
import 'package:nazareth_presby_school_project/components/carousel.dart';
import 'package:nazareth_presby_school_project/components/header.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

var homeKey = GlobalKey();
var aboutProjectKey = GlobalKey();

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
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.only(top: 40, left: 50, right: 50),
              alignment: Alignment.centerLeft,
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'ABOUT PROJECT',
                style: Theme.of(context).textTheme.caption,
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              key: aboutProjectKey,
              // margin: const EdgeInsets.all(20),
              // padding: const EdgeInsets.all(10),
              child: const AboutProject(),
            ),
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
