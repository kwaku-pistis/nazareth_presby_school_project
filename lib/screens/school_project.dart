import 'package:flutter/material.dart';
import 'package:nazareth_presby_school_project/components/carousel.dart';
import 'package:nazareth_presby_school_project/style/colors.dart';

class SchoolProject extends StatefulWidget {
  const SchoolProject({Key? key}) : super(key: key);

  @override
  _SchoolProjectState createState() => _SchoolProjectState();
}

String bodyText =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet nisl suscipit adipiscing bibendum est ultricies integer quis auctor. Sem integer vitae justo eget magna. Vel orci porta non pulvinar neque laoreet suspendisse. Facilisis gravida neque convallis a cras semper auctor neque. Duis convallis convallis tellus id interdum velit laoreet id. Egestas pretium aenean pharetra magna ac placerat vestibulum lectus mauris. Orci nulla pellentesque dignissim enim sit. Quis lectus nulla at volutpat diam ut venenatis tellus in. Etiam tempor orci eu lobortis elementum nibh tellus molestie nunc. Scelerisque fermentum dui faucibus in ornare quam viverra orci. Magna eget est lorem ipsum dolor sit amet consectetur. Vestibulum lorem sed risus ultricies tristique nulla aliquet enim. Tortor at risus viverra adipiscing at in tellus integer. Enim nulla aliquet porttitor lacus luctus accumsan tortor posuere. Congue mauris rhoncus aenean vel.';

final schoolProjectKey = GlobalKey();

class _SchoolProjectState extends State<SchoolProject> {
  final _schoolPlan = [
    'assets/images/school/plan1.jpeg',
    'assets/images/school/plan2.jpeg',
    'assets/images/school/plan4.jpeg',
  ];

  final _schoolBefore = [
    'assets/images/school/s1.jpeg',
    'assets/images/school/s4.jpeg',
    'assets/images/school/s5.jpeg',
    'assets/images/school/s6.jpeg',
    'assets/images/school/s8.jpeg',
    'assets/images/school/s9.jpeg',
    'assets/images/school/s11.jpeg',
    'assets/images/school/s12.jpeg',
    'assets/images/school/s13.jpeg',
    'assets/images/school/s17.jpeg',
    'assets/images/school/s18.jpeg',
    'assets/images/school/s22.jpeg',
  ];

  final _schoolOngoing = [
    'assets/images/school/s2.jpeg',
    'assets/images/school/s3.jpeg',
    'assets/images/school/s24.jpeg',
    'assets/images/school/s25.jpeg',
    'assets/images/school/s26.jpeg',
    'assets/images/school/s27.jpeg',
    'assets/images/school/s28.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    var _orientation = MediaQuery.of(context).orientation;

    return SizedBox(
      key: schoolProjectKey,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/school.jpg'),
                fit: BoxFit.cover,
              )),
              child: const Center(
                child: SelectableText('SCHOOL BUILDING PROJECT',
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
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.6,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: const EdgeInsets.only(top: 30),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: CustomColor.red,
                  ),
                  child: const SelectableText(
                    'ABOUT PROJECT',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                )),
            Container(
              // width: MediaQuery.of(context).size.width * 0.5,
              margin: const EdgeInsets.only(top: 30),
              child: SelectableText(
                bodyText,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
                margin: const EdgeInsets.only(bottom: 30),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: CustomColor.red,
                  ),
                  child: const SelectableText(
                    'BUILDING PLAN',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                )),
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              height: 400.0,
              margin: const EdgeInsets.only(bottom: 10),
              child: Carousel(
                images: _schoolPlan,
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              child: SelectableText(
                'Designed by: Mr. Hello World',
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: CustomColor.red,
                  ),
                  child: const SelectableText(
                    'GALLERY',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                )),
            Container(
              padding: const EdgeInsets.only(bottom: 5),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: CustomColor.red,
                          width: 2,
                          style: BorderStyle.solid))),
              child: const SelectableText(
                'Before',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 16.0,
                  color: CustomColor.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              height: 400.0,
              margin: const EdgeInsets.only(bottom: 20),
              child: Carousel(
                images: _schoolBefore,
              ),
            ),
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
                'On-going',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 16.0,
                  color: CustomColor.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              height: 400.0,
              margin: const EdgeInsets.only(bottom: 10),
              child: Carousel(
                images: _schoolOngoing,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }

  mobileView(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.875,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: const EdgeInsets.only(top: 30),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: CustomColor.red,
                  ),
                  child: const SelectableText(
                    'ABOUT PROJECT',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                )),
            Container(
              // width: MediaQuery.of(context).size.width * 0.5,
              margin: const EdgeInsets.only(top: 30),
              child: SelectableText(
                bodyText,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
                margin: const EdgeInsets.only(bottom: 30),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: CustomColor.red,
                  ),
                  child: const SelectableText(
                    'BUILDING PLAN',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                )),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300.0,
              margin: const EdgeInsets.only(bottom: 10),
              child: Carousel(
                images: _schoolPlan,
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              child: SelectableText(
                'Designed by: Mr. Hello World',
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: CustomColor.red,
                  ),
                  child: const SelectableText(
                    'GALLERY',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                )),
            Container(
              padding: const EdgeInsets.only(bottom: 5),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: CustomColor.red,
                          width: 2,
                          style: BorderStyle.solid))),
              child: const SelectableText(
                'Before',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 16.0,
                  color: CustomColor.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300.0,
              margin: const EdgeInsets.only(bottom: 20),
              child: Carousel(
                images: _schoolBefore,
              ),
            ),
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
                'On-going',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 16.0,
                  color: CustomColor.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300.0,
              margin: const EdgeInsets.only(bottom: 10),
              child: Carousel(
                images: _schoolOngoing,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
