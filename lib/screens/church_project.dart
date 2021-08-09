import 'package:flutter/material.dart';
import 'package:nazareth_presby_school_project/components/carousel.dart';
import 'package:nazareth_presby_school_project/style/colors.dart';

class ChurchProject extends StatefulWidget {
  const ChurchProject({ Key? key }) : super(key: key);

  @override
  _ChurchProjectState createState() => _ChurchProjectState();
}

String bodyText =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet nisl suscipit adipiscing bibendum est ultricies integer quis auctor. Sem integer vitae justo eget magna. Vel orci porta non pulvinar neque laoreet suspendisse. Facilisis gravida neque convallis a cras semper auctor neque. Duis convallis convallis tellus id interdum velit laoreet id. Egestas pretium aenean pharetra magna ac placerat vestibulum lectus mauris. Orci nulla pellentesque dignissim enim sit. Quis lectus nulla at volutpat diam ut venenatis tellus in. Etiam tempor orci eu lobortis elementum nibh tellus molestie nunc. Scelerisque fermentum dui faucibus in ornare quam viverra orci. Magna eget est lorem ipsum dolor sit amet consectetur. Vestibulum lorem sed risus ultricies tristique nulla aliquet enim. Tortor at risus viverra adipiscing at in tellus integer. Enim nulla aliquet porttitor lacus luctus accumsan tortor posuere. Congue mauris rhoncus aenean vel.';

final churchProjectKey = GlobalKey();

class _ChurchProjectState extends State<ChurchProject> {
  var images = [
    'images/carousel_1.jpg',
    'images/carousel_2.jpg',
    'images/carousel_3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: churchProjectKey,
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
              image: AssetImage('assets/images/church_dark.jpg'),
              fit: BoxFit.cover,
            )),
            child: const Center(
              child: Text(
                'CHURCH BUILDING PROJECT',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold,
                  color: CustomColor.white
                )
              ),
            )
          ),
          Center(
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
                        child: const Text(
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
                    child: Text(
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
                        child: const Text(
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
                    child: const Carousel(),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text(
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
                        child: const Text(
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
                    child: const Text(
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
                    child: const Carousel(),
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
                    child: const Text(
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
                    child: const Carousel(),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}