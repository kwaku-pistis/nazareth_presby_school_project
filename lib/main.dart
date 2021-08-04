import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:nazareth_presby_school_project/components/home_details.dart';
import 'package:nazareth_presby_school_project/home.dart';
import 'package:nazareth_presby_school_project/screens/main_body.dart';
import 'package:nazareth_presby_school_project/style/colors.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => ChangeBoolState()),
      ChangeNotifierProvider(create: (_) => BodyWidget()),
    ],
    child: const MyApp(),
  ));
}

class ChangeBoolState with ChangeNotifier, DiagnosticableTreeMixin {
  bool _isMenuOpen = false;
  bool _isFabVisible = false;
  String _activeMenu = "HOME";

  bool get isMenuOpen => _isMenuOpen;
  bool get isFabVisible => _isFabVisible;
  String get activeMenu => _activeMenu;

  void changeState() {
    _isMenuOpen = !_isMenuOpen;
    notifyListeners();
  }

  void changeFabVisibility(String menu) {
    // toggle floating action button visibility
    switch (menu) {
      case 'HOME':
        _isFabVisible = false;
        break;
      case 'SCHOOL PROJECT':
        _isFabVisible = true;
        break;
      case 'CHURCH INFO':
        _isFabVisible = true;
        break;
      case 'CONTACT US':
        _isFabVisible = true;
        break;
      default:
        _isFabVisible = true;
    }
    notifyListeners();
  }

  void setActiveMenu(String menu) {
    _activeMenu = menu;
  }

  // @override
  // void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  //   super.debugFillProperties(properties);
  //   properties.add(IntProperty('count', count));
  // }
}

class BodyWidget with ChangeNotifier, DiagnosticableTreeMixin {
  Widget _bodyWidget = const HomeDetails();

  Widget get bodyWidget => _bodyWidget;

  void setBodyWidget(Widget widget) {
    _bodyWidget = widget;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          fontFamily: 'Raleway',
          primaryColor: Colors.blue,
          textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(primary: Colors.white)),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
          )),
          textTheme: const TextTheme(
              headline1: TextStyle(
                fontSize: 18.0,
                color: CustomColor.red,
                fontWeight: FontWeight.bold,
              ),
              headline2: TextStyle(
                fontSize: 18.0,
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
              caption: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              headline3: TextStyle(
                fontSize: 20.0,
                fontStyle: FontStyle.italic,
                color: Colors.white,
              ),
              bodyText1: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
                height: 1.2,
              ),
              bodyText2: TextStyle(fontSize: 16.0, color: Colors.white),
              button: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
              ))),
      home: const MainBody(),
    );
  }
}
