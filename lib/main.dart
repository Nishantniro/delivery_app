import 'package:flutter/material.dart';
import 'package:khamkham/pages/food/popular_food_detail.dart';
import 'package:khamkham/pages/food/recommended_food_detail.dart';
import 'package:khamkham/pages/home/main_food_page.dart';
import 'package:get/get.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'khamkhams',
      theme: ThemeData(primarySwatch: Colors.blue),

      home: RecommenededFoodDetail(),
    );
  }
}
