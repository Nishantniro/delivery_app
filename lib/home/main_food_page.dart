import 'package:flutter/material.dart';
import 'package:khamkham/home/food_page_body.dart';
import 'package:khamkham/utils/colors.dart';
import 'package:khamkham/utils/dimensions.dart';
import 'package:khamkham/widgets/big_text.dart';
import 'package:khamkham/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: Dimensions.height45,
              bottom: Dimensions.height15,
            ),
            padding: EdgeInsets.only(
              left: Dimensions.width10,
              right: Dimensions.width10,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        BigText(text: 'Nepal'),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 17.0),
                              child: SmallText(
                                text: "Damak",
                                color: Colors.black54,
                              ),
                            ),
                            Icon(Icons.arrow_drop_down_outlined),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: Dimensions.height45,
                      width: Dimensions.width45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          Dimensions.radius15,
                        ),
                        color: AppColors.mainColor,
                      ),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: Dimensions.icon24,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          FoodPageBody(),
        ],
      ),
    );
  }
}
