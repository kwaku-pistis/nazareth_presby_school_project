import 'package:flutter/material.dart';
import 'package:nazareth_presby_school_project/components/about_project.dart';
import 'package:nazareth_presby_school_project/components/carousel.dart';
import 'package:nazareth_presby_school_project/components/church_info.dart';
import 'package:nazareth_presby_school_project/components/contact_us.dart';
import 'package:nazareth_presby_school_project/components/header.dart';
import 'package:nazareth_presby_school_project/components/mobile_menu.dart';
import 'package:nazareth_presby_school_project/style/colors.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

bool isVisible = true;
var _controller = ScrollController();
bool _isSliverCollapsed = false;

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
    });
  }

  @override
  Widget build(BuildContext context) {
    var _landscape = MediaQuery.of(context).orientation;

    return CustomScrollView(
      controller: _controller,
      slivers: [
        SliverAppBar(
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
                            children: [
                              Image(
                                image: AssetImage('assets/images/pcg_logo.png'),
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
                            children: [
                              Image(
                                image: AssetImage('assets/images/pcg_logo.png'),
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
          // bottom: const PreferredSize(
          //   preferredSize: Size.fromHeight(100),
          //   child: MobileMenu(),
          // ),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            Visibility(
              child: const MobileMenu(),
              visible: isMenuOpened,
            ),
            const AboutProject(),
            const ChurchInfo(),
            const ContactUs(),
          ]),
        )
      ],
    );
  }
}
