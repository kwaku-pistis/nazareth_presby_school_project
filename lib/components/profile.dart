import 'package:flutter/material.dart';
import 'package:nazareth_presby_school_project/style/colors.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              color: CustomColor.white,
              elevation: 10,
              shadowColor: Colors.black45,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.29,
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      margin: const EdgeInsets.only(right: 20),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('/images/pcg_logo.png'),
                            fit: BoxFit.cover,
                          )),
                    ),
                    SizedBox(
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
                              'Rev. Godfried Emmanuel Quagraine',
                              style: TextStyle(
                                fontFamily: 'Raleway',
                                fontSize: 14.0,
                                color: CustomColor.blue,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            child: SelectableText(
                              'Agent-In-Charge',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            child: SelectableText(
                              '+233 24 393 5949 / +233 20 268 7335',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              color: CustomColor.white,
              elevation: 10,
              shadowColor: Colors.black45,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.29,
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      margin: const EdgeInsets.only(right: 20),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('/images/pcg_logo.png'),
                            fit: BoxFit.cover,
                          )),
                    ),
                    SizedBox(
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
                              'Cat. Roseline Gyanwaa Baiden',
                              style: TextStyle(
                                fontFamily: 'Raleway',
                                fontSize: 14.0,
                                color: CustomColor.blue,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            child: SelectableText(
                              'Catechist with a Charge',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            child: SelectableText(
                              '+233 54 295 9967 / +233 24 809 6119',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              color: CustomColor.white,
              elevation: 10,
              shadowColor: Colors.black45,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.29,
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      margin: const EdgeInsets.only(right: 20),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('/images/pcg_logo.png'),
                            fit: BoxFit.cover,
                          )),
                    ),
                    SizedBox(
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
                              'Mr. Kennedy Boakye-Yiadom',
                              style: TextStyle(
                                fontFamily: 'Raleway',
                                fontSize: 14.0,
                                color: CustomColor.blue,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            child: SelectableText(
                              'Senior Presbyter',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            child: SelectableText(
                              '+233 24 393 5949 / +233 20 268 7335',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              color: CustomColor.white,
              elevation: 10,
              shadowColor: Colors.black45,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.29,
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      margin: const EdgeInsets.only(right: 20),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('/images/ekol.jpeg'),
                            fit: BoxFit.cover,
                          )),
                    ),
                    SizedBox(
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
                              'Mr. Emmanuel K. O. Larbi',
                              style: TextStyle(
                                fontFamily: 'Raleway',
                                fontSize: 14.0,
                                color: CustomColor.blue,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            child: SelectableText(
                              'Clerk',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            child: SelectableText(
                              '+233 24 636 0674 / +233 24 478 3244',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
