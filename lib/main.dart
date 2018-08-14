import 'package:flutter/material.dart';
import 'package:the_hit_times/homepage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "THE HIT TIMES",
      theme: ThemeData(
        primaryColor: Colors.black,
        accentColor: Colors.black,
        //brightness: Brightness.dark,
      ),
      home: new MainPage(),
    );
  }
}
