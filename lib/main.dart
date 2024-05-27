// main.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_2/view/screens/Dashboard.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: ProfilePage(),
    );
  }
}