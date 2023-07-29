import 'package:e_commerce_app/home/main_food_page.dart';
import 'package:flutter/material.dart';
import 'dart:ui';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainFoodPage(),
    );
  }
}
