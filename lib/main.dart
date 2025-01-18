// import 'package:dashboard/Screens/Calender.dart';
import 'package:dashboard/Screens/DashboardScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(OfficeDashboardApp());
}

class OfficeDashboardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardScreen(),
    );
  }
}
