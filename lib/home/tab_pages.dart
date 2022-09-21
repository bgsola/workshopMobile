import 'package:flutter/material.dart';

class Enablepage extends StatelessWidget {
  const Enablepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        padding: const EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 16.0),
        children: <Widget>[
          ListEnergy3(),
          ListEnergy3()
        ]
    );
  }
}

class Disablepage extends StatelessWidget {
  const Disablepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        padding: const EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 16.0),
        children: <Widget>[
          ListEnergy3(),
          ListEnergy3()
        ]
    );
  }
}

class Recordedpage extends StatelessWidget {
  const Recordedpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        padding: const EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 16.0),
        children: <Widget>[
          ListEnergy3(),
          ListEnergy3()
        ]
    );
  }
}

Widget ListEnergy3() {
  return Padding(
    padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 12.0),
    child: Container(
      // width: 1000,
      child: Padding(
        padding: EdgeInsets.fromLTRB(14.0, 16.0, 14.0, 16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
                    child: const Text('DTCPDFE', textAlign: TextAlign.left),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.warning_amber_outlined,
                    size: 16,
                    color: Color(0xffD16160),

                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: const Text('Datacom PD Front End', textAlign: TextAlign.left),
                ),
              ],
            )
          ],
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 1, color: Colors.black26),
        // boxShadow: [
        //   BoxShadow(color: Colors.green, spreadRadius: 3),
        // ],
      ),
    ),
  );
}

