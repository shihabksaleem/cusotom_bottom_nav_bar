import 'package:cusotom_bottom_nav_bar/cusotm_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class BottomNavBarScreen extends StatelessWidget {
  const BottomNavBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
