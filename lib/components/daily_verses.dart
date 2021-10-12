import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:nazareth_presby_school_project/style/colors.dart';

class DailyVerse extends StatefulWidget {
  const DailyVerse({Key? key}) : super(key: key);

  @override
  _DailyVerseState createState() => _DailyVerseState();
}

final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
final CollectionReference daily_verse_collection =
    FirebaseFirestore.instance.collection("daily verse");

class _DailyVerseState extends State<DailyVerse> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(bottom: 5),
          // alignment: Alignment.centerRight,
          decoration: const BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: CustomColor.red,
                      width: 2,
                      style: BorderStyle.solid))),
          child: const SelectableText(
            'DAILY VERSE',
            style: TextStyle(
              fontFamily: 'Raleway',
              fontSize: 16.0,
              color: CustomColor.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
            alignment: Alignment.center,
            child: StreamBuilder<QuerySnapshot>(
              stream: daily_verse_collection
                  .orderBy('datetime', descending: true)
                  .snapshots(),
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasError) {
                  return const Center(child: Text("Something went wrong"));
                }

                if (snapshot.connectionState == ConnectionState.active) {
                  var data = snapshot.data!.docs;

                  return AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        data.isNotEmpty ? data[0]['text'] : "",
                        textStyle: const TextStyle(
                          fontSize: 14.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                        speed: const Duration(milliseconds: 100),
                      )
                    ],
                    repeatForever: true,
                  );
                }

                return const CircularProgressIndicator();
              },
            )),
        const SizedBox(
          height: 30,
        ),
        Container(
            alignment: Alignment.centerRight,
            child: StreamBuilder<QuerySnapshot>(
              stream: daily_verse_collection.snapshots(),
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasError) {
                  return const Center(child: Text("Something went wrong"));
                }

                if (snapshot.connectionState == ConnectionState.active) {
                  var data = snapshot.data!.docs;

                  return SelectableText(
                    data.isNotEmpty ? "- ${data[0]['scripture']}" : "",
                    style: const TextStyle(
                      fontSize: 14.0,
                      fontStyle: FontStyle.italic,
                      color: CustomColor.red,
                    ),
                  );
                }

                return const CircularProgressIndicator();
              },
            ))
      ],
    );
  }
}
