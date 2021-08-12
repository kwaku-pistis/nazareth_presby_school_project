import 'package:flutter/material.dart';
import 'package:mailto/mailto.dart';
import 'package:nazareth_presby_school_project/components/profile.dart';
import 'package:nazareth_presby_school_project/style/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  _ContactUsState createState() => _ContactUsState();
}

final contactKey = GlobalKey();
var _nameTextController = TextEditingController();
var _emailTextController = TextEditingController();
var _msgTextController = TextEditingController();
const _url =
    'https://www.google.com.gh/maps/place/Presbyterian+Church+Of+Ghana,+Nazareth+Congregation/@5.6788375,-0.0608992,17z/data=!3m1!4b1!4m5!3m4!1s0xfdf81b227c37b7f:0x4f66e41a7926f33b!8m2!3d5.6788322!4d-0.0587105?hl=en&authuser=0';
bool _isSubmitEnabled = false;

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    var _orientation = MediaQuery.of(context).orientation;

    return _orientation == Orientation.landscape
        ? desktopView(context)
        : mobileView(context);
  }

  desktopView(BuildContext context) {
    return Center(
      child: SizedBox(
          key: contactKey,
          width: MediaQuery.of(context).size.width * 0.6,
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: Profile(
                    orientation: MediaQuery.of(context).orientation,
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 30),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: CustomColor.red,
                      ),
                      child: const SelectableText(
                        'CONTACT US',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    )),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  child: Card(
                    color: CustomColor.white,
                    elevation: 10,
                    shadowColor: Colors.black45,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(bottom: 5),
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: CustomColor.red,
                                        width: 2,
                                        style: BorderStyle.solid))),
                            child: const SelectableText(
                              'POSTAL ADDRESS',
                              style: TextStyle(
                                fontFamily: 'Raleway',
                                fontSize: 16.0,
                                color: CustomColor.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(top: 0),
                                        child: SelectableText(
                                          'P. O. Box AS 717',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(top: 10),
                                        child: SelectableText(
                                          'Tema West District',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(top: 10),
                                        child: SelectableText(
                                          'Adjei Kojo',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // width: 30,
                                            // height: 30,
                                            margin: const EdgeInsets.only(
                                                right: 10.0),
                                            child: const Icon(
                                              Icons.call,
                                              color: CustomColor.red,
                                            ),
                                          ),
                                          SelectableText(
                                            '+233 24 636 0674',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                              width: 24,
                                              height: 24,
                                              margin: const EdgeInsets.only(
                                                  right: 10.0),
                                              child: null),
                                          SelectableText(
                                            '+233 24 478 3244',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // width: 30,
                                            // height: 30,
                                            margin: const EdgeInsets.only(
                                                right: 10.0),
                                            child: const Icon(
                                              Icons.mail,
                                              color: CustomColor.red,
                                            ),
                                          ),
                                          SelectableText(
                                            'nazarethpresby@gmail.com',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  child: Icon(
                                    Icons.location_pin,
                                    size: 70,
                                    color: CustomColor.red,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                width: MediaQuery.of(context).size.width * 0.25,
                                child: Card(
                                  color: CustomColor.white,
                                  elevation: 10,
                                  shadowColor: Colors.black45,
                                  child: TextField(
                                    controller: _nameTextController,
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                    cursorColor: CustomColor.blue,
                                    keyboardType: TextInputType.name,
                                    decoration: const InputDecoration(
                                      hintText: 'Name',
                                      contentPadding: EdgeInsets.all(10),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                )),
                            Container(
                                width: MediaQuery.of(context).size.width * 0.25,
                                margin: const EdgeInsets.only(top: 10),
                                child: Card(
                                  color: CustomColor.white,
                                  elevation: 10,
                                  shadowColor: Colors.black45,
                                  child: TextField(
                                    controller: _emailTextController,
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                    cursorColor: CustomColor.blue,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: const InputDecoration(
                                      hintText: 'Email',
                                      contentPadding: EdgeInsets.all(10),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                )),
                            Container(
                                width: MediaQuery.of(context).size.width * 0.25,
                                margin: const EdgeInsets.only(top: 10),
                                child: Card(
                                  color: CustomColor.white,
                                  elevation: 10,
                                  shadowColor: Colors.black45,
                                  child: TextField(
                                    controller: _msgTextController,
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                    cursorColor: CustomColor.blue,
                                    keyboardType: TextInputType.multiline,
                                    minLines: null,
                                    maxLines: 12,
                                    decoration: const InputDecoration(
                                      hintText: 'Type your message here',
                                      contentPadding: EdgeInsets.all(10),
                                      border: InputBorder.none,
                                    ),
                                    onChanged: (value) {
                                      if (value.isNotEmpty) {
                                        setState(() {
                                          _isSubmitEnabled = true;
                                        });
                                      }
                                    },
                                  ),
                                )),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.25,
                              margin: const EdgeInsets.only(top: 10),
                              alignment: Alignment.centerRight,
                              child: ElevatedButton(
                                child: const SelectableText('SUBMIT'),
                                onPressed: _isSubmitEnabled
                                    ? () {
                                        sendMail();
                                      }
                                    : null,
                              ),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.32,
                          height: 410.0,
                          child: Card(
                              color: CustomColor.white,
                              elevation: 10,
                              shadowColor: Colors.black45,
                              child: Image.asset(
                                '/images/map.png',
                                fit: BoxFit.cover,
                              )

                              // EasyGoogleMaps(
                              //   address: 'Presbyterian Church Of Ghana, Nazareth Congregation, Tema Metropolitan',
                              //   title: 'PCG NAZARETH CONG.',
                              //   apiKey: 'AIzaSyCtByO7njFzStFkjJO4AKd4gOwmdv-LB0I'
                              // )
                              ),
                        ),
                        onTap: () async {
                          if (await canLaunch(_url)) {
                            await launch(_url);
                          } else {
                            throw 'Could not launch $_url';
                          }
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          )),
    );
  }

  mobileView(BuildContext context) {
    return Center(
      child: SizedBox(
          key: contactKey,
          width: MediaQuery.of(context).size.width * 0.8,
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: Profile(
                    orientation: MediaQuery.of(context).orientation,
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 30),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: CustomColor.red,
                      ),
                      child: const SelectableText(
                        'CONTACT US',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    )),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  child: Card(
                    color: CustomColor.white,
                    elevation: 10,
                    shadowColor: Colors.black45,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(bottom: 5),
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: CustomColor.red,
                                        width: 2,
                                        style: BorderStyle.solid))),
                            child: const SelectableText(
                              'POSTAL ADDRESS',
                              style: TextStyle(
                                fontFamily: 'Raleway',
                                fontSize: 16.0,
                                color: CustomColor.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(top: 0),
                                        child: SelectableText(
                                          'P. O. Box AS 717',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(top: 10),
                                        child: SelectableText(
                                          'Tema West District',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(top: 10),
                                        child: SelectableText(
                                          'Adjei Kojo',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 20,
                                            height: 20,
                                            margin: const EdgeInsets.only(
                                                right: 10.0),
                                            child: const Icon(
                                              Icons.call,
                                              color: CustomColor.red,
                                            ),
                                          ),
                                          SelectableText(
                                            '+233 24 636 0674',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                              width: 24,
                                              height: 24,
                                              margin: const EdgeInsets.only(
                                                  right: 10.0),
                                              child: null),
                                          SelectableText(
                                            '+233 24 478 3244',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 20,
                                            height: 20,
                                            margin: const EdgeInsets.only(
                                                right: 10.0),
                                            child: const Icon(
                                              Icons.mail,
                                              color: CustomColor.red,
                                            ),
                                          ),
                                          SelectableText(
                                            'nazarethpresby@gmail.com',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                Container(
                  padding: const EdgeInsets.only(bottom: 5),
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: CustomColor.red,
                              width: 2,
                              style: BorderStyle.solid))),
                  child: const SelectableText(
                    'Write to us',
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 16.0,
                      color: CustomColor.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Card(
                              color: CustomColor.white,
                              elevation: 10,
                              shadowColor: Colors.black45,
                              child: TextField(
                                controller: _nameTextController,
                                style: Theme.of(context).textTheme.bodyText1,
                                cursorColor: CustomColor.blue,
                                keyboardType: TextInputType.name,
                                decoration: const InputDecoration(
                                  hintText: 'Name',
                                  contentPadding: EdgeInsets.all(10),
                                  border: InputBorder.none,
                                ),
                              ),
                            )),
                        Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.only(top: 10),
                            child: Card(
                              color: CustomColor.white,
                              elevation: 10,
                              shadowColor: Colors.black45,
                              child: TextField(
                                controller: _emailTextController,
                                style: Theme.of(context).textTheme.bodyText1,
                                cursorColor: CustomColor.blue,
                                keyboardType: TextInputType.emailAddress,
                                decoration: const InputDecoration(
                                  hintText: 'Email',
                                  contentPadding: EdgeInsets.all(10),
                                  border: InputBorder.none,
                                ),
                              ),
                            )),
                        Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.only(top: 10),
                            child: Card(
                              color: CustomColor.white,
                              elevation: 10,
                              shadowColor: Colors.black45,
                              child: TextField(
                                controller: _msgTextController,
                                style: Theme.of(context).textTheme.bodyText1,
                                cursorColor: CustomColor.blue,
                                keyboardType: TextInputType.multiline,
                                minLines: null,
                                maxLines: 12,
                                decoration: const InputDecoration(
                                  hintText: 'Type your message here',
                                  contentPadding: EdgeInsets.all(10),
                                  border: InputBorder.none,
                                ),
                                onChanged: (value) {
                                  if (value.isNotEmpty) {
                                    setState(() {
                                      _isSubmitEnabled = true;
                                    });
                                  }
                                },
                              ),
                            )),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(top: 10),
                          alignment: Alignment.centerRight,
                          child: ElevatedButton(
                            child: const SelectableText('SUBMIT'),
                            onPressed: _isSubmitEnabled
                                ? () {
                                    sendMail();
                                  }
                                : null,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                Container(
                  padding: const EdgeInsets.only(bottom: 5),
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: CustomColor.red,
                              width: 2,
                              style: BorderStyle.solid))),
                  child: const SelectableText(
                    'Locate us',
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 16.0,
                      color: CustomColor.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 300.0,
                    child: Card(
                        color: CustomColor.white,
                        elevation: 10,
                        shadowColor: Colors.black45,
                        child: Image.asset(
                          '/images/map.png',
                          fit: BoxFit.cover,
                        )

                        // EasyGoogleMaps(
                        //   address: 'Presbyterian Church Of Ghana, Nazareth Congregation, Tema Metropolitan',
                        //   title: 'PCG NAZARETH CONG.',
                        //   apiKey: 'AIzaSyCtByO7njFzStFkjJO4AKd4gOwmdv-LB0I'
                        // )
                        ),
                  ),
                  onTap: () async {
                    if (await canLaunch(_url)) {
                      await launch(_url);
                    } else {
                      throw 'Could not launch $_url';
                    }
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          )),
    );
  }

  sendMail() async {
    // go ahead and send email
    final mailtoLink = Mailto(
      to: ['kwakupistis@gmail.com'],
      subject: 'CONTACT US - PCG NAZARETH CONG. WEBSITE',
      body: _msgTextController.text.toString(),
    );

    await launch('$mailtoLink');
  }
}
