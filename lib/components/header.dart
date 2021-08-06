import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:nazareth_presby_school_project/screens/contact_us.dart';
import 'package:nazareth_presby_school_project/screens/home_details.dart';
import 'package:nazareth_presby_school_project/style/colors.dart';
import 'package:nazareth_presby_school_project/utils/on_hover.dart';
import 'package:provider/src/provider.dart';

import '../main.dart';
import '../screens/school_project.dart';
import '../screens/church_info.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

final homeKey = GlobalKey();

var activeKey = homeKey;
bool isMenuOpened = false;
var _activeMenu = "HOME";

class _HeaderState extends State<Header> {
  @override
  void initState() {
    super.initState();

    // setState(() {
    //   _activeMenu = context.watch<ChangeBoolState>().activeMenu;
    // });
  }

  @override
  Widget build(BuildContext context) {
    var _landscape = MediaQuery.of(context).orientation;
    _activeMenu = context.watch<ChangeBoolState>().activeMenu;

    return _landscape == Orientation.landscape
        ? SizedBox(
            key: homeKey,
            width: MediaQuery.of(context).size.width,
            // height: 100,
            // padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: Container(
                    margin: const EdgeInsets.only(left: 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Image(
                          image: AssetImage('assets/images/pcg_logo.png'),
                          width: 70,
                          height: 70,
                        ),
                        SizedBox(
                          child: Text(
                            'NAZARETH\nCONGREGATION\nADJEI KOJO',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Scrollable.ensureVisible(homeKey.currentContext!);
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OnHover(builder: (isHovered) {
                      return TextButton(
                          onPressed: () {
                            _setActiveMenu('HOME');
                            context
                                .read<ChangeBoolState>()
                                .setActiveMenu('HOME');
                            context
                                .read<BodyWidget>()
                                .setBodyWidget(const HomeDetails());
                          },
                          child: Text(
                            "HOME",
                            style: _activeMenu == 'HOME'
                                ? Theme.of(context).textTheme.headline1
                                : Theme.of(context).textTheme.headline2,
                          ));
                    }),
                    OnHover(builder: (isHovered) {
                      return TextButton(
                          onPressed: () {
                            _setActiveMenu('SCHOOL PROJECT');
                            context
                                .read<ChangeBoolState>()
                                .setActiveMenu('SCHOOL PROJECT');
                            context
                                .read<BodyWidget>()
                                .setBodyWidget(const SchoolProject());
                          },
                          child: Text(
                            "SCHOOL PROJECT",
                            style: _activeMenu == 'SCHOOL PROJECT'
                                ? Theme.of(context).textTheme.headline1
                                : Theme.of(context).textTheme.headline2,
                          ));
                    }),
                    OnHover(builder: (isHovered) {
                      return TextButton(
                          onPressed: () {
                            _setActiveMenu('CHURCH HISTORY');
                            context
                                .read<ChangeBoolState>()
                                .setActiveMenu('CHURCH HISTORY');
                            context
                                .read<BodyWidget>()
                                .setBodyWidget(const ChurchInfo());
                          },
                          child: Text(
                            "CHURCH HISTORY",
                            style: _activeMenu == 'CHURCH HISTORY'
                                ? Theme.of(context).textTheme.headline1
                                : Theme.of(context).textTheme.headline2,
                          ));
                    }),
                    OnHover(builder: (isHovered) {
                      return TextButton(
                          onPressed: () {
                            _setActiveMenu('CONTACT US');
                            context
                                .read<ChangeBoolState>()
                                .setActiveMenu('CONTACT US');
                            context
                                .read<BodyWidget>()
                                .setBodyWidget(const ContactUs());
                          },
                          child: Text(
                            "CONTACT US",
                            style: _activeMenu == 'CONTACT US'
                                ? Theme.of(context).textTheme.headline1
                                : Theme.of(context).textTheme.headline2,
                          ));
                    }),
                  ],
                ),
                Container(
                    margin: const EdgeInsets.only(right: 0.0),
                    child: ElevatedButton(
                        onPressed: null,
                        style: ButtonStyle(
                            fixedSize:
                                MaterialStateProperty.all(const Size(150, 50)),
                            backgroundColor:
                                MaterialStateProperty.all(CustomColor.red)),
                        child: AnimatedTextKit(
                          animatedTexts: [
                            ScaleAnimatedText(
                              'DONATE',
                              textStyle: const TextStyle(
                                fontSize: 24.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // ColorizeAnimatedText(
                            //   'DONATE',
                            //   textStyle: const TextStyle(
                            //     fontSize: 20.0,
                            //   ),
                            //   colors: [
                            //     Colors.purple,
                            //     Colors.yellow,
                            //     Colors.red,
                            //     Colors.white,
                            //   ],
                            // ),
                          ],
                          // totalRepeatCount: 4,
                          // pause: const Duration(milliseconds: 500),
                          // displayFullTextOnTap: true,
                          // stopPauseOnTap: true,
                          // isRepeatingAnimation: true,
                          repeatForever: true,
                        )))
              ],
            ),
          )
        : SizedBox(
            key: homeKey,
            width: MediaQuery.of(context).size.width,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                      width: 50,
                      child: IconButton(
                          onPressed: () =>
                              context.read<ChangeBoolState>().changeState(),
                          icon: context.watch<ChangeBoolState>().isMenuOpen
                              ? const Icon(
                                  Icons.close,
                                  color: CustomColor.blue,
                                )
                              : const Icon(
                                  Icons.menu,
                                  color: CustomColor.blue,
                                ))),
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Image(
                          image: AssetImage('assets/images/pcg_logo.png'),
                          width: 60,
                          height: 60,
                        ),
                        SizedBox(
                          child: Text(
                            'NAZARETH\nCONGREGATION\nADJEI KOJO',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Container(
                          // width: MediaQuery.of(context).size.width,
                          // margin: const EdgeInsets.only(left: 100.0),
                          alignment: Alignment.centerRight,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                      const Size(120, 50)),
                                  backgroundColor: MaterialStateProperty.all(
                                      CustomColor.blue)),
                              child: AnimatedTextKit(
                                animatedTexts: [
                                  ScaleAnimatedText(
                                    'DONATE',
                                    textStyle: const TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                                repeatForever: true,
                              ))))
                ]));
  }

  _setActiveMenu(String menu) {
    setState(() {
      _activeMenu = menu;
    });
  }
}
