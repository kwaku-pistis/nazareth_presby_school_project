import 'package:flutter/material.dart';
import 'package:nazareth_presby_school_project/components/about_project.dart';
import 'package:nazareth_presby_school_project/components/carousel.dart';
import 'package:nazareth_presby_school_project/components/church_info.dart';
import 'package:nazareth_presby_school_project/components/contact_us.dart';
import 'package:nazareth_presby_school_project/components/header.dart';
import 'package:nazareth_presby_school_project/components/home_details.dart';
import 'package:nazareth_presby_school_project/components/mobile_menu.dart';
import 'package:nazareth_presby_school_project/main.dart';
import 'package:nazareth_presby_school_project/style/colors.dart';
import 'package:provider/src/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

final sliverbarKey = GlobalKey();

var _controller = ScrollController();
bool _isSliverCollapsed = false;
bool _isFabVisible = false;

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();

    _controller.addListener(() {
      if (_controller.offset <= MediaQuery.of(context).size.height - 100 &&
          !_controller.position.outOfRange) {
        setState(() {
          _isSliverCollapsed = false;
        });
      }

      if (_controller.offset > MediaQuery.of(context).size.height - 100 &&
          !_controller.position.outOfRange) {
        setState(() {
          _isSliverCollapsed = true;
        });
      }

      if (_controller.offset > _controller.position.minScrollExtent &&
          !_controller.position.outOfRange) {
        setState(() {
          _isFabVisible = true;
        });
      }

      if (_controller.offset <= _controller.position.minScrollExtent &&
          !_controller.position.outOfRange) {
        setState(() {
          _isFabVisible = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var _landscape = MediaQuery.of(context).orientation;

    return Scaffold(
      body: NotificationListener(
        child: CustomScrollView(
          controller: _controller,
          slivers: [
            SliverAppBar(
              key: sliverbarKey,
              pinned: true,
              expandedHeight: MediaQuery.of(context).size.height,
              collapsedHeight: 100.0,
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: const EdgeInsets.all(16),
                title: _isSliverCollapsed
                    ? const Header()
                    : SizedBox(
                        child: _landscape == Orientation.landscape
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Image(
                                    image: AssetImage(
                                        'assets/images/pcg_logo.png'),
                                    width: 70,
                                    height: 70,
                                  ),
                                  SizedBox(
                                    child: Text(
                                      'PRESBYTERIAN CHURCH OF GHANA\nNAZARETH CONGREGATION\nADJEI KOJO',
                                      style: TextStyle(
                                        // fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            : Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Image(
                                    image: AssetImage(
                                        'assets/images/pcg_logo.png'),
                                    width: 50,
                                    height: 50,
                                  ),
                                  SizedBox(
                                    child: Text(
                                      'PRESBYTERIAN CHURCH OF GHANA\nNAZARETH CONGREGATION\nADJEI KOJO',
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                background: const Carousel(),
              ),
              backgroundColor: Colors.white,
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Visibility(
                    child: const MobileMenu(),
                    visible: context.watch<ChangeBoolState>().isMenuOpen),
                const HomeDetails(),
                const AboutProject(),
                const ChurchInfo(),
                const ContactUs(),
              ]),
            )
          ],
          
        ),
        onNotification: (ScrollNotification notification) {
          // var position = notification.metrics.pixels;

          // // print("Hello there: $position");
          // if (position > MediaQuery.of(context).size.height) {
          //   setState(() {
          //     _isFabVisible = true;
          //   });
          // } else {
          //   setState(() {
          //     _isFabVisible = false;
          //   });
          // }
          return false;
        },
      ),
      floatingActionButton: Visibility(
        // visible: context.watch<ChangeBoolState>().isFabVisible,
        visible: _isFabVisible,
        child: FloatingActionButton(
          onPressed: () {
            _controller.animateTo(
              0, 
              duration: const Duration(seconds: 1), 
              curve: Curves.easeIn
            );
          },
          child: const Icon(Icons.navigation),
          backgroundColor: CustomColor.red,
          tooltip: 'Back to top',
        ),
      ),
    );
  }
}
