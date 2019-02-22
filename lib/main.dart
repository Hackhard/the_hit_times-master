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
        primaryColor: Color(0xFF7700FF),
        accentColor: Color(0xFF130f40),
        //brightness: Brightness.dark,
      ),
      home: new MainPage(),
    );
  }
}
