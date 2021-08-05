import 'package:flutter/material.dart';
import 'package:nazareth_presby_school_project/components/carousel.dart';
import 'package:nazareth_presby_school_project/components/header.dart';
import 'package:nazareth_presby_school_project/screens/home_details.dart';
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
// GlobalKey<AboutProject> aboutProjectKey = GlobalKey();

var _scrollController = ScrollController();
// var scrollController =
//     Provider.of(context).watch<CustomScrollController>().customScrollController;
bool _isSliverCollapsed = false;
bool _isFabVisible = false;

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      if (_scrollController.offset <= MediaQuery.of(context).size.height - 100 &&
          !_scrollController.position.outOfRange) {
        setState(() {
          _isSliverCollapsed = false;
        });
      }

      if (_scrollController.offset > MediaQuery.of(context).size.height - 100 &&
          !_scrollController.position.outOfRange) {
        setState(() {
          _isSliverCollapsed = true;
        });
      }

      if (_scrollController.offset > _scrollController.position.minScrollExtent &&
          !_scrollController.position.outOfRange) {
        setState(() {
          _isFabVisible = true;
        });
      }

      if (_scrollController.offset <=
              _scrollController.position.minScrollExtent &&
          !_scrollController.position.outOfRange) {
        setState(() {
          _isFabVisible = false;
        });
      }
    });

    // scrollController =
    //     context.read<CustomScrollController>().customScrollController;
  }

  @override
  Widget build(BuildContext context) {
    var _landscape = MediaQuery.of(context).orientation;

    return Scaffold(
      body: NotificationListener(
        child: CustomScrollView(
          controller: _scrollController,
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
              ]),
            )
          ],
        ),
        onNotification: (ScrollNotification notification) {
          // var position = notification.metrics.pixels;
          // print(notification.depth);
          return false;
        },
      ),
      floatingActionButton: Visibility(
        // visible: context.watch<ChangeBoolState>().isFabVisible,
        visible: _isFabVisible,
        child: FloatingActionButton(
          onPressed: () {
            _scrollController.animateTo(0,
                duration: const Duration(seconds: 1), curve: Curves.linear);
          },
          child: const Icon(Icons.navigation),
          backgroundColor: CustomColor.red,
          tooltip: 'Back to top',
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }
}

void scrollToKey(GlobalKey key) {
  _scrollController.position
      .ensureVisible(key.currentContext!.findRenderObject()!);
  // Scrollable.ensureVisible(key.currentContext!);
}
