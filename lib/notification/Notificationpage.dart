import 'package:flutter/material.dart';

class Notificationpage extends StatefulWidget {
  const Notificationpage({Key? key}) : super(key: key);

  @override
  State<Notificationpage> createState() => _NotificationpageState();
}

class _NotificationpageState extends State<Notificationpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.fromLTRB(16, 20, 16, 20),
          child: Text("Notification", style: TextStyle(color: Colors.black)),
        ),
        backgroundColor: Colors.white,
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: <Widget>[
          Padding(padding: EdgeInsets.fromLTRB(20, 20, 20, 20)),
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.black),
            tooltip: 'Show Snackbar',
            onPressed: () {
              // ScaffoldMessenger.of(context).showSnackBar(
              //     const SnackBar(content: Text('This is a snackbar')));
              // Navigator.push(
              //   context,
              //   // MaterialPageRoute(builder: (context) => const NotificationPage()),
              // );
            },
          ),
        ],
      ),
      body: ListView.builder(
          padding: const EdgeInsets.fromLTRB(16.0, 20.0, 0.0, 20.0),
          itemBuilder: /*1*/ (context, i) {
            if (i.isOdd) return const Divider(); /*2*/

            // final index = 0; /*3*/
            // final word = "Text";
            // if (index <= 10) {
            //   // word+=index;/*4*/
            // }
            return ListTile(

            );
          }),
      // ListView(
      //     children: <Widget>[
      //       Container(
      //         decoration: const BoxDecoration(
      //           border: Border.all(color: Colors.black,),
      //           borderRadius: const BorderRadius.all(Radius.circular(8)),
      //         ),
      //         child: Padding(
      //           padding: EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 20.0),
      //           child: Text(
      //             'Hello World',
      //             textDirection: TextDirection.ltr,
      //             style: TextStyle(
      //               fontSize: 32,
      //               color: Colors.black87,
      //             ),
      //           ),
      //         )
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 20.0),
      //         child: Row(
      //           children: const <Widget>[
      //             Expanded(
      //               child: Text('Deliver features faster'),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ]
      // ),
    );
  }
}
