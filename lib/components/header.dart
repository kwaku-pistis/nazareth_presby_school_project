import 'package:flutter/material.dart';
import 'package:nazareth_presby_school_project/components/givings_dialog.dart';
import 'package:nazareth_presby_school_project/screens/church_project.dart';
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

var listItems = <String>['PROJECTS', 'SCHOOL', 'CHURCH'];
int counter = 0;

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
                          child: SelectableText(
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
                      return DropdownButton<String>(
                        value: 'PROJECTS',
                        icon: const Icon(Icons.arrow_drop_down),
                        elevation: 8,
                        style: Theme.of(context).textTheme.headline2,
                        isDense: true,
                        underline: Container(
                          height: 0,
                        ),
                        selectedItemBuilder: (BuildContext context) {
                          return listItems.map<Widget>((String item) {
                            // print(counter);
                            if (counter == 0) {
                              return Text(
                                'PROJECTS',
                                style: Theme.of(context).textTheme.headline2,
                                // textAlign: TextAlign.center,
                              );
                            }
                            // else if (counter > 0 && item == 'PROJECTS') {
                            //   return Text(
                            //     'PROJECTS',
                            //     style: Theme.of(context).textTheme.headline2,
                            //     // textAlign: TextAlign.center,
                            //   );
                            // }
                            else {
                              return Text(
                                'PROJECTS',
                                style: Theme.of(context).textTheme.headline1,
                                // textAlign: TextAlign.center,
                              );
                            }
                          }).toList();
                        },
                        onChanged: (String? newValue) {
                          setState(() {
                            counter++;
                          });
                          if (newValue == 'SCHOOL') {
                            // _setActiveMenu('PROJECTS');
                            context
                                .read<ChangeBoolState>()
                                .setActiveMenu('PROJECTS');
                            context
                                .read<BodyWidget>()
                                .setBodyWidget(const SchoolProject());
                          }

                          if (newValue == 'CHURCH') {
                            context
                                .read<ChangeBoolState>()
                                .setActiveMenu('PROJECTS');
                            context
                                .read<BodyWidget>()
                                .setBodyWidget(const ChurchProject());
                          }
                        },
                        items: listItems
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      );
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
                    margin: const EdgeInsets.only(right: 10.0),
                    child: ElevatedButton.icon(
                      onPressed: () {
                        showDialog(
                            context: context,
                            barrierDismissible: true,
                            useSafeArea: false,
                            builder: (_) => Center(
                                  child: SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.6,
                                      child: const GivingsDialog()),
                                ));
                      },
                      icon: const Icon(
                        Icons.monetization_on,
                        color: CustomColor.white,
                      ),
                      label: const SelectableText(
                        'GIVINGS',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ))
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
                          child: SelectableText(
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
                          alignment: Alignment.centerRight,
                          margin: const EdgeInsets.only(right: 0.0),
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.monetization_on,
                              color: CustomColor.white,
                              size: 20,
                            ),
                            label: const SelectableText(
                              'GIVINGS',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )))
                ]));
  }

  _setActiveMenu(String menu) {
    setState(() {
      _activeMenu = menu;
      counter = 0;
    });
  }
}
