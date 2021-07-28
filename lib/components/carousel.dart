import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var images = [
      'images/church.jpg',
      'images/carousel_1.jpg',
      'images/carousel_2.jpg',
      'images/carousel_3.jpg',
    ];

    return SizedBox(
      child: CarouselSlider(
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height,
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
                margin: const EdgeInsets.symmetric(horizontal: 0.0),
                child: Image.asset(i, fit: BoxFit.cover,),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
