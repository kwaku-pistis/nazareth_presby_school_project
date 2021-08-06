import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:nazareth_presby_school_project/style/colors.dart';

class Announcements extends StatefulWidget {
  const Announcements({Key? key}) : super(key: key);

  @override
  _AnnouncementsState createState() => _AnnouncementsState();
}

class _AnnouncementsState extends State<Announcements> {
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
            // color: CustomColor.red,
          ),
          child: const Text(
            'Announcements',
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
        ),
        const SizedBox(height: 20,),
        const SizedBox(
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(
              Icons.announcement,
              color: CustomColor.white,
            ),
            title: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
              style: TextStyle(
                fontFamily: 'Raleway',
                color: CustomColor.white,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20,),
        const SizedBox(
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(
              Icons.announcement,
              color: CustomColor.white,
            ),
            title: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
              style: TextStyle(
                fontFamily: 'Raleway',
                color: CustomColor.white,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20,),
        const SizedBox(
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(
              Icons.announcement,
              color: CustomColor.white,
            ),
            title: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
              style: TextStyle(
                fontFamily: 'Raleway',
                color: CustomColor.white,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20,),
        const SizedBox(
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(
              Icons.announcement,
              color: CustomColor.white,
            ),
            title: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
              style: TextStyle(
                fontFamily: 'Raleway',
                color: CustomColor.white,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20,),
        const SizedBox(
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(
              Icons.announcement,
              color: CustomColor.white,
            ),
            title: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
              style: TextStyle(
                fontFamily: 'Raleway',
                color: CustomColor.white,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        )
      ],
    );
  }
}
