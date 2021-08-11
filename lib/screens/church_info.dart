import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:nazareth_presby_school_project/style/colors.dart';

class ChurchInfo extends StatefulWidget {
  const ChurchInfo({Key? key}) : super(key: key);

  @override
  _ChurchInfoState createState() => _ChurchInfoState();
}

final PageController controller = PageController();
final churchInfoKey = GlobalKey();

class _ChurchInfoState extends State<ChurchInfo> {
  var galleryItems = [
    'images/carousel_1.jpg',
    'images/carousel_2.jpg',
    'images/carousel_3.jpg',
  ];

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
        key: churchInfoKey,
        width: MediaQuery.of(context).size.width * 0.6,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: const EdgeInsets.only(top: 30),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: CustomColor.red,
                  ),
                  child: const SelectableText(
                    'THE NEED FOR THE PLANTING OF CHURCH',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                )),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: SelectableText(
                "With the fast development of Ashaiman Township, settlements became a problem, so people looked up for available pieces of land nearby to put up residences. Some of these people migrated to Adjei Kojo. With the rapid increase in population, there arises the need to plant a church in this new settlement to meet the desire of the Christians who were travelling back to their former residential areas each time to worship.",
                style: Theme.of(context).textTheme.bodyText1,
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
                    'FEASIBILITY STUDY',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                )),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: SelectableText(
                "One Mr. Danso (Deceased) may his soul rest in Perfect Peace, of Tema North Presby Church (now Trinity Presby Church) met with Mr. James Amengor (now a retired Catechist) of Victory Congregation Ashaiman, ts one of the Bible Study and Prayer Group (B.S.P.G) meetings and discussed the possibilities of planting a branch at Adjei Kojo. Looking at the proximity of Adjei Kojo to Tema North and Ashaiman Central, they both arrived at the decision that Ashaiman Central should be burdened with such task for the effective supervision. Catechist James Amengor who happened to be a session member of Ashaiman Central informed the then Minister In-Charge, Rev. Isaac Oleenu who gladly gave an approval.\n\nCatechist James Amengor together with Mr. Benjamin Ottu (now a Catechist) who by then was the President of the B.S.P.G gallantly came to Adjei Kojo to undertake feasibility study in the course, they met one Mr. Martin Sarkodie who was is a Presbyterian. He agreed to offer part of his residence as a place of worship when the issue was put across to him.",
                style: Theme.of(context).textTheme.bodyText1,
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
                    'EVANGELISM ACTIVITIES',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                )),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: SelectableText(
                "On the 6 th July, 1997, some of the B.S.P.G members under the able leadership of their president, Cat. Benjamin Ottu moved as missionaries to Adjei Kojo to undertake house to house evangelism, mobilizing members to start the church. On the 13 th of July, 1997, five members from the town joined the missionaries to start the first worship in a car garage in the residence of Mr. Sarkodie. Bible Studies and Prayer dominated the worship. Few hymns were happily sang. The membership increased to ten the following week. This time, the first offertory was taken; an amount of Gh¢7,700 Cedis (now Gh¢77.00 Pesewas) was realized.",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      child: SelectableText(
                        "The ten pioneers were:",
                        style: TextStyle(
                          // fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    ListTile(
                      leading: SelectableText(
                        "1.",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      title: SelectableText(
                        "Mr. Martin Sarkodie",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    ListTile(
                      leading: SelectableText(
                        "2.",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      title: SelectableText(
                        "Mrs. Evelyn Sarkodie",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    ListTile(
                      leading: SelectableText(
                        "3.",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      title: SelectableText(
                        "Mr. Samuel Nkansah",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    ListTile(
                      leading: SelectableText(
                        "4.",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      title: SelectableText(
                        "Mr. Samuel Sefa",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    ListTile(
                      leading: SelectableText(
                        "5.",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      title: SelectableText(
                        "Mr. Samuel Akuffo",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    ListTile(
                      leading: SelectableText(
                        "6.",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      title: SelectableText(
                        "Madam Linda Owusu",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    ListTile(
                      leading: SelectableText(
                        "7.",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      title: SelectableText(
                        "Mrs. Mercy Agyekum (deceased). May her soul rest in peace",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    ListTile(
                      leading: SelectableText(
                        "8.",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      title: SelectableText(
                        "Madam Mercy Agbedeka",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    ListTile(
                      leading: SelectableText(
                        "9.",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      title: SelectableText(
                        "Madam Suzzy Akutu",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    ListTile(
                      leading: SelectableText(
                        "10.",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      title: SelectableText(
                        "Mr. Nicholas Martey",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    SizedBox(
                      child: SelectableText(
                        'Mr. Samuel Nkansah and Mad. Linda Owusu were asked to as Session Clerk and Treasurer respectively. To increase membership, Cat. Benjamin Ottu led some of the missionaries to undertake dawn broadcasting which yielded a lot.\n\nHe asked Sowers International – Ashaiman branch to help their skills. House-to-house and visitation were seriously undertaken by the missionaries. Once a while the entire District B.S.P.G got involved. These activities amongst led to the fast growth of the church. By the close of the year 1997, membership totaled thirty (30) thus Eighteen (18) males and Twelve (12) females excluding the juvenile services.',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    )
                  ]),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.only(bottom: 5),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: CustomColor.red,
                          width: 2,
                          style: BorderStyle.solid))),
              child: const SelectableText(
                'Missionaries',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 16.0,
                  color: CustomColor.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Container(
                margin: const EdgeInsets.only(left: 0.0),
                child: Table(
                  defaultColumnWidth:
                      FixedColumnWidth(MediaQuery.of(context).size.width * 0.2),
                  border: TableBorder.all(style: BorderStyle.none),
                  children: [
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "1. Mr. Benjamin Ottu",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "Leader (now Catechist at Hope Congregation,Santeo)",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "2. Mr. Edward Narh",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "Assistant Leader (now at Calvary Presby - Tema)",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "3. Mr. Benjamin Ankrah",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "(now an ex presbyter of Nazareth)",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "4. Mr. Moses D. Angmor",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "(now an ex presbyter of Nazareth)",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "5. Mr. Isaac Amanor",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "(now Elder at Central)",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "6. Mr. Daniel Puplampu",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "(now Elder at Victory)",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "7. Mr. Luther Otu",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "(now Elder at Zion)",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "8. Mr. Henry Ayiku",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "(now Catechist in charge of Bethel)",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "9. Mr. Joseph Nartey",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "(now at Zion Zone Two)",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "10. Mr. David Nartey",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "(JY Teacher of Nazareth)",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "11. Mr. Samuel Partey",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "(now with Resurrection Faith Ministry)",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "12. Mr. Benjamin Agyapong",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "(Central)",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "13. Mrs. Faustina Odonkor",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "(Central)",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "14. Mrs. Comfort Padi",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "(now at Agomeda)",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "15. Mrs. Elizabeth Patawah",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "(C/S Mother - Central)",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "16. Mrs. Victoria Totimeh",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "(now at Zion Lebanon Zone Two)",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "17. Mr. Ebenezer Tetteh",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "(now Caretaker, Adenta Presby)",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                  ],
                ),
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
                    'RE-LOCATION',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                )),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: SelectableText(
                "Realizing an increase in membership, Mr. Martin Sarkodie offered his shelter which was being used to operate a drinking bar to be rehabilitated as a place of worship. This ended the life of the bar, and the church moved from the garage to this new place. On the 26th of July, 1998, the church celebrated its 1st Anniversary.\n\nAn amount of 1,070,000 Cedis (i.e GH¢107.00) was realized. The weeklong celebration talks were delivered by Rev. Gideon Puplampu. With strong membership drive the church decided to move to a more spacious site. The authorities of the Adjei Kojo T.M.A Basic School were contacted and a classroom was offered. We undertook the roofing of the classroom immediately on the 7 th January, 2000 we moved our worship place there. This took place under the leadership of Cat. Timothy Bediako (now Reverend Minister at Maranatha Presby Church - Lebanon).\n\nTo have a permanent worship centre, the congregation took a bold step to acquire six (6) plots of a piece of land from the Traditional Council at the cost of 120,000,000 Cedis (Gh¢12,000.00).\n\nSooner a tent was erected. The congregation moved to conduct its first worship on 15th of August, 2004 after its dedication by Rev. Mrs. Augustina Sarpong Kwakwa. Later a temporal chapel was put up, which now houses the church. The children service who were by then still worshipping in the residence of Mr. Sarkodie and the Junior Youth (J.Y) who were also in the classroom were all brought down to worship at the permanent site.",
                style: Theme.of(context).textTheme.bodyText1,
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
                    'THE CHURCH ADMINISTRATION',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                )),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: SelectableText(
                "The first Caretaker of the church was Cat. Benjamin Ottu. He steered the affairs confidently and effectively from the very beginning of the church until the 4th of October, 1998, when he smoothly handed over to Rev. Timothy Bediako (by then, a Catechist) who was introduced to the church as the new Agent by Rev. Isaac Ollenu. Cat. Benjamin Ottu who was voted for massively by the members of the Ashaiman Central to their Session has to go back to undertake this duty.\n\nSince the church was still under the supervision of Ashaiman Central Congregation. Mrs. Joana Korsinah and Mr. Richard Senyemi of Central Presby session was chosen to coordinate. They were later replaced with Mr. Moses Angmor (MODISCO) and Mrs. Agbodeka. In the year 2004, Rev. Timothy Bediako was admitted to pursue a Special Ministerial Training (SMT) course at Abetifi Ramseyer.\n\nAt this point, Cat.Ben Ottu was appointed to take oversight responsibilities in hisabsence. After completion of the course Rev. Bediako was transferred. Once again, Cat.Ben Ottu was brought down to Adjei Kojo and inducted into office by Rev. Gabriel Narh Kumasa as Caretaker. He also successfully pursued a Catechist course at Abetifi Ramseyer and was inducted into office of the church in 2010 by Rev. Emmanuel Adjei Mantey.\n\nAn Interim Management Committee (IMC) was formed to assist the Agents in the running of the church; they were Mr. Samuel Nkansah the first Session Clerk. However,along the line he resigned and was replaced with another diligent member the late Justice Akahoho may his soul rest in peace. He was gloriously called to eternity in 2010. He was replaced with a young and energetic member – Mr. Godwin Fianu. The first Treasurer was Mad. Susuana Agomeda but she also became indisposed along the line. Mr. Nicholas Martey who was in charge of the church properties also became indisposed. The others were Mr. Benjamin Ankrah who happened to be the first Senior Presbyter of the IMC but has to relinquish such position to Mad. Comfort Nkansah Afari and took up the position of the director of finance, Mad. Veronica Bosu, Mad. Helena Aboagye, Mr. Henry Ayiku, Mr. Moses D. Angmor and Mr. Samuel Amoako Mensah.",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.only(bottom: 5),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: CustomColor.red,
                          width: 2,
                          style: BorderStyle.solid))),
              child: const SelectableText(
                'The out-going IMC members were as follows',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 16.0,
                  color: CustomColor.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Container(
                margin: const EdgeInsets.only(left: 0.0),
                child: Table(
                  defaultColumnWidth:
                      FixedColumnWidth(MediaQuery.of(context).size.width * 0.2),
                  border: TableBorder.all(
                    style: BorderStyle.none,
                  ),
                  children: [
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "1. Catechist Benjamin Ottu",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "Agent-In-Charge",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "2. Mad. Comfort Nkansah Afari",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "Senior Presbyter",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "3. Mr. Godwin Fianu",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "Clerk",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "4. Mr. Benjamin Ankrah",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "Director of Finance",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "5. Mr. Moses Angmor",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "Member",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "6. Mr. Henry Ayiku",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "Coordinator to Suncity",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "7. Mad. Helena Aboagye",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "Member",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "8. Mad. Veronica Bosu",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "Member",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "9. Mr. Samuel Amoako Mensah",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "Member",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                  ],
                ),
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
                    'BAPTISM AND CONFIRMATION',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                )),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: SelectableText(
                "23 converts were first baptized. Out of this, 16 were males and 7 were females. The first confirmation recorded 14 members. This activity was undertaken by Rev. Isaac Ollenu in the year 1998.",
                style: Theme.of(context).textTheme.bodyText1,
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
                    'NAMING',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                )),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: SelectableText(
                "The church finally in 2010 was given the name NAZARETH PRESBYTERIAN CONGREGATION. This was after the District Session was informed and accepted.",
                style: Theme.of(context).textTheme.bodyText1,
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
                    'CURRENT LEADERSHIP',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                )),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Container(
                margin: const EdgeInsets.only(left: 0.0),
                child: Table(
                  defaultColumnWidth:
                      FixedColumnWidth(MediaQuery.of(context).size.width * 0.2),
                  border: TableBorder.all(
                    style: BorderStyle.none,
                  ),
                  children: [
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "Rev. Godfried Emmanuel Quagraine",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "Minister in Charge",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "Cat. Roseline Gyanwaa Baiden",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "Catechist with a Charge",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "Presbyter Kenneth Boakye - Yiadom",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "Senior Presbyter",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "Presbyter Emmanuel K. O. Larbi",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "Session Clerk",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "Presbyter Janet Naa Ayorkor Klu",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "Ass. Session Clerk",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "Presbyter Enoch Kwesi Sain",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "Treasurer",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "Presbyter Emmanuel Adu Bempah",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "Member",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "Presbyter Lovelace Samuel Amponsah",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "Member",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "Presbyter Ebenezer Ronald Sekyi",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "Member",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "Presbyter Wilfred Samuel Partey",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "Member",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "Presbyter Joseph Kwadwo Awuah",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "Member",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "Presbyter Daniel Tetteh Agu",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "Member",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "Presbyter Beatrice Odoi",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "Member",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "Presbyter Mercy Ampabena Gyan",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "Member",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "Presbyter Elizabeth Puplampu",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "Member",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "Presbyter Veronica Amegavi",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "Member",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "Presbyter Rita Lomokie Larwerh",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: SelectableText(
                              "Member",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                  ],
                ),
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
                    'REMARKABLE ACHIEVEMENTS',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                )),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: ListTile(
                leading: SelectableText(
                  '1.',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                title: SelectableText(
                  'Under the leadership of Cat. Benjamin Ottu, four average classrooms were put up to start a Basic School. This was in line with the Presbyterian Culture of Education, Discipline and Hardwork. The school was named Nazareth Presbyterian School. On the 27 th of September, 2010, Rev. Mark Mensah Boye dedicated the school and opened it. About 30 pupils were admitted on the first day and 4 teachers were also employed.',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                contentPadding: EdgeInsets.zero,
              ),
            ),
            SizedBox(
              child: ListTile(
                leading: SelectableText(
                  '2.',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                title: SelectableText(
                  'The church undertook feasibility study at Suncity to plant a church in line with the Presbyterian Culture of Evangelism. After the road map was prepared, the District was informed and came in with assistant leading to the planting of the Bethel Presbyterian Congregation at Suncity. A member of the IMC, Mr. Henry Ayiku has been assigned to this preaching point to take oversight duties and report on its activities.',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                contentPadding: EdgeInsets.zero,
              ),
            ),
            SizedBox(
              child: ListTile(
                leading: SelectableText(
                  '3.',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                title: SelectableText(
                  'We produced a catechist in the person of Catechist Seth Adu Arko, now in charge of the Ascension Preaching Post, Japan City.',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                contentPadding: EdgeInsets.zero,
              ),
            ),
            SizedBox(
              child: ListTile(
                leading: SelectableText(
                  '4.',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                title: SelectableText(
                  'The putting up of an Ultra-modern washroom to cater for the sanitary conditions of the church and school earmarked to be completed by September, 2021.',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                contentPadding: EdgeInsets.zero,
              ),
            ),
            SizedBox(
              child: ListTile(
                leading: SelectableText(
                  '5.',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                title: SelectableText(
                  'Renovation and facelifting of the Nazareth Preparatory School to make it more competitive also earmarked to be completed by end of October 2021 to make way for a new admission input by January 2022.',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                contentPadding: EdgeInsets.zero,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Container(
                margin: const EdgeInsets.only(left: 0.0),
                child: SelectableText(
                  "One key indicator or strength and grace otherwise challenge in managing the branch is the pandemic that broke in 2019 into 2020; Covid 19, that led to a lockdown and closure of all public places and gatherings including the church. Nazareth had its fair share of the blow both on membership, church administration and finances. However, through the grace of God, we supported the members that required support with food items amidst prayers said, further to other people in the environment through the church support scheme launched from the head office at the time. Main issue now is the attendance toservice after the restrictions had been lifted and been made flexible but we are keen on making sure the entire flock and new ones are served well during this challenging times.",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
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
                    'MEMBERSHIP',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                )),
            Container(
                margin: const EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      child: SelectableText(
                        "Membership of the congregation as at now stand as follows:",
                        style: Theme.of(context).textTheme.bodyText1,
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Table(
                        defaultColumnWidth: const FixedColumnWidth(150.0),
                        border: TableBorder.all(
                            color: Colors.grey,
                            style: BorderStyle.none,
                            width: 2),
                        children: [
                          TableRow(children: [
                            Column(children: [
                              SizedBox(
                                width: 150.0,
                                child: SelectableText(
                                  "1. Adults",
                                  style: Theme.of(context).textTheme.bodyText1,
                                  textAlign: TextAlign.left,
                                ),
                              )
                            ]),
                            Column(children: [
                              SizedBox(
                                width: 150.0,
                                child: SelectableText(
                                  "(a) Males",
                                  style: Theme.of(context).textTheme.bodyText1,
                                  textAlign: TextAlign.left,
                                ),
                              )
                            ]),
                            Column(children: [
                              SelectableText(
                                "-",
                                style: Theme.of(context).textTheme.bodyText1,
                              )
                            ]),
                            Column(children: [
                              SelectableText(
                                "125",
                                style: Theme.of(context).textTheme.bodyText1,
                              )
                            ]),
                          ]),
                          TableRow(children: [
                            Column(children: [
                              SelectableText(
                                "",
                                style: Theme.of(context).textTheme.bodyText1,
                              )
                            ]),
                            Column(children: [
                              SizedBox(
                                width: 150.0,
                                child: SelectableText(
                                  "(b) Females",
                                  style: Theme.of(context).textTheme.bodyText1,
                                  textAlign: TextAlign.left,
                                ),
                              )
                            ]),
                            Column(children: [
                              SelectableText(
                                "-",
                                style: Theme.of(context).textTheme.bodyText1,
                              )
                            ]),
                            Column(children: [
                              SelectableText(
                                "112",
                                style: Theme.of(context).textTheme.bodyText1,
                              )
                            ]),
                          ]),
                          TableRow(children: [
                            Column(children: [
                              SizedBox(
                                width: 150.0,
                                child: SelectableText(
                                  "2. Junior Youth (J.Y)",
                                  style: Theme.of(context).textTheme.bodyText1,
                                  textAlign: TextAlign.left,
                                ),
                              )
                            ]),
                            Column(children: [
                              SelectableText(
                                "",
                                style: Theme.of(context).textTheme.bodyText1,
                              )
                            ]),
                            Column(children: [
                              SelectableText(
                                "-",
                                style: Theme.of(context).textTheme.bodyText1,
                              )
                            ]),
                            Column(children: [
                              SelectableText(
                                "72",
                                style: Theme.of(context).textTheme.bodyText1,
                              )
                            ]),
                          ]),
                          TableRow(children: [
                            Column(children: [
                              SizedBox(
                                width: 150.0,
                                child: SelectableText(
                                  "3. Children Service",
                                  style: Theme.of(context).textTheme.bodyText1,
                                  textAlign: TextAlign.left,
                                ),
                              )
                            ]),
                            Column(children: [
                              SelectableText(
                                "",
                                style: Theme.of(context).textTheme.bodyText1,
                              )
                            ]),
                            Column(children: [
                              SelectableText(
                                "-",
                                style: Theme.of(context).textTheme.bodyText1,
                              )
                            ]),
                            Column(children: [
                              SelectableText(
                                "163",
                                style: Theme.of(context).textTheme.bodyText1,
                              )
                            ]),
                          ]),
                          TableRow(children: [
                            Column(children: const [
                              SelectableText(
                                "TOTAL",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ]),
                            Column(children: [
                              SelectableText(
                                "",
                                style: Theme.of(context).textTheme.bodyText1,
                              )
                            ]),
                            Column(children: [
                              SelectableText(
                                "-",
                                style: Theme.of(context).textTheme.bodyText1,
                              )
                            ]),
                            Column(children: const [
                              SelectableText(
                                "472",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ]),
                          ]),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: SelectableText(
                        "Concerning the spiritual and welfare of the members, things are progressing as at 31st July, 2021. To God be the entire and first gratitude. His rich grace cannot be under emphasized. Ebenezer! Books cannot contain the names of all the good people, both deceased and alive for all their enormous input to make us reach this current state as a congregation.",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ],
                )),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }

  mobileView(BuildContext context) {
    return Center(
      child: SizedBox(
        key: churchInfoKey,
        width: MediaQuery.of(context).size.width * 0.8,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: const EdgeInsets.only(top: 30),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: CustomColor.red,
                  ),
                  child: const SelectableText(
                    'THE NEED FOR THE PLANTING OF CHURCH',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                )),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: SelectableText(
                "With the fast development of Ashaiman Township, settlements became a problem, so people looked up for available pieces of land nearby to put up residences. Some of these people migrated to Adjei Kojo. With the rapid increase in population, there arises the need to plant a church in this new settlement to meet the desire of the Christians who were travelling back to their former residential areas each time to worship.",
                style: Theme.of(context).textTheme.bodyText1,
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
                    'FEASIBILITY STUDY',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                )),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: SelectableText(
                "One Mr. Danso (Deceased) may his soul rest in Perfect Peace, of Tema North Presby Church (now Trinity Presby Church) met with Mr. James Amengor (now a retired Catechist) of Victory Congregation Ashaiman, ts one of the Bible Study and Prayer Group (B.S.P.G) meetings and discussed the possibilities of planting a branch at Adjei Kojo. Looking at the proximity of Adjei Kojo to Tema North and Ashaiman Central, they both arrived at the decision that Ashaiman Central should be burdened with such task for the effective supervision. Catechist James Amengor who happened to be a session member of Ashaiman Central informed the then Minister In-Charge, Rev. Isaac Oleenu who gladly gave an approval.\n\nCatechist James Amengor together with Mr. Benjamin Ottu (now a Catechist) who by then was the President of the B.S.P.G gallantly came to Adjei Kojo to undertake feasibility study in the course, they met one Mr. Martin Sarkodie who was is a Presbyterian. He agreed to offer part of his residence as a place of worship when the issue was put across to him.",
                style: Theme.of(context).textTheme.bodyText1,
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
                    'EVANGELISM ACTIVITIES',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                )),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: SelectableText(
                "On the 6 th July, 1997, some of the B.S.P.G members under the able leadership of their president, Cat. Benjamin Ottu moved as missionaries to Adjei Kojo to undertake house to house evangelism, mobilizing members to start the church. On the 13 th of July, 1997, five members from the town joined the missionaries to start the first worship in a car garage in the residence of Mr. Sarkodie. Bible Studies and Prayer dominated the worship. Few hymns were happily sang. The membership increased to ten the following week. This time, the first offertory was taken; an amount of Gh¢7,700 Cedis (now Gh¢77.00 Pesewas) was realized.",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      child: SelectableText(
                        "The ten pioneers were:",
                        style: TextStyle(
                          // fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    ListTile(
                      leading: SelectableText(
                        "1.",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      title: SelectableText(
                        "Mr. Martin Sarkodie",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    ListTile(
                      leading: SelectableText(
                        "2.",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      title: SelectableText(
                        "Mrs. Evelyn Sarkodie",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    ListTile(
                      leading: SelectableText(
                        "3.",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      title: SelectableText(
                        "Mr. Samuel Nkansah",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    ListTile(
                      leading: SelectableText(
                        "4.",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      title: SelectableText(
                        "Mr. Samuel Sefa",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    ListTile(
                      leading: SelectableText(
                        "5.",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      title: SelectableText(
                        "Mr. Samuel Akuffo",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    ListTile(
                      leading: SelectableText(
                        "6.",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      title: SelectableText(
                        "Madam Linda Owusu",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    ListTile(
                      leading: SelectableText(
                        "7.",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      title: SelectableText(
                        "Mrs. Mercy Agyekum (deceased). May her soul rest in peace",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    ListTile(
                      leading: SelectableText(
                        "8.",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      title: SelectableText(
                        "Madam Mercy Agbedeka",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    ListTile(
                      leading: SelectableText(
                        "9.",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      title: SelectableText(
                        "Madam Suzzy Akutu",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    ListTile(
                      leading: SelectableText(
                        "10.",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      title: SelectableText(
                        "Mr. Nicholas Martey",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    SizedBox(
                      child: SelectableText(
                        'Mr. Samuel Nkansah and Mad. Linda Owusu were asked to as Session Clerk and Treasurer respectively. To increase membership, Cat. Benjamin Ottu led some of the missionaries to undertake dawn broadcasting which yielded a lot.\n\nHe asked Sowers International – Ashaiman branch to help their skills. House-to-house and visitation were seriously undertaken by the missionaries. Once a while the entire District B.S.P.G got involved. These activities amongst led to the fast growth of the church. By the close of the year 1997, membership totaled thirty (30) thus Eighteen (18) males and Twelve (12) females excluding the juvenile services.',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    )
                  ]),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.only(bottom: 5),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: CustomColor.red,
                          width: 2,
                          style: BorderStyle.solid))),
              child: const SelectableText(
                'Missionaries',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 16.0,
                  color: CustomColor.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Container(
                margin: const EdgeInsets.only(left: 0.0),
                child: Table(
                  defaultColumnWidth: FixedColumnWidth(
                      MediaQuery.of(context).size.width * 0.26),
                  border: TableBorder.all(style: BorderStyle.none),
                  children: [
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "1. Mr. Benjamin Ottu",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "Leader (now Catechist at Hope Congregation,Santeo)",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "2. Mr. Edward Narh",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "Assistant Leader (now at Calvary Presby - Tema)",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "3. Mr. Benjamin Ankrah",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "(now an ex presbyter of Nazareth)",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "4. Mr. Moses D. Angmor",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "(now an ex presbyter of Nazareth)",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "5. Mr. Isaac Amanor",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "(now Elder at Central)",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "6. Mr. Daniel Puplampu",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "(now Elder at Victory)",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "7. Mr. Luther Otu",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "(now Elder at Zion)",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "8. Mr. Henry Ayiku",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "(now Catechist in charge of Bethel)",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "9. Mr. Joseph Nartey",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "(now at Zion Zone Two)",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "10. Mr. David Nartey",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "(JY Teacher of Nazareth)",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "11. Mr. Samuel Partey",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "(now with Resurrection Faith Ministry)",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "12. Mr. Benjamin Agyapong",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "(Central)",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "13. Mrs. Faustina Odonkor",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "(Central)",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "14. Mrs. Comfort Padi",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "(now at Agomeda)",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "15. Mrs. Elizabeth Patawah",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "(C/S Mother - Central)",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "16. Mrs. Victoria Totimeh",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "(now at Zion Lebanon Zone Two)",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "17. Mr. Ebenezer Tetteh",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 2,
                            child: SelectableText(
                              "(now Caretaker, Adenta Presby)",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                  ],
                ),
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
                    'RE-LOCATION',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                )),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: SelectableText(
                "Realizing an increase in membership, Mr. Martin Sarkodie offered his shelter which was being used to operate a drinking bar to be rehabilitated as a place of worship. This ended the life of the bar, and the church moved from the garage to this new place. On the 26th of July, 1998, the church celebrated its 1st Anniversary.\n\nAn amount of 1,070,000 Cedis (i.e GH¢107.00) was realized. The weeklong celebration talks were delivered by Rev. Gideon Puplampu. With strong membership drive the church decided to move to a more spacious site. The authorities of the Adjei Kojo T.M.A Basic School were contacted and a classroom was offered. We undertook the roofing of the classroom immediately on the 7 th January, 2000 we moved our worship place there. This took place under the leadership of Cat. Timothy Bediako (now Reverend Minister at Maranatha Presby Church - Lebanon).\n\nTo have a permanent worship centre, the congregation took a bold step to acquire six (6) plots of a piece of land from the Traditional Council at the cost of 120,000,000 Cedis (Gh¢12,000.00).\n\nSooner a tent was erected. The congregation moved to conduct its first worship on 15th of August, 2004 after its dedication by Rev. Mrs. Augustina Sarpong Kwakwa. Later a temporal chapel was put up, which now houses the church. The children service who were by then still worshipping in the residence of Mr. Sarkodie and the Junior Youth (J.Y) who were also in the classroom were all brought down to worship at the permanent site.",
                style: Theme.of(context).textTheme.bodyText1,
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
                    'THE CHURCH ADMINISTRATION',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                )),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: SelectableText(
                "The first Caretaker of the church was Cat. Benjamin Ottu. He steered the affairs confidently and effectively from the very beginning of the church until the 4th of October, 1998, when he smoothly handed over to Rev. Timothy Bediako (by then, a Catechist) who was introduced to the church as the new Agent by Rev. Isaac Ollenu. Cat. Benjamin Ottu who was voted for massively by the members of the Ashaiman Central to their Session has to go back to undertake this duty.\n\nSince the church was still under the supervision of Ashaiman Central Congregation. Mrs. Joana Korsinah and Mr. Richard Senyemi of Central Presby session was chosen to coordinate. They were later replaced with Mr. Moses Angmor (MODISCO) and Mrs. Agbodeka. In the year 2004, Rev. Timothy Bediako was admitted to pursue a Special Ministerial Training (SMT) course at Abetifi Ramseyer.\n\nAt this point, Cat.Ben Ottu was appointed to take oversight responsibilities in hisabsence. After completion of the course Rev. Bediako was transferred. Once again, Cat.Ben Ottu was brought down to Adjei Kojo and inducted into office by Rev. Gabriel Narh Kumasa as Caretaker. He also successfully pursued a Catechist course at Abetifi Ramseyer and was inducted into office of the church in 2010 by Rev. Emmanuel Adjei Mantey.\n\nAn Interim Management Committee (IMC) was formed to assist the Agents in the running of the church; they were Mr. Samuel Nkansah the first Session Clerk. However,along the line he resigned and was replaced with another diligent member the late Justice Akahoho may his soul rest in peace. He was gloriously called to eternity in 2010. He was replaced with a young and energetic member – Mr. Godwin Fianu. The first Treasurer was Mad. Susuana Agomeda but she also became indisposed along the line. Mr. Nicholas Martey who was in charge of the church properties also became indisposed. The others were Mr. Benjamin Ankrah who happened to be the first Senior Presbyter of the IMC but has to relinquish such position to Mad. Comfort Nkansah Afari and took up the position of the director of finance, Mad. Veronica Bosu, Mad. Helena Aboagye, Mr. Henry Ayiku, Mr. Moses D. Angmor and Mr. Samuel Amoako Mensah.",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.only(bottom: 5),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: CustomColor.red,
                          width: 2,
                          style: BorderStyle.solid))),
              child: const SelectableText(
                'The out-going IMC members were as follows',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 16.0,
                  color: CustomColor.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Container(
                margin: const EdgeInsets.only(left: 0.0),
                child: Table(
                  defaultColumnWidth: FixedColumnWidth(
                      MediaQuery.of(context).size.width * 0.26),
                  border: TableBorder.all(
                    style: BorderStyle.none,
                  ),
                  children: [
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "1. Catechist Benjamin Ottu",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "Agent-In-Charge",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "2. Mad. Comfort Nkansah Afari",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "Senior Presbyter",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "3. Mr. Godwin Fianu",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "Clerk",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "4. Mr. Benjamin Ankrah",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "Director of Finance",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "5. Mr. Moses Angmor",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "Member",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "6. Mr. Henry Ayiku",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "Coordinator to Suncity",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "7. Mad. Helena Aboagye",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "Member",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "8. Mad. Veronica Bosu",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "Member",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "9. Mr. Samuel Amoako Mensah",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "Member",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                  ],
                ),
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
                    'BAPTISM AND CONFIRMATION',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                )),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: SelectableText(
                "23 converts were first baptized. Out of this, 16 were males and 7 were females. The first confirmation recorded 14 members. This activity was undertaken by Rev. Isaac Ollenu in the year 1998.",
                style: Theme.of(context).textTheme.bodyText1,
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
                    'NAMING',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                )),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: SelectableText(
                "The church finally in 2010 was given the name NAZARETH PRESBYTERIAN CONGREGATION. This was after the District Session was informed and accepted.",
                style: Theme.of(context).textTheme.bodyText1,
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
                    'CURRENT LEADERSHIP',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                )),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Container(
                margin: const EdgeInsets.only(left: 0.0),
                child: Table(
                  defaultColumnWidth: FixedColumnWidth(
                      MediaQuery.of(context).size.width * 0.26),
                  border: TableBorder.all(
                    style: BorderStyle.none,
                  ),
                  children: [
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "Rev. Godfried Emmanuel Quagraine",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "Minister in Charge",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "Cat. Roseline Gyanwaa Baiden",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "Catechist with a Charge",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "Presbyter Kenneth Boakye - Yiadom",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "Senior Presbyter",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "Presbyter Emmanuel K. O. Larbi",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "Session Clerk",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "Presbyter Janet Naa Ayorkor Klu",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "Ass. Session Clerk",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "Presbyter Enoch Kwesi Sain",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "Treasurer",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "Presbyter Emmanuel Adu Bempah",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "Member",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "Presbyter Lovelace Samuel Amponsah",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "Member",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "Presbyter Ebenezer Ronald Sekyi",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "Member",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "Presbyter Wilfred Samuel Partey",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "Member",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "Presbyter Joseph Kwadwo Awuah",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "Member",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "Presbyter Daniel Tetteh Agu",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "Member",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "Presbyter Beatrice Odoi",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "Member",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "Presbyter Mercy Ampabena Gyan",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "Member",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "Presbyter Elizabeth Puplampu",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "Member",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "Presbyter Veronica Amegavi",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "Member",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "Presbyter Rita Lomokie Larwerh",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: SelectableText(
                              "-",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: SelectableText(
                              "Member",
                              style: Theme.of(context).textTheme.bodyText1,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ]),
                  ],
                ),
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
                    'REMARKABLE ACHIEVEMENTS',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                )),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: ListTile(
                leading: SelectableText(
                  '1.',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                title: SelectableText(
                  'Under the leadership of Cat. Benjamin Ottu, four average classrooms were put up to start a Basic School. This was in line with the Presbyterian Culture of Education, Discipline and Hardwork. The school was named Nazareth Presbyterian School. On the 27 th of September, 2010, Rev. Mark Mensah Boye dedicated the school and opened it. About 30 pupils were admitted on the first day and 4 teachers were also employed.',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                contentPadding: EdgeInsets.zero,
              ),
            ),
            SizedBox(
              child: ListTile(
                leading: SelectableText(
                  '2.',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                title: SelectableText(
                  'The church undertook feasibility study at Suncity to plant a church in line with the Presbyterian Culture of Evangelism. After the road map was prepared, the District was informed and came in with assistant leading to the planting of the Bethel Presbyterian Congregation at Suncity. A member of the IMC, Mr. Henry Ayiku has been assigned to this preaching point to take oversight duties and report on its activities.',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                contentPadding: EdgeInsets.zero,
              ),
            ),
            SizedBox(
              child: ListTile(
                leading: SelectableText(
                  '3.',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                title: SelectableText(
                  'We produced a catechist in the person of Catechist Seth Adu Arko, now in charge of the Ascension Preaching Post, Japan City.',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                contentPadding: EdgeInsets.zero,
              ),
            ),
            SizedBox(
              child: ListTile(
                leading: SelectableText(
                  '4.',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                title: SelectableText(
                  'The putting up of an Ultra-modern washroom to cater for the sanitary conditions of the church and school earmarked to be completed by September, 2021.',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                contentPadding: EdgeInsets.zero,
              ),
            ),
            SizedBox(
              child: ListTile(
                leading: SelectableText(
                  '5.',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                title: SelectableText(
                  'Renovation and facelifting of the Nazareth Preparatory School to make it more competitive also earmarked to be completed by end of October 2021 to make way for a new admission input by January 2022.',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                contentPadding: EdgeInsets.zero,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Container(
                margin: const EdgeInsets.only(left: 0.0),
                child: SelectableText(
                  "One key indicator or strength and grace otherwise challenge in managing the branch is the pandemic that broke in 2019 into 2020; Covid 19, that led to a lockdown and closure of all public places and gatherings including the church. Nazareth had its fair share of the blow both on membership, church administration and finances. However, through the grace of God, we supported the members that required support with food items amidst prayers said, further to other people in the environment through the church support scheme launched from the head office at the time. Main issue now is the attendance toservice after the restrictions had been lifted and been made flexible but we are keen on making sure the entire flock and new ones are served well during this challenging times.",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
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
                    'MEMBERSHIP',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                )),
            Container(
                margin: const EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      child: SelectableText(
                        "Membership of the congregation as at now stand as follows:",
                        style: Theme.of(context).textTheme.bodyText1,
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Table(
                        defaultColumnWidth: FixedColumnWidth(
                            MediaQuery.of(context).size.width * 0.2),
                        border: TableBorder.all(
                            color: Colors.grey,
                            style: BorderStyle.none,
                            width: 2),
                        children: [
                          TableRow(children: [
                            Column(children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.2,
                                child: SelectableText(
                                  "1. Adults",
                                  style: Theme.of(context).textTheme.bodyText1,
                                  textAlign: TextAlign.left,
                                ),
                              )
                            ]),
                            Column(children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.2,
                                child: SelectableText(
                                  "(a) Males",
                                  style: Theme.of(context).textTheme.bodyText1,
                                  textAlign: TextAlign.left,
                                ),
                              )
                            ]),
                            Column(children: [
                              SelectableText(
                                "-",
                                style: Theme.of(context).textTheme.bodyText1,
                              )
                            ]),
                            Column(children: [
                              SelectableText(
                                "125",
                                style: Theme.of(context).textTheme.bodyText1,
                              )
                            ]),
                          ]),
                          TableRow(children: [
                            Column(children: [
                              SelectableText(
                                "",
                                style: Theme.of(context).textTheme.bodyText1,
                              )
                            ]),
                            Column(children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.2,
                                child: SelectableText(
                                  "(b) Females",
                                  style: Theme.of(context).textTheme.bodyText1,
                                  textAlign: TextAlign.left,
                                ),
                              )
                            ]),
                            Column(children: [
                              SelectableText(
                                "-",
                                style: Theme.of(context).textTheme.bodyText1,
                              )
                            ]),
                            Column(children: [
                              SelectableText(
                                "112",
                                style: Theme.of(context).textTheme.bodyText1,
                              )
                            ]),
                          ]),
                          TableRow(children: [
                            Column(children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.2,
                                child: SelectableText(
                                  "2. Junior Youth (J.Y)",
                                  style: Theme.of(context).textTheme.bodyText1,
                                  textAlign: TextAlign.left,
                                ),
                              )
                            ]),
                            Column(children: [
                              SelectableText(
                                "",
                                style: Theme.of(context).textTheme.bodyText1,
                              )
                            ]),
                            Column(children: [
                              SelectableText(
                                "-",
                                style: Theme.of(context).textTheme.bodyText1,
                              )
                            ]),
                            Column(children: [
                              SelectableText(
                                "72",
                                style: Theme.of(context).textTheme.bodyText1,
                              )
                            ]),
                          ]),
                          TableRow(children: [
                            Column(children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.2,
                                child: SelectableText(
                                  "3. Children Service",
                                  style: Theme.of(context).textTheme.bodyText1,
                                  textAlign: TextAlign.left,
                                ),
                              )
                            ]),
                            Column(children: [
                              SelectableText(
                                "",
                                style: Theme.of(context).textTheme.bodyText1,
                              )
                            ]),
                            Column(children: [
                              SelectableText(
                                "-",
                                style: Theme.of(context).textTheme.bodyText1,
                              )
                            ]),
                            Column(children: [
                              SelectableText(
                                "163",
                                style: Theme.of(context).textTheme.bodyText1,
                              )
                            ]),
                          ]),
                          TableRow(children: [
                            Column(children: const [
                              SelectableText(
                                "TOTAL",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ]),
                            Column(children: [
                              SelectableText(
                                "",
                                style: Theme.of(context).textTheme.bodyText1,
                              )
                            ]),
                            Column(children: [
                              SelectableText(
                                "-",
                                style: Theme.of(context).textTheme.bodyText1,
                              )
                            ]),
                            Column(children: const [
                              SelectableText(
                                "472",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ]),
                          ]),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: SelectableText(
                        "Concerning the spiritual and welfare of the members, things are progressing as at 31st July, 2021. To God be the entire and first gratitude. His rich grace cannot be under emphasized. Ebenezer! Books cannot contain the names of all the good people, both deceased and alive for all their enormous input to make us reach this current state as a congregation.",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ],
                )),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
