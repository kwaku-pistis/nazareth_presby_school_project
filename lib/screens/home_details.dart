import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nazareth_presby_school_project/components/announcements.dart';
import 'package:nazareth_presby_school_project/components/carousel.dart';
import 'package:nazareth_presby_school_project/components/daily_verses.dart';
import 'package:nazareth_presby_school_project/components/header.dart';
import 'package:nazareth_presby_school_project/main.dart';
import 'package:nazareth_presby_school_project/screens/church_project.dart';
import 'package:nazareth_presby_school_project/screens/school_project.dart';
import 'package:nazareth_presby_school_project/screens/washroom_project.dart';
import 'package:nazareth_presby_school_project/style/colors.dart';
import 'package:provider/src/provider.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class HomeDetails extends StatefulWidget {
  const HomeDetails({Key? key}) : super(key: key);

  @override
  _HomeDetailsState createState() => _HomeDetailsState();
}

String bodyText =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet nisl suscipit adipiscing bibendum est ultricies integer quis auctor. Sem integer vitae justo eget magna. Vel orci porta non pulvinar neque laoreet suspendisse. Facilisis gravida neque convallis a cras semper auctor neque. Duis convallis convallis tellus id interdum velit laoreet id. Egestas pretium aenean pharetra magna ac placerat vestibulum lectus mauris. Orci nulla pellentesque dignissim enim sit.';

final PageController controller = PageController();
final homeDetailsKey = GlobalKey();

final YoutubePlayerController _controller = YoutubePlayerController(
  initialVideoId: '0Qy_PDrfZaI',
  params: const YoutubePlayerParams(
    playlist: ['Lnqn5-AXCi8', 'Y1JX_INLVTo'], // Defining custom playlist
    startAt: Duration(seconds: 0),
    showControls: true,
    showFullscreenButton: true,
  ),
);

class _HomeDetailsState extends State<HomeDetails> {
  final _schoolImages = [
    'assets/images/school/plan1.jpeg',
    'assets/images/school/plan2.jpeg',
    'assets/images/school/plan4.jpeg',
  ];

  final _churchImages = [
    'assets/images/carousel_1.jpg',
    'assets/images/carousel_2.jpg',
    'assets/images/carousel_3.jpg',
  ];

  final _washroomImages = [
    'assets/images/toilet/t9.jpeg',
    'assets/images/toilet/t2.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    var _orientation = MediaQuery.of(context).orientation;

    return _orientation == Orientation.landscape
        ? desktopView(context)
        : mobileView(context);
  }

  // desktop view
  desktopView(BuildContext context) {
    return Center(
      child: SizedBox(
          key: homeDetailsKey,
          width: MediaQuery.of(context).size.width * 0.875,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.55,
                    margin: const EdgeInsets.only(right: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            // width: MediaQuery.of(context).size.width * 0.875,
                            margin: const EdgeInsets.only(
                              top: 30,
                            ),
                            alignment: Alignment.centerLeft,
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                color: CustomColor.red,
                              ),
                              child: const SelectableText(
                                'CURRENT PROJECTS',
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
                          margin: const EdgeInsets.fromLTRB(0, 16, 0, 20),
                          child: SelectableText(
                            bodyText,
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(bottom: 5),
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                width: 2.0,
                                color: CustomColor.red,
                              ),
                            ),
                          ),
                          child: SelectableText(
                            'School Building Project',
                            style: const TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: CustomColor.blue),
                            showCursor: false,
                            onTap: () {
                              // context
                              //     .read<BodyWidget>()
                              //     .setBodyWidget(const SchoolProject());
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        SizedBox(
                            child: SelectableText.rich(
                          TextSpan(
                              text:
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet nisl suscipit adipiscing bibendum est ultricies integer quis auctor... ',
                              style: Theme.of(context).textTheme.bodyText1,
                              children: [
                                TextSpan(
                                    text: 'Read More',
                                    style:
                                        Theme.of(context).textTheme.headline3,
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        counter++;
                                        context
                                            .read<ChangeBoolState>()
                                            .setActiveMenu('PROJECTS');
                                        context
                                            .read<BodyWidget>()
                                            .setBodyWidget(
                                                const SchoolProject());
                                      })
                              ]),
                        )),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.55,
                            height: 400.0,
                            margin: const EdgeInsets.only(top: 16, bottom: 16),
                            child: Carousel(
                              images: _schoolImages,
                            )),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          padding: const EdgeInsets.only(bottom: 5),
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                width: 2.0,
                                color: CustomColor.red,
                              ),
                            ),
                          ),
                          child: const SelectableText(
                            'Washroom Project',
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: CustomColor.blue),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        SizedBox(
                            child: SelectableText.rich(
                          TextSpan(
                              text:
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet nisl suscipit adipiscing bibendum est ultricies integer quis auctor... ',
                              style: Theme.of(context).textTheme.bodyText1,
                              children: [
                                TextSpan(
                                    text: 'Read More',
                                    style:
                                        Theme.of(context).textTheme.headline3,
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        counter++;
                                        context
                                            .read<ChangeBoolState>()
                                            .setActiveMenu('PROJECTS');
                                        context
                                            .read<BodyWidget>()
                                            .setBodyWidget(
                                                const WashroomProject());
                                      })
                              ]),
                        )),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.55,
                            height: 400.0,
                            margin: const EdgeInsets.only(top: 16, bottom: 16),
                            child: Carousel(
                              images: _washroomImages,
                            )),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          padding: const EdgeInsets.only(bottom: 5),
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                width: 2.0,
                                color: CustomColor.red,
                              ),
                            ),
                          ),
                          child: const SelectableText(
                            'Church Building Project',
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: CustomColor.blue),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        SizedBox(
                            child: SelectableText.rich(
                          TextSpan(
                              text:
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet nisl suscipit adipiscing bibendum est ultricies integer quis auctor... ',
                              style: Theme.of(context).textTheme.bodyText1,
                              children: [
                                TextSpan(
                                    text: 'Read More',
                                    style:
                                        Theme.of(context).textTheme.headline3,
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        counter++;
                                        context
                                            .read<ChangeBoolState>()
                                            .setActiveMenu('PROJECTS');
                                        context
                                            .read<BodyWidget>()
                                            .setBodyWidget(
                                                const ChurchProject());
                                      })
                              ]),
                        )),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.55,
                            height: 400.0,
                            margin: const EdgeInsets.only(top: 16),
                            child: Carousel(
                              images: _churchImages,
                            )),
                        const SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                      child: Container(
                          width: MediaQuery.of(context).size.width * 0.35,
                          margin: const EdgeInsets.only(top: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.35,
                                height: MediaQuery.of(context).size.height,
                                margin: const EdgeInsets.only(bottom: 30),
                                child: Card(
                                  child: Container(
                                    padding: const EdgeInsets.all(16),
                                    color: CustomColor.white,
                                    child: const Announcements(),
                                  ),
                                  elevation: 10,
                                  shadowColor: Colors.black38,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.35,
                                height:
                                    MediaQuery.of(context).size.height * 0.3,
                                child: Card(
                                  child: Container(
                                      padding: const EdgeInsets.all(16),
                                      color: CustomColor.white,
                                      child: const DailyVerse()),
                                  elevation: 10,
                                  shadowColor: Colors.black38,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )))
                ],
              ),
              Container(
                  margin: const EdgeInsets.only(top: 20),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 20),
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: CustomColor.red,
                        ),
                        child: const SelectableText(
                          'VIDEO PODCASTS',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                        child: AnimatedTextKit(
                          animatedTexts: [
                            RotateAnimatedText('Listen and be blessed!',
                                textStyle:
                                    Theme.of(context).textTheme.headline4,
                                rotateOut: true,
                                duration: const Duration(seconds: 3)),
                            RotateAnimatedText(
                                'Messages from Rev. Godfried Emmanuel Quagraine',
                                textStyle:
                                    Theme.of(context).textTheme.headline4,
                                rotateOut: true,
                                duration: const Duration(seconds: 3)),
                          ],
                          repeatForever: true,
                        ),
                      ),
                    ],
                  )),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.875,
                height: 400.0,
                child: YoutubePlayerIFrame(
                  controller: _controller,
                  aspectRatio: 16 / 9,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          )),
    );
  }

  // mobile view
  mobileView(BuildContext context) {
    return Center(
        child: SizedBox(
      key: homeDetailsKey,
      width: MediaQuery.of(context).size.width * 0.8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: const EdgeInsets.only(
                top: 30,
              ),
              alignment: Alignment.centerLeft,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: CustomColor.red,
                ),
                child: const SelectableText(
                  'CURRENT PROJECTS',
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
            margin: const EdgeInsets.fromLTRB(0, 16, 0, 20),
            child: SelectableText(
              bodyText,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 5),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 2.0,
                  color: CustomColor.red,
                ),
              ),
            ),
            child: SelectableText(
              'School Building Project',
              style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.blue),
              showCursor: false,
              onTap: () {
                // context
                //     .read<BodyWidget>()
                //     .setBodyWidget(const SchoolProject());
              },
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          SizedBox(
              child: SelectableText.rich(
            TextSpan(
                text:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet nisl suscipit adipiscing bibendum est ultricies integer quis auctor... ',
                style: Theme.of(context).textTheme.bodyText1,
                children: [
                  TextSpan(
                      text: 'Read More',
                      style: Theme.of(context).textTheme.headline3,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          counter++;
                          context
                              .read<ChangeBoolState>()
                              .setActiveMenu('PROJECTS');
                          context
                              .read<BodyWidget>()
                              .setBodyWidget(const SchoolProject());
                        })
                ]),
          )),
          Container(
              width: MediaQuery.of(context).size.width,
              height: 300.0,
              margin: const EdgeInsets.only(top: 16, bottom: 16),
              child: Carousel(
                images: _schoolImages,
              )),
          const SizedBox(
            height: 16,
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 5),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 2.0,
                  color: CustomColor.red,
                ),
              ),
            ),
            child: const SelectableText(
              'Washroom Project',
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.blue),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          SizedBox(
              child: SelectableText.rich(
            TextSpan(
                text:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet nisl suscipit adipiscing bibendum est ultricies integer quis auctor... ',
                style: Theme.of(context).textTheme.bodyText1,
                children: [
                  TextSpan(
                      text: 'Read More',
                      style: Theme.of(context).textTheme.headline3,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          counter++;
                          context
                              .read<ChangeBoolState>()
                              .setActiveMenu('PROJECTS');
                          context
                              .read<BodyWidget>()
                              .setBodyWidget(const WashroomProject());
                        })
                ]),
          )),
          Container(
              width: MediaQuery.of(context).size.width,
              height: 300.0,
              margin: const EdgeInsets.only(top: 16, bottom: 16),
              child: Carousel(
                images: _washroomImages,
              )),
          const SizedBox(
            height: 16,
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 5),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 2.0,
                  color: CustomColor.red,
                ),
              ),
            ),
            child: const SelectableText(
              'Church Building Project',
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.blue),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          SizedBox(
              child: SelectableText.rich(
            TextSpan(
                text:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet nisl suscipit adipiscing bibendum est ultricies integer quis auctor... ',
                style: Theme.of(context).textTheme.bodyText1,
                children: [
                  TextSpan(
                      text: 'Read More',
                      style: Theme.of(context).textTheme.headline3,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          counter++;
                          context
                              .read<ChangeBoolState>()
                              .setActiveMenu('PROJECTS');
                          context
                              .read<BodyWidget>()
                              .setBodyWidget(const ChurchProject());
                        })
                ]),
          )),
          Container(
              width: MediaQuery.of(context).size.width,
              height: 300.0,
              margin: const EdgeInsets.only(top: 16),
              child: Carousel(
                images: _churchImages,
              )),
          Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(top: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.7,
                    margin: const EdgeInsets.only(bottom: 30),
                    child: Card(
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        color: CustomColor.white,
                        child: const Announcements(),
                      ),
                      elevation: 10,
                      shadowColor: Colors.black38,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Card(
                      child: Container(
                          padding: const EdgeInsets.all(16),
                          color: CustomColor.white,
                          child: const DailyVerse()),
                      elevation: 10,
                      shadowColor: Colors.black38,
                      color: Colors.white,
                    ),
                  )
                ],
              )),
          const SizedBox(
            height: 10,
          ),
          Container(
              margin: const EdgeInsets.only(top: 20),
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: CustomColor.red,
                    ),
                    child: const SelectableText(
                      'VIDEO PODCASTS',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 30.0,
                      child: AnimatedTextKit(
                        animatedTexts: [
                          RotateAnimatedText('Listen and be blessed!',
                              textStyle: Theme.of(context).textTheme.headline4,
                              rotateOut: true,
                              textAlign: TextAlign.left,
                              duration: const Duration(seconds: 3)),
                          RotateAnimatedText(
                              'Messages from Rev. Godfried Emmanuel Quagraine',
                              textStyle: Theme.of(context).textTheme.headline4,
                              rotateOut: true,
                              textAlign: TextAlign.left,
                              duration: const Duration(seconds: 3)),
                        ],
                        repeatForever: true,
                      ),
                    ),
                  )
                ],
              )),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 300.0,
            child: YoutubePlayerIFrame(
              controller: _controller,
              aspectRatio: 16 / 9,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    ));
  }
}
