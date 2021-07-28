import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:nazareth_presby_school_project/components/contact_us.dart';
import 'package:nazareth_presby_school_project/home.dart';
import 'package:nazareth_presby_school_project/style/colors.dart';

import 'about_project.dart';
import 'church_info.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

final homeKey = GlobalKey();
var activeKey = homeKey;

class _HeaderState extends State<Header> {
  var _activeMenu = 'HOME';

  @override
  Widget build(BuildContext context) {
    var _landscape = MediaQuery.of(context).orientation;

    return _landscape == Orientation.landscape
        ? Container(
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
                      children: [
                        const Image(
                          image: AssetImage('assets/images/pcg_logo.png'),
                          width: 70,
                          height: 70,
                        ),
                        const SizedBox(
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
                    TextButton(
                        onPressed: () {
                          _setActiveMenu('HOME');
                          Scrollable.ensureVisible(homeKey.currentContext!);
                        },
                        child: Text(
                          "HOME",
                          style: _activeMenu == 'HOME'
                              ? Theme.of(context).textTheme.headline1
                              : Theme.of(context).textTheme.headline2,
                        )),
                    TextButton(
                        onPressed: () {
                          _setActiveMenu('SCHOOL PROJECT');
                          Scrollable.ensureVisible(
                              aboutProjectKey.currentContext!);
                        },
                        child: Text(
                          "SCHOOL PROJECT",
                          style: _activeMenu == 'SCHOOL PROJECT'
                              ? Theme.of(context).textTheme.headline1
                              : Theme.of(context).textTheme.headline2,
                        )),
                    TextButton(
                        onPressed: () {
                          _setActiveMenu('CHURCH INFO');
                          Scrollable.ensureVisible(
                              churchInfoKey.currentContext!);
                        },
                        child: Text(
                          "CHURCH INFO",
                          style: _activeMenu == 'CHURCH INFO'
                              ? Theme.of(context).textTheme.headline1
                              : Theme.of(context).textTheme.headline2,
                        )),
                    TextButton(
                        onPressed: () {
                          _setActiveMenu('CONTACT US');
                          Scrollable.ensureVisible(contactKey.currentContext!);
                        },
                        child: Text(
                          "CONTACT US",
                          style: _activeMenu == 'CONTACT US'
                              ? Theme.of(context).textTheme.headline1
                              : Theme.of(context).textTheme.headline2,
                        )),
                  ],
                ),
                Container(
                    margin: const EdgeInsets.only(right: 70.0),
                    child: ElevatedButton(
                        onPressed: null,
                        style: ButtonStyle(
                            fixedSize:
                                MaterialStateProperty.all(const Size(150, 50)),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.red)),
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
        : Container(
          // padding: const EdgeInsets.all(16),
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                width: 50,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu,
                    color: CustomColor.blue,
                  )
                )
              ),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Image(
                      image: AssetImage('assets/images/pcg_logo.png'),
                      width: 60,
                      height: 60,
                    ),
                    const SizedBox(
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
                          fixedSize:
                              MaterialStateProperty.all(const Size(120, 50)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red)),
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
                      )))
              )
            ]
          )
        );
  }

  _setActiveMenu(String menu) {
    setState(() {
      _activeMenu = menu;
    });

    // toggle floating action button visibility
    switch (menu) {
      case 'HOME':
        setState(() {
          isVisible = false;
        });
        break;
      case 'SCHOOL PROJECT':
        setState(() {
          isVisible = true;
        });
        break;
      case 'CHURCH INFO':
        setState(() {
          isVisible = true;
        });
        break;
      case 'CONTACT US':
        setState(() {
          isVisible = true;
        });
        break;
      default:
        setState(() {
          isVisible = false;
        });
    }
  }
}
