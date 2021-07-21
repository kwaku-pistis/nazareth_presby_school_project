import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:nazareth_presby_school_project/home.dart';

void main() {
  runApp(const MyApp());
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
        primaryColor: Colors.blue,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: Colors.white)
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
          )
        ),
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 18.0,
            color: Colors.red,
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
            // color: Color(0xff2A3A9C),
            color: Colors.red,
          ),
          bodyText1: TextStyle(
            fontSize: 16.0,
            color: Colors.grey,
          ),
          button: TextStyle(
            fontSize: 16.0,
            color: Colors.white,
          )
        )
      ),
      home: const Home(),
    );
  }
}
