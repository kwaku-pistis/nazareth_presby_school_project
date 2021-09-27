import 'package:flutter/material.dart';
import 'package:nazareth_presby_school_project/style/colors.dart';

class Upload extends StatefulWidget {
  const Upload({Key? key}) : super(key: key);

  @override
  _UploadState createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  @override
  Widget build(BuildContext context) {
    var _orientation = MediaQuery.of(context).orientation;

    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: MediaQuery.of(context).size.width * 0.65,
              height: 150,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/school.jpg'),
                fit: BoxFit.cover,
              )),
              child: const Center(
                child: SelectableText('UPLOAD SCREEN',
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold,
                        color: CustomColor.white)),
              )),
          _orientation == Orientation.landscape
              ? desktopView(context)
              : mobileView(context),
        ],
      ),
    );
  }

  desktopView(BuildContext context) {
    return const Center(child: Text("UPLOAD"));
  }

  mobileView(BuildContext context) {}
}
