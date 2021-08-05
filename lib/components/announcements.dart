import 'package:flutter/material.dart';
import 'package:nazareth_presby_school_project/style/colors.dart';

class Announcements extends StatefulWidget {
  const Announcements({ Key? key }) : super(key: key);

  @override
  _AnnouncementsState createState() => _AnnouncementsState();
}

class _AnnouncementsState extends State<Announcements> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 2.0,
            color: CustomColor.red,
          ),
        ),
        // color: CustomColor.red,
      ),
      child: const Text(
        'Announcements',
        textAlign: TextAlign.left,
      ),
    );
  }
}