import 'package:cusotom_bottom_nav_bar/botttom_navigation_bar_screen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavBarScreen(),
    );
  }
}
