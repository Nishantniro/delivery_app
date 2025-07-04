import 'package:flutter/material.dart';
import 'package:khamkham/utils/colors.dart';
import 'package:khamkham/utils/dimensions.dart';
import 'package:khamkham/widgets/app_column.dart';
import 'package:khamkham/widgets/app_icon.dart';
import 'package:khamkham/widgets/big_text.dart';
import 'package:khamkham/widgets/expendable_text_widget.dart';
import 'package:khamkham/widgets/icon_and_text.dart';
import 'package:khamkham/widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodImgSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/food0.png"),
                ),
              ),
            ),
          ),

          Positioned(
            left: Dimensions.height20,
            right: Dimensions.height20,
            top: Dimensions.popularFoodImgSize - 320,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
          ),

          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularFoodImgSize - 15,
            child: Container(
              padding: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
                top: Dimensions.height20,
                bottom: Dimensions.height20,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.radius20),
                  topRight: Radius.circular(Dimensions.radius20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(text: "Chicken Chowmein"),
                  SizedBox(height: Dimensions.height20),
                  BigText(text: "Introduce"),
                  SizedBox(height: Dimensions.height20),
                  Expanded(
                    child: SingleChildScrollView(
                      child: ExpendableTextWidget(
                        text:
                            "hello this is chicken chowmein of bhumika restaurant.hello this is chicken chowmein of bhumika restaurant.hello this is chicken chowmein of bhumika restaurant.hello this is chicken chowmein of bhumika restaurant.hello this is chicken chowmein of bhumika restaurant.hello this is chicken chowmein of bhumika restaurant.hello this is chicken chowmein of bhumika restaurant.hello this is chicken chowmein of bhumika restaurant.hello this is chicken chowmein of bhumika restaurant. It is very delicious and tasty. You can enjoy it with your friends and family. It is made with fresh ingredients and cooked to perfection. The noodles are soft and the chicken is tender. You will love the flavors and the aroma of this dish. It is a must-try for all food lovers.",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(
          top: Dimensions.radius30,
          bottom: Dimensions.radius30,
          left: Dimensions.width20,
          right: Dimensions.width20,
        ),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.width20 * 2),
            topRight: Radius.circular(Dimensions.width20 * 2),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 60,

              padding: EdgeInsets.only(
                top: Dimensions.height5,
                bottom: Dimensions.height5,
                left: Dimensions.width10,
                right: Dimensions.width10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(Icons.add, color: AppColors.signColor),
                  SizedBox(width: Dimensions.width10),
                  BigText(text: "0"),
                  SizedBox(width: Dimensions.width10),
                  Icon(Icons.remove, color: AppColors.signColor),
                ],
              ),
            ),

            Container(
              height: 60,

              padding: EdgeInsets.only(
                top: Dimensions.height15,
                bottom: Dimensions.height15,
                left: Dimensions.width10,
                right: Dimensions.width10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: AppColors.mainColor,
              ),
              child: BigText(text: "\रु 15 | Add to cart", color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
