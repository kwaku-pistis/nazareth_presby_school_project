import 'package:flutter/material.dart';
import 'package:nazareth_presby_school_project/style/colors.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.black87,
        padding: const EdgeInsets.only(top: 70, bottom: 70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.875,
                margin: const EdgeInsets.only(left: 0, right: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Image(
                                image: AssetImage('assets/images/pcg_logo.png'),
                                width: 60,
                                height: 60,
                              ),
                              SizedBox(
                                child: SelectableText(
                                  'PRESBYTERIAN CHURCH OF GHANA\nNAZARETH CONGREGATION\nADJEI KOJO',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                              margin: const EdgeInsets.only(top: 20),
                              child: SelectableText(
                                '"Bata Awurade ho... Na ye papa!"',
                                style: Theme.of(context).textTheme.bodyText1,
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              child: SelectableText(
                                'CONTACT',
                                style: Theme.of(context).textTheme.caption,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            SizedBox(
                              child: SelectableText(
                                'nazarethpresby@gmail.com\nP. O. Box AS 717\nAshaiman\nTema West District\nAdjei Kojo\n+233 50 143 1230\n+233 55 042 3009',
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ),
                          ]),
                    ),
                    SizedBox(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              child: SelectableText(
                                'MENU',
                                style: Theme.of(context).textTheme.caption,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            SizedBox(
                              child: GestureDetector(
                                onTap: () {},
                                child: SelectableText(
                                  'Home',
                                  style: Theme.of(context).textTheme.subtitle1,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              child: GestureDetector(
                                onTap: () {},
                                child: SelectableText(
                                  'School Project',
                                  style: Theme.of(context).textTheme.subtitle1,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              child: GestureDetector(
                                onTap: () {},
                                child: SelectableText(
                                  'Church Project',
                                  style: Theme.of(context).textTheme.subtitle1,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              child: GestureDetector(
                                onTap: () {},
                                child: SelectableText(
                                  'Church History',
                                  style: Theme.of(context).textTheme.subtitle1,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              child: GestureDetector(
                                onTap: () {},
                                child: SelectableText(
                                  'Contact Us',
                                  style: Theme.of(context).textTheme.subtitle1,
                                ),
                              ),
                            ),
                          ]),
                    ),
                    SizedBox(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              child: SelectableText(
                                'NEWSLETTER',
                                style: Theme.of(context).textTheme.caption,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 250,
                                  height: 45,
                                  color: Colors.white,
                                  child: TextField(
                                    decoration: const InputDecoration(
                                      hintText: 'Enter your email address',
                                      contentPadding: EdgeInsets.all(8),
                                      border: InputBorder.none,
                                    ),
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                ),
                                SizedBox(
                                  height: 45,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: const SelectableText(
                                      'SIGN UP',
                                    ),
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              CustomColor.red),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: 350,
                              child: SelectableText(
                                'Subscribe to our newsletter and receive updates on our currents projects and services',
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 1,
              margin: const EdgeInsets.only(top: 30, bottom: 30),
              color: Colors.grey,
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.875,
                margin: const EdgeInsets.only(left: 0, right: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SelectableText(
                      '© 2021 PCG - Nazareth Congregation',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    SizedBox(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              child: Container(
                                width: 30,
                                height: 30,
                                margin: const EdgeInsets.only(right: 5),
                                padding: EdgeInsets.zero,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    image: DecorationImage(
                                      image: AssetImage(
                                          '/images/social_icons/facebook.png'),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              onTap: () {},
                            ),
                            GestureDetector(
                              child: Container(
                                width: 30,
                                height: 30,
                                margin: const EdgeInsets.only(right: 5),
                                padding: EdgeInsets.zero,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    image: DecorationImage(
                                      image: AssetImage(
                                          '/images/social_icons/instagram.png'),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              onTap: () {},
                            ),
                            GestureDetector(
                              child: Container(
                                width: 30,
                                height: 30,
                                margin: const EdgeInsets.only(right: 5),
                                padding: EdgeInsets.zero,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    image: DecorationImage(
                                      image: AssetImage(
                                          '/images/social_icons/twitter.png'),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              onTap: () {},
                            ),
                            GestureDetector(
                              child: Container(
                                width: 30,
                                height: 30,
                                margin: const EdgeInsets.only(right: 5),
                                padding: EdgeInsets.zero,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    image: DecorationImage(
                                      image: AssetImage(
                                          '/images/social_icons/linkedin.png'),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              onTap: () {},
                            ),
                            GestureDetector(
                              child: Container(
                                width: 30,
                                height: 30,
                                margin: const EdgeInsets.only(right: 5),
                                padding: EdgeInsets.zero,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    image: DecorationImage(
                                      image: AssetImage(
                                          '/images/social_icons/youtube.png'),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              onTap: () {},
                            ),
                          ]),
                    ),
                    SelectableText(
                      'Designed by Daniel Pistis Partey',
                      style: Theme.of(context).textTheme.bodyText1,
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
