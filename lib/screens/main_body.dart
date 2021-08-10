import 'package:flutter/material.dart';
import 'package:nazareth_presby_school_project/components/carousel.dart';
import 'package:nazareth_presby_school_project/components/footer.dart';
import 'package:nazareth_presby_school_project/components/header.dart';
import 'package:nazareth_presby_school_project/components/mobile_menu.dart';
import 'package:nazareth_presby_school_project/main.dart';
import 'package:nazareth_presby_school_project/style/colors.dart';
import 'package:provider/src/provider.dart';

class MainBody extends StatefulWidget {
  const MainBody({Key? key}) : super(key: key);

  @override
  _MainBodyState createState() => _MainBodyState();
}

final sliverbarKey = GlobalKey();

var scrollController = ScrollController();
bool _isSliverCollapsed = false;
bool _isFabVisible = false;

var _mainPageImages = [
  'images/carousel_1.jpg',
  'images/carousel_2.jpg',
  'images/carousel_3.jpg',
];

class _MainBodyState extends State<MainBody> {
  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if (scrollController.offset <= MediaQuery.of(context).size.height - 100 &&
          !scrollController.position.outOfRange) {
        setState(() {
          _isSliverCollapsed = false;
        });
      }

      if (scrollController.offset > MediaQuery.of(context).size.height - 100 &&
          !scrollController.position.outOfRange) {
        setState(() {
          _isSliverCollapsed = true;
        });
      }

      if (scrollController.offset > scrollController.position.minScrollExtent &&
          !scrollController.position.outOfRange) {
        setState(() {
          _isFabVisible = true;
        });
      }

      if (scrollController.offset <=
              scrollController.position.minScrollExtent &&
          !scrollController.position.outOfRange) {
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
      body: SizedBox(
        child: CustomScrollView(
          controller: scrollController,
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
                                    child: SelectableText(
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
                                    child: SelectableText(
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
                background: Carousel(images: _mainPageImages,),
              ),
              backgroundColor: Colors.white,
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Visibility(
                    child: const MobileMenu(),
                    visible: context.watch<ChangeBoolState>().isMenuOpen),
                context.watch<BodyWidget>().bodyWidget,
                const Footer(),
              ]),
            )
          ],
        ),
      ),
      floatingActionButton: Visibility(
        visible: _isFabVisible,
        child: FloatingActionButton(
          onPressed: () {
            scrollController.animateTo(0,
                duration: const Duration(seconds: 1), curve: Curves.linear);
          },
          child: const Icon(Icons.navigation),
          backgroundColor: CustomColor.green,
          tooltip: 'Back to top',
        ),
      ),
    );
  }
}
