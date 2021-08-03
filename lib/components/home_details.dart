import 'package:flutter/material.dart';
import 'package:nazareth_presby_school_project/style/colors.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class HomeDetails extends StatefulWidget {
  const HomeDetails({ Key? key }) : super(key: key);

  @override
  _HomeDetailsState createState() => _HomeDetailsState();
}

String bodyText =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet nisl suscipit adipiscing bibendum est ultricies integer quis auctor. Sem integer vitae justo eget magna. Vel orci porta non pulvinar neque laoreet suspendisse. Facilisis gravida neque convallis a cras semper auctor neque. Duis convallis convallis tellus id interdum velit laoreet id. Egestas pretium aenean pharetra magna ac placerat vestibulum lectus mauris. Orci nulla pellentesque dignissim enim sit. Quis lectus nulla at volutpat diam ut venenatis tellus in. Etiam tempor orci eu lobortis elementum nibh tellus molestie nunc. Scelerisque fermentum dui faucibus in ornare quam viverra orci. Magna eget est lorem ipsum dolor sit amet consectetur. Vestibulum lorem sed risus ultricies tristique nulla aliquet enim. Tortor at risus viverra adipiscing at in tellus integer. Enim nulla aliquet porttitor lacus luctus accumsan tortor posuere. Congue mauris rhoncus aenean vel.\n\nConsequat id porta nibh venenatis cras sed. Velit egestas dui id ornare arcu odio. Ullamcorper a lacus vestibulum sed arcu. Pellentesque sit amet porttitor eget dolor. Ut eu sem integer vitae justo eget. Eu ultrices vitae auctor eu augue ut lectus. Nisl vel pretium lectus quam id. Leo in vitae turpis massa sed elementum tempus egestas. Est ultricies integer quis auctor elit sed. Neque laoreet suspendisse interdum consectetur.\n\nEt malesuada fames ac turpis egestas. Condimentum mattis pellentesque id nibh tortor id aliquet lectus. Risus in hendrerit gravida rutrum quisque. Enim sit amet venenatis urna cursus eget nunc. Accumsan in nisl nisi scelerisque eu. Quis eleifend quam adipiscing vitae proin sagittis. Faucibus turpis in eu mi bibendum neque. Vulputate enim nulla aliquet porttitor lacus luctus accumsan tortor posuere. Rhoncus urna neque viverra justo nec ultrices dui sapien. Mollis aliquam ut porttitor leo a diam sollicitudin.\n\nEtiam tempor orci eu lobortis. Amet consectetur adipiscing elit duis tristique sollicitudin. Ultrices tincidunt arcu non sodales neque sodales ut etiam sit. Egestas quis ipsum suspendisse ultrices gravida dictum. Tortor posuere ac ut consequat. Aliquet bibendum enim facilisis gravida. Felis eget nunc lobortis mattis aliquam faucibus purus in. Ornare arcu odio ut sem nulla pharetra. Egestas erat imperdiet sed euismod nisi. Auctor elit sed vulputate mi sit amet mauris commodo. Arcu bibendum at varius vel. Scelerisque eleifend donec pretium vulputate sapien. Massa id neque aliquam vestibulum morbi blandit.';

final PageController controller = PageController();
final homeDetailsKey = GlobalKey();

class _HomeDetailsState extends State<HomeDetails> {
  var galleryItems = [
    'images/carousel_1.jpg',
    'images/carousel_2.jpg',
    'images/carousel_3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      key: homeDetailsKey,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            margin: const EdgeInsets.only(top: 30,),
            alignment: Alignment.centerLeft,
            // decoration: const BoxDecoration(
            //   color: CustomColor.blue,
            // ),
            child: const Text(
              'ABOUT THE CONGREGATION',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: CustomColor.red,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            margin: const EdgeInsets.fromLTRB(50, 30, 50, 20),
            child: Text(
              bodyText,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const SizedBox(
            child: Text(
              'GALLERY',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: CustomColor.red,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.width * 0.4,
            margin: const EdgeInsets.all(10),
              child: PhotoViewGallery.builder(
            scrollPhysics: const BouncingScrollPhysics(),
            builder: (BuildContext context, int index) {
              return PhotoViewGalleryPageOptions(
                imageProvider: AssetImage(galleryItems[index]),
                initialScale: PhotoViewComputedScale.contained,
                heroAttributes: PhotoViewHeroAttributes(tag: index++),
              );
            },
            itemCount: galleryItems.length,
            loadingBuilder: (context, event) => Center(
              child: SizedBox(
                width: 20.0,
                height: 20.0,
                child: CircularProgressIndicator(
                  value: event == null
                      ? 0
                      : event.cumulativeBytesLoaded / event.expectedTotalBytes!,
                ),
              ),
            ),
            backgroundDecoration: const BoxDecoration(
              color: Colors.grey,
            ),
            pageController: controller,
            onPageChanged: null,
          )),
          const SizedBox(height: 30,)
        ],
      ),
    );
  }
}