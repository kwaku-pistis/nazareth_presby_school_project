import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:nazareth_presby_school_project/style/colors.dart';

class Announcements extends StatefulWidget {
  const Announcements({Key? key}) : super(key: key);

  @override
  _AnnouncementsState createState() => _AnnouncementsState();
}

FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
CollectionReference announcements =
    FirebaseFirestore.instance.collection("announcements");

// var _counter = 1;

class _AnnouncementsState extends State<Announcements> {
  @override
  void initState() {
    super.initState();

    // announcements
    //     .add({"message": "This is a test ${_counter++}"})
    //     .then((value) => print("annoumcement added"))
    //     .catchError((error) => print("Error: $error"));
  }

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
                width: 2.0,
                color: CustomColor.red,
              ),
            ),
          ),
          child: const SelectableText(
            'ANNOUNCEMENTS',
            style:
                TextStyle(fontWeight: FontWeight.bold, color: CustomColor.blue),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(
            child: SizedBox(
                child: StreamBuilder<QuerySnapshot>(
                    stream: announcements.snapshots(),
                    builder: (context, snapshot) {
                      return ListView(
                        children: snapshot.data!.docs.map((doc) {
                          return ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: const Icon(
                              Icons.announcement,
                              color: CustomColor.red,
                            ),
                            title: SelectableText(
                              doc['message'].toString(),
                              style: const TextStyle(
                                fontFamily: 'Raleway',
                                color: Colors.grey,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          );
                        }).toList(),
                      );
                    })))
      ],
    );
  }
}
