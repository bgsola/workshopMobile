import 'package:flutter/material.dart';
import 'package:workshopmobile/account/Accountpage.dart';

class MenuComponent extends StatefulWidget {
  MenuComponent( {Key? key, this.value = 0, required this.onChanged}) : super(key: key);
  int value;
  final Function onChanged;
  @override
  State<MenuComponent> createState() => _MenuComponentState();
}

class _MenuComponentState extends State<MenuComponent> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      widget.value = index;
      widget.onChanged(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.format_shapes),
          label: "Alarm",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_box_outlined),
          label: 'Account',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Color(0xff30D285),
      onTap: _onItemTapped,

    );
  }
}
