import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:nazareth_presby_school_project/style/colors.dart';

class DailyVerse extends StatefulWidget {
  const DailyVerse({ Key? key }) : super(key: key);

  @override
  _DailyVerseState createState() => _DailyVerseState();
}

class _DailyVerseState extends State<DailyVerse> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(bottom: 5),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.white,
                width: 2,
                style: BorderStyle.solid
              )
            )
          ),
          child: const Text(
            'Daily Verse',
            style: TextStyle(
              fontFamily: 'Raleway',
              fontSize: 16.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 30,),
        Container(
          alignment: Alignment.center,
          child: AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                textStyle: const TextStyle(
                  fontSize: 14.0,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                ),
                speed: const Duration(milliseconds: 100),
              )
            ],
            repeatForever: true,
          )
        ),
        const SizedBox(height: 30,),
        Container(
          alignment: Alignment.centerRight,
          child: const Text(
            '- Lorem ipsum',
            style: TextStyle(
              fontSize: 14.0,
              fontStyle: FontStyle.italic,
              color: Colors.white,
            ),
          )
        )
      ],
    );
  }
}