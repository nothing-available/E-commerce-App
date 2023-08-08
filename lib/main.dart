import 'package:e_commerce_app/screens/pages/food/popular_food_detail.dart';
import 'package:e_commerce_app/screens/pages/home/main_food_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: PopularFoodDetail(),
    );
  }
}
