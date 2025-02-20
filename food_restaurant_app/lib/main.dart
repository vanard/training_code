import 'package:flutter/material.dart';
import 'package:food_restaurant_app/screens/home/app_bar_home_food.dart';
import 'package:food_restaurant_app/screens/home/home_food_body.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          // backgroundColor: Colors.blueAccent,
          body: Column(
        children: [
          AppBarHomeFood(),
          Expanded(
              child: SingleChildScrollView(
            child: HomeFoodBody(),
          )),
        ],
      )),
    );
  }
}
