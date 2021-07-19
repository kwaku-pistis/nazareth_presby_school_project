import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                color: null,
                // padding: const EdgeInsets.only(left: 10, right: 10),
                child: Card(
                  elevation: 10.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Image(
                        image: AssetImage('assets/images/pcg_logo.png'),
                        width: 70,
                        height: 70,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            onPressed: null, 
                            child: Text("HOME", style: Theme.of(context).textTheme.headline2,)
                          ),
                          TextButton(
                            onPressed: null, 
                            child: Text("ABOUT PROJECT", style: Theme.of(context).textTheme.headline2,)
                          ),
                          TextButton(
                            onPressed: null, 
                            child: Text("ABOUT US", style: Theme.of(context).textTheme.headline2,)
                          ),
                          TextButton(
                            onPressed: null, 
                            child: Text("CONTACT US", style: Theme.of(context).textTheme.headline2,)
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: null, 
                        child: Text("DONATE", style: Theme.of(context).textTheme.button,)
                      )
                    ],
                  ),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: null,
                  child: Text(
                    "WORK IN PROGRESS",
                    style: Theme.of(context).textTheme.button,
                  ),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
