import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nazareth_presby_school_project/style/colors.dart';

class AboutProject extends StatefulWidget {
  const AboutProject({Key? key}) : super(key: key);

  @override
  _AboutProjectState createState() => _AboutProjectState();
}

String bodyText = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet nisl suscipit adipiscing bibendum est ultricies integer quis auctor. Sem integer vitae justo eget magna. Vel orci porta non pulvinar neque laoreet suspendisse. Facilisis gravida neque convallis a cras semper auctor neque. Duis convallis convallis tellus id interdum velit laoreet id. Egestas pretium aenean pharetra magna ac placerat vestibulum lectus mauris. Orci nulla pellentesque dignissim enim sit. Quis lectus nulla at volutpat diam ut venenatis tellus in. Etiam tempor orci eu lobortis elementum nibh tellus molestie nunc. Scelerisque fermentum dui faucibus in ornare quam viverra orci. Magna eget est lorem ipsum dolor sit amet consectetur. Vestibulum lorem sed risus ultricies tristique nulla aliquet enim. Tortor at risus viverra adipiscing at in tellus integer. Enim nulla aliquet porttitor lacus luctus accumsan tortor posuere. Congue mauris rhoncus aenean vel.\n\nConsequat id porta nibh venenatis cras sed. Velit egestas dui id ornare arcu odio. Ullamcorper a lacus vestibulum sed arcu. Pellentesque sit amet porttitor eget dolor. Ut eu sem integer vitae justo eget. Eu ultrices vitae auctor eu augue ut lectus. Nisl vel pretium lectus quam id. Leo in vitae turpis massa sed elementum tempus egestas. Est ultricies integer quis auctor elit sed. Neque laoreet suspendisse interdum consectetur.\n\nEt malesuada fames ac turpis egestas. Condimentum mattis pellentesque id nibh tortor id aliquet lectus. Risus in hendrerit gravida rutrum quisque. Enim sit amet venenatis urna cursus eget nunc. Accumsan in nisl nisi scelerisque eu. Quis eleifend quam adipiscing vitae proin sagittis. Faucibus turpis in eu mi bibendum neque. Vulputate enim nulla aliquet porttitor lacus luctus accumsan tortor posuere. Rhoncus urna neque viverra justo nec ultrices dui sapien. Mollis aliquam ut porttitor leo a diam sollicitudin.\n\nEtiam tempor orci eu lobortis. Amet consectetur adipiscing elit duis tristique sollicitudin. Ultrices tincidunt arcu non sodales neque sodales ut etiam sit. Egestas quis ipsum suspendisse ultrices gravida dictum. Tortor posuere ac ut consequat. Aliquet bibendum enim facilisis gravida. Felis eget nunc lobortis mattis aliquam faucibus purus in. Ornare arcu odio ut sem nulla pharetra. Egestas erat imperdiet sed euismod nisi. Auctor elit sed vulputate mi sit amet mauris commodo. Arcu bibendum at varius vel. Scelerisque eleifend donec pretium vulputate sapien. Massa id neque aliquam vestibulum morbi blandit.';

final aboutProjectKey = GlobalKey();

class _AboutProjectState extends State<AboutProject> {
  var images = [
    'images/carousel_1.jpg',
    'images/carousel_2.jpg',
    'images/carousel_3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      key: aboutProjectKey,
      width: MediaQuery.of(context).size.width,
      color: CustomColor.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            margin: const EdgeInsets.only(top: 30),
            child: Text(
              'SCHOOL PROJECT',
              style: Theme.of(context).textTheme.caption,
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            margin: const EdgeInsets.only(top: 30),
            child: Text(
              bodyText,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
          const SizedBox(height: 30,),
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            margin: const EdgeInsets.only(bottom: 10),
            child: CarouselSlider(
              options: CarouselOptions(
                height: 400.0,
                aspectRatio: 16/9,
                viewportFraction: 1,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 6),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: false,
                // onPageChanged: callbackFunction,
                scrollDirection: Axis.horizontal,
              ),
              items: images.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Image.asset(i, fit: BoxFit.cover,),
                    );
                  },
                );
              }).toList(),
            ),
          ),
          Text(
            'School Plan',
            style: Theme.of(context).textTheme.headline3,
          ),
          const SizedBox(height: 30,),
        ],
      ),
    );
  }

}
