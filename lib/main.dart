import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:workshopmobile/home/Homepage.dart';
import 'package:workshopmobile/notification/Notificationpage.dart';
import 'package:workshopmobile/home/tab_pages.dart';
//void main() => runApp(myApp())
// void main ini, (=>)akan menjalankan method runApp().
// runApp akan menjalankan App dari class MyApp()
void main() {
  runApp(const MyApp(title: "Workshop Mobile V1",));
}

class MyApp extends StatelessWidget {
  final title;
  const MyApp({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: this.title,
      home: Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

