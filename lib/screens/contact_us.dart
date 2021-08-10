import 'package:flutter/material.dart';
import 'package:nazareth_presby_school_project/components/profile.dart';
import 'package:nazareth_presby_school_project/style/colors.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  _ContactUsState createState() => _ContactUsState();
}

final contactKey = GlobalKey();

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
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
                  child: const Profile(),
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
                                            '+233 50 143 1230',
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
                                            '+233 55 143 1230',
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
                                  ),
                                )),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.25,
                              margin: const EdgeInsets.only(top: 10),
                              alignment: Alignment.centerRight,
                              child: ElevatedButton(
                                child: const SelectableText('SUBMIT'),
                                onPressed: () {},
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.32,
                        height: 410.0,
                        child: Card(
                            color: CustomColor.white,
                            elevation: 10,
                            shadowColor: Colors.black45,
                            child: Image.asset(
                              '/images/map.png',
                              fit: BoxFit.cover,
                            )),
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
}
