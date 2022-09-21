import 'package:flutter/material.dart';

class AlarmConfirmpage extends StatefulWidget {
  const AlarmConfirmpage({Key? key}) : super(key: key);

  @override
  State<AlarmConfirmpage> createState() => _AlarmConfirmpageState();
}

class _AlarmConfirmpageState extends State<AlarmConfirmpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          ListView(
            children: const [
              Text('Item 1'),
              Text('Item 2'),
              Text('Item 3'),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.all(5),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Bottom Button '),
              ),
            ),
          )
        ],
      ),
    );
  }
}
