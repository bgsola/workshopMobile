import 'package:flutter/material.dart';
import 'package:workshopmobile/account/Accountpage.dart';
import 'package:workshopmobile/alarm/Alarmpage.dart';
import 'package:workshopmobile/component/menu/Menucomponent.dart';
import 'package:workshopmobile/home/tab_pages.dart';
import 'package:workshopmobile/notification/Notificationpage.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<Widget> _menus = [safe(), AlarmPage(), Accountpage()];
  ValueNotifier dropdownValueNotifier = ValueNotifier(0);
  int value = 0;
  String title = "Sri Wulandari";

  void _onchoiceMenu(int index) {
    setState(() {
      value = index;
      if (value == 0) {
        title = "Sri Wulandari";
      } else if (value == 1) {
        title = "Alarm";
      } else if (value == 2) {
        title = "Account";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(title, style: TextStyle(color: Colors.black)),
          actions: (value == 0)
              ? <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 15.0, 0.0),
                    child: IconButton(
                      icon: Image.asset('icon/bell.png'),
                      //const Icon(Icons.add_alert_outlined, color: Colors.black),
                      tooltip: 'Show Snackbar',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Notificationpage()),
                        );
                      },
                    ),
                  ),
                ]
              : null,
          bottom: (value != 2)
              ? TabBar(
                  indicatorColor: Colors.green,
                  labelColor: Colors.black,
                  labelPadding: EdgeInsets.symmetric(horizontal: 2.0),
                  padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 7.0),
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                      Tab(text: (value == 0) ? 'Enabled' : 'All'),
                      Tab(text: (value == 0) ? 'Disabled' : 'Unconfirm'),
                      Tab(text: (value == 0) ? 'Recorded' : 'Confirm'),
                    ])
              : null,
          backgroundColor: Colors.white,
        ),

        body: Container(
          child: _menus[value],
        ),
        bottomNavigationBar: MenuComponent(
            value: value,
            onChanged: (int index) {
              _onchoiceMenu(index);
            }),
      ),
    );
  }
}

Widget safe() {
  return const SafeArea(
      child:
          TabBarView(children: [Enablepage(), Disablepage(), Recordedpage()]));
}
