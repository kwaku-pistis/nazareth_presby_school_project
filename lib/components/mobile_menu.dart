import 'package:flutter/material.dart';
import 'package:nazareth_presby_school_project/main.dart';
import 'package:nazareth_presby_school_project/screens/church_info.dart';
import 'package:nazareth_presby_school_project/screens/church_project.dart';
import 'package:nazareth_presby_school_project/screens/contact_us.dart';
import 'package:nazareth_presby_school_project/screens/home_details.dart';
import 'package:nazareth_presby_school_project/screens/school_project.dart';
import 'package:nazareth_presby_school_project/screens/washroom_project.dart';
import 'package:provider/src/provider.dart';

class MobileMenu extends StatefulWidget {
  const MobileMenu({Key? key}) : super(key: key);

  @override
  _MobileMenuState createState() => _MobileMenuState();
}

var _activeMenu = "HOME";

class _MobileMenuState extends State<MobileMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(20),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {
                  setActiveMenu('HOME');
                  context.read<ChangeBoolState>().setActiveMenu('HOME');
                  context.read<BodyWidget>().setBodyWidget(const HomeDetails());
                },
                child: Text(
                  'HOME',
                  style: _activeMenu == 'HOME'
                      ? Theme.of(context).textTheme.headline1
                      : Theme.of(context).textTheme.headline2,
                  textAlign: TextAlign.left,
                ),
              )),
          Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {
                  setActiveMenu('SCHOOL BUILDING PROJECT');
                  context.read<ChangeBoolState>().setActiveMenu('PROJECTS');
                  context
                      .read<BodyWidget>()
                      .setBodyWidget(const SchoolProject());
                },
                child: Text(
                  'SCHOOL BUILDING PROJECT',
                  style: _activeMenu == 'SCHOOL BUILDING PROJECT'
                      ? Theme.of(context).textTheme.headline1
                      : Theme.of(context).textTheme.headline2,
                ),
              )),
          Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {
                  setActiveMenu('WASHROOM BUILDING PROJECT');
                  context.read<ChangeBoolState>().setActiveMenu('PROJECTS');
                  context
                      .read<BodyWidget>()
                      .setBodyWidget(const WashroomProject());
                },
                child: Text(
                  'WASHROOM BUILDING PROJECT',
                  style: _activeMenu == 'WASHROOM BUILDING PROJECT'
                      ? Theme.of(context).textTheme.headline1
                      : Theme.of(context).textTheme.headline2,
                ),
              )),
          Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {
                  setActiveMenu('CHURCH BUILDING PROJECT');
                  context.read<ChangeBoolState>().setActiveMenu('PROJECTS');
                  context
                      .read<BodyWidget>()
                      .setBodyWidget(const ChurchProject());
                },
                child: Text(
                  'CHURCH BUILDING PROJECT',
                  style: _activeMenu == 'CHURCH BUILDING PROJECT'
                      ? Theme.of(context).textTheme.headline1
                      : Theme.of(context).textTheme.headline2,
                ),
              )),
          Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {
                  setActiveMenu('CHURCH HISTORY');
                  context
                      .read<ChangeBoolState>()
                      .setActiveMenu('CHURCH HISTORY');
                  context.read<BodyWidget>().setBodyWidget(const ChurchInfo());
                },
                child: Text(
                  'CHURCH HISTORY',
                  style: _activeMenu == 'CHURCH HISTORY'
                      ? Theme.of(context).textTheme.headline1
                      : Theme.of(context).textTheme.headline2,
                ),
              )),
          Container(
              alignment: Alignment.centerLeft,
              width: MediaQuery.of(context).size.width,
              child: TextButton(
                onPressed: () {
                  setActiveMenu('CONTACT US');
                  context.read<ChangeBoolState>().setActiveMenu('CONTACT US');
                  context.read<BodyWidget>().setBodyWidget(const ContactUs());
                },
                child: Text(
                  'CONTACT US',
                  style: _activeMenu == 'CONTACT US'
                      ? Theme.of(context).textTheme.headline1
                      : Theme.of(context).textTheme.headline2,
                ),
              )),
        ],
      ),
    );
  }

  setActiveMenu(String menu) {
    setState(() {
      _activeMenu = menu;
    });
  }
}
