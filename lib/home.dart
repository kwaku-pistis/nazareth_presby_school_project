import 'package:flutter/material.dart';
import 'package:nazareth_presby_school_project/components/about_project.dart';
import 'package:nazareth_presby_school_project/components/carousel.dart';
import 'package:nazareth_presby_school_project/components/church_info.dart';
import 'package:nazareth_presby_school_project/components/contact_us.dart';
import 'package:nazareth_presby_school_project/components/header.dart';
import 'package:nazareth_presby_school_project/style/colors.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

bool isVisible = true;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Header(),
            const Carousel(),
            const AboutProject(),
            const ChurchInfo(),
            const ContactUs(),
          ],
        ),
      ),
      floatingActionButton: Visibility(
        visible: isVisible,
        child: FloatingActionButton(
          onPressed: () {
            Scrollable.ensureVisible(homeKey.currentContext!);
          },
          child: const Icon(Icons.navigation),
          backgroundColor: CustomColor.red,
          tooltip: 'Back to top',
        ),
      ),
    );
  }
}
