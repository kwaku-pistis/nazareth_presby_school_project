import 'package:flutter/material.dart';

class MobileMenu extends StatefulWidget {
  const MobileMenu({Key? key}) : super(key: key);

  @override
  _MobileMenuState createState() => _MobileMenuState();
}

class _MobileMenuState extends State<MobileMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(20),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'HOME',
                  style: TextStyle(fontSize: 16.0, color: Colors.black),
                  textAlign: TextAlign.left,
                ),
              )),
          Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: (){},
                child: const Text(
                  'SCHOOL PROJECT',
                  style: TextStyle(fontSize: 16.0, color: Colors.black),
                ),
              )),
          Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: (){},
                child: const Text(
                  'SCHOOL INFO',
                  style: TextStyle(fontSize: 16.0, color: Colors.black),
                ),
              )),
          Container(
            width: MediaQuery.of(context).size.width,
              alignment: Alignment.centerLeft,
            child: TextButton(
              onPressed: (){}, 
              child: const Text(
                'CONTACT US',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black
                ),
              ),
            )
          ),
        ],
      ),
    );
  }
}
