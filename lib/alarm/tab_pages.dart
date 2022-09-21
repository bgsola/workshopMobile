import 'package:flutter/material.dart';
import 'package:workshopmobile/alarm/AlarmConfirmpage.dart';
import 'package:workshopmobile/notification/Notificationpage.dart';

class AllTab extends StatefulWidget {
  const AllTab({Key? key}) : super(key: key);

  @override
  State<AllTab> createState() => _AllTabState();
}

class _AllTabState extends State<AllTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 12, 10, 12),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
              padding: EdgeInsets.all(5.0),
              child: Card(
                child: ListTile(
                  title: Row(
                    children: const <Widget>[
                      Expanded(
                        flex: 5,
                        child: Text("Sept 14, 2022 11:45:00",
                            style: TextStyle(fontSize: 12)),
                      ),
                      Positioned(
                        right: 0.0,
                        top: 0.0,
                        child: Text("Unconfirm",
                                      style: TextStyle(color: Colors.red, fontSize: 12)),
                      ),
                      // Align(
                      //     alignment: Alignment.topRight,
                      //     child: Padding(
                      //       padding: EdgeInsets.only(top: 5.0),
                      //       child: Text("Unconfirm",
                      //           style: TextStyle(color: Colors.red)),
                      //     )
                      // )
                    ],
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Divider(color: Colors.cyan),
                      Text("Energy Meter name", style: TextStyle(fontSize: 14)),
                      Text("Energy Meter Alarm Profile",
                          style: TextStyle(fontSize: 14)),
                      Text("v < 125", style: TextStyle(fontSize: 14)),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AlarmConfirmpage()),
                    );
                  },
                ),
              ));
        },
      ),
    );
  }
}

class ConfirmTab extends StatefulWidget {
  const ConfirmTab({Key? key}) : super(key: key);

  @override
  State<ConfirmTab> createState() => _ConfirmTabState();
}

class _ConfirmTabState extends State<ConfirmTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 12, 20, 12),
      child: Text("ConfirmTab"),
    );
  }
}

class UnconfirmTab extends StatefulWidget {
  const UnconfirmTab({Key? key}) : super(key: key);

  @override
  State<UnconfirmTab> createState() => _UnconfirmTabState();
}

class _UnconfirmTabState extends State<UnconfirmTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 12, 20, 12),
      child: Text("UnconfirmTab"),
    );
  }
}
