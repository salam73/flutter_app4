import 'package:flutter/material.dart';
import 'package:flutter_app4/secondPage.dart';
import 'homePage.dart';
import 'package:flutter_app4/profiles/profile1.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

      //  primarySwatch: Colors.blue,
        brightness: Brightness.dark
      ),
      home: Profile1(),
      debugShowCheckedModeBanner: false,
    );
  }
}
