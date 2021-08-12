import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:nazareth_presby_school_project/style/colors.dart';

class GivingsDialog extends StatefulWidget {
  const GivingsDialog({Key? key}) : super(key: key);

  @override
  _GivingsDialogState createState() => _GivingsDialogState();
}

class _GivingsDialogState extends State<GivingsDialog> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: CustomColor.white,
      elevation: 10,
      shadowColor: Colors.black54,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/giving.jpg'),
          fit: BoxFit.cover,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              child: SelectableText(
                'Click on any of the buttons below to give an offering or donate to the projects',
                style: TextStyle(
                  fontSize: 16.0,
                  color: CustomColor.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: 300,
              child: ElevatedButton(
                onPressed: () {},
                child: SelectableText(
                  'TITHE',
                  style: Theme.of(context).textTheme.button,
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(CustomColor.green)),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 300,
              child: ElevatedButton(
                onPressed: () {},
                child: SelectableText(
                  'OFFERING',
                  style: Theme.of(context).textTheme.button,
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(CustomColor.green)),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 300,
              child: ElevatedButton(
                onPressed: () {},
                child: SelectableText(
                  'DONATE TO SCHOOL BUILDING',
                  style: Theme.of(context).textTheme.button,
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(CustomColor.green)),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 300,
              child: ElevatedButton(
                onPressed: () {},
                child: SelectableText(
                  'DONATE TO CHURCH BUILDING',
                  style: Theme.of(context).textTheme.button,
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(CustomColor.green)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
