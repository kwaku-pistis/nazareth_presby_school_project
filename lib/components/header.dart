import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  var _activeMenu = 'HOME';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      color: null,
      // padding: const EdgeInsets.only(left: 10, right: 10),
      child: Card(
        elevation: 10.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20.0),
              child: const Image(
                image: AssetImage('assets/images/pcg_logo.png'),
                width: 70,
                height: 70,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: () {
                      _setActiveMenu('HOME');
                    },
                    child: Text(
                      "HOME",
                      style: _activeMenu == 'HOME'
                          ? Theme.of(context).textTheme.headline1
                          : Theme.of(context).textTheme.headline2,
                    )),
                TextButton(
                    onPressed: () {
                      _setActiveMenu('ABOUT PROJECT');
                    },
                    child: Text(
                      "ABOUT PROJECT",
                      style: _activeMenu == 'ABOUT PROJECT'
                          ? Theme.of(context).textTheme.headline1
                          : Theme.of(context).textTheme.headline2,
                    )),
                TextButton(
                    onPressed: () {
                      _setActiveMenu('ABOUT US');
                    },
                    child: Text(
                      "ABOUT US",
                      style: _activeMenu == 'ABOUT US'
                          ? Theme.of(context).textTheme.headline1
                          : Theme.of(context).textTheme.headline2,
                    )),
                TextButton(
                    onPressed: () {
                      _setActiveMenu('CONTACT US');
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
                margin: const EdgeInsets.only(right: 20.0),
                child: ElevatedButton(
                    onPressed: null,
                    style: ButtonStyle(
                        fixedSize:
                            MaterialStateProperty.all(const Size(150, 50)),
                        backgroundColor: MaterialStateProperty.all(Colors.red)),
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
      ),
    );
  }

  _setActiveMenu(String menu) {
    setState(() {
      _activeMenu = menu;
    });
  }
}
