import 'package:flutter/material.dart';
import 'package:khamkham/home/main_food_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'khamkhams',
      theme: ThemeData(primarySwatch: Colors.blue),

      home: MainFoodPage(),
    );
  }
}
