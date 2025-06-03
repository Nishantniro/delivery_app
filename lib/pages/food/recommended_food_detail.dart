import 'package:flutter/material.dart';
import 'package:khamkham/utils/colors.dart';
import 'package:khamkham/utils/dimensions.dart';
import 'package:khamkham/widgets/app_icon.dart';
import 'package:khamkham/widgets/big_text.dart';
import 'package:khamkham/widgets/expendable_text_widget.dart';

class RecommenededFoodDetail extends StatelessWidget {
  const RecommenededFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                AppIcon(icon: Icons.close),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(25),

              child: Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius15),
                    topRight: Radius.circular(Dimensions.radius15),
                  ),
                ),
                padding: EdgeInsets.only(
                  top: Dimensions.height5,
                  bottom: Dimensions.height5,
                ),

                child: Center(
                  child: BigText(
                    size: Dimensions.font26,
                    text: "chicken and rice",
                  ),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/food0.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                  ),
                  child: ExpendableTextWidget(
                    text:
                        "Chicken is a type of poultry that is widely consumed around the world.  It    known   for   its versatility in cooking and can be prepared in various ways, including grilling, frying, baking, and boiling. Chicken is a rich source of protein and essential nutrients, making it a popular choice for many diets. It can be seasoned with a variety of spices and herbs to enhance its flavor, and it pairs well with a wide range of side dishes such as vegetables, rice, and potatoes. Whether enjoyed in a salad, sandwich, or as a main course, chicken remains a staple in many cuisines.Chicken is a type of poultry that is widely consumed around the world. It is known for its versatility in cooking and can be prepared in various ways, including grilling, frying, baking, and boiling. Chicken is a rich source of protein and essential nutrients, making it a popular choice for many diets. It can be seasoned with a variety of spices and herbs to enhance its flavor, and it pairs well with a wide range of side dishes such as vegetables, rice, and potatoes. Whether enjoyed in a salad, sandwich, or as a main course, chicken remains a staple in many cuisines.Chicken is a type of poultry that is widely consumed around the world. It is known for its versatility in cooking and can be prepared in various ways, including grilling, frying, baking, and boiling. Chicken is a rich source of protein and essential nutrients, making it a popular choice for many diets. It can be seasoned with a variety of spices and herbs to enhance its flavor, and it pairs well with a wide range of side dishes such as vegetables, rice, and potatoes. Whether enjoyed in a salad, sandwich, or as a main course, chicken remains a staple in many cuisines.Chicken is a type of poultry that is widely consumed around the world. It is known for its versatility in cooking and can be prepared in various ways, including grilling, frying, baking, and boiling. Chicken is a rich source of protein and essential nutrients, making it a popular choice for many diets. It can be seasoned with a variety of spices and herbs to enhance its flavor, and it pairs well with a wide range of side dishes such as vegetables, rice, and potatoes. Whether enjoyed in a salad, sandwich, or as a main course, chicken remains a staple in many cuisines.Chicken is a type of poultry that is widely consumed around the world. It is known for its versatility in cooking and can be prepared in various ways, including grilling, frying, baking, and boiling. Chicken is a rich source of protein and essential nutrients, making it a popular choice for many diets. It can be seasoned with a variety of spices and herbs to enhance its flavor, and it pairs well with a wide range of side dishes such as vegetables, rice, and potatoes. Whether enjoyed in a salad, sandwich, or as a main course, chicken remains a staple in many cuisines.Chicken is a type of poultry that is widely consumed around the world. It is known for its versatility in cooking and can be prepared in various ways, including grilling, frying, baking, and boiling. Chicken is a rich source of protein and essential nutrients, making it a popular choice for many diets. It can be seasoned with a variety of spices and herbs to enhance its flavor, and it pairs well with a wide range of side dishes such as vegetables, rice, and potatoes. Whether enjoyed in a salad, sandwich, or as a main course, chicken remains a staple in many cuisines.Chicken is a type of poultry that is widely consumed around the world. It is known for its versatility in cooking and can be prepared in various ways, including grilling, frying, baking, and boiling. Chicken is a rich source of protein and essential nutrients, making it a popular choice for many diets. It can be seasoned with a variety of spices and herbs to enhance its flavor, and it pairs well with a wide range of side dishes such as vegetables, rice, and potatoes. Whether enjoyed in a salad, sandwich, or as a main course, chicken remains a staple in many cuisines.Chicken is a type of poultry that is widely consumed around the world. It is known for its versatility in cooking and can be prepared in various ways, including grilling, frying, baking, and boiling. Chicken is a rich source of protein and essential nutrients, making it a popular choice for many diets. It can be seasoned with a variety of spices and herbs to enhance its flavor, and it pairs well with a wide range of side dishes such as vegetables, rice, and potatoes. Whether enjoyed in a salad, sandwich, or as a main course, chicken remains a staple in many cuisines.Chicken is a type of poultry that is widely consumed around the world. It is known for its versatility in cooking and can be prepared in various ways, including grilling, frying, baking, and boiling. Chicken is a rich source of protein and essential nutrients, making it a popular choice for many diets. It can be seasoned with a variety of spices and herbs to enhance its flavor, and it pairs well with a wide range of side dishes such as vegetables, rice, and potatoes. Whether enjoyed in a salad, sandwich, or as a main course, chicken remains a staple in many cuisines.Chicken is a type of poultry that is widely consumed around the world. It is known for its versatility in cooking and can be prepared in various ways, including grilling, frying, baking, and boiling. Chicken is a rich source of protein and essential nutrients, making it a popular choice for many diets. It can be seasoned with a variety of spices and herbs to enhance its flavor, and it pairs well with a wide range of side dishes such as vegetables, rice, and potatoes. Whether enjoyed in a salad, sandwich, or as a main course, chicken remains a staple in many cuisines.Chicken is a type of poultry that is widely consumed around the world. It is known for its versatility in cooking and can be prepared in various ways, including grilling, frying, baking, and boiling. Chicken is a rich source of protein and essential nutrients, making it a popular choice for many diets. It can be seasoned with a variety of spices and herbs to enhance its flavor, and it pairs well with a wide range of side dishes such as vegetables, rice, and potatoes. Whether enjoyed in a salad, sandwich, or as a main course, chicken remains a staple in many cuisines.",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              top: Dimensions.height10,
              bottom: Dimensions.height10,
              left: Dimensions.width20 * 3,
              right: Dimensions.width20 * 3,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  iconSize: Dimensions.icon24,
                  icon: Icons.remove,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                ),
                BigText(
                  text: "\रु15 " + " X " + " 0 ",
                  color: AppColors.mainBlackColor,
                  size: Dimensions.font26,
                ),

                AppIcon(
                  iconSize: Dimensions.icon24,
                  icon: Icons.add,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                ),
              ],
            ),
          ),
          Container(
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
                  width: 60,

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
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                    size: Dimensions.icon24,
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
                  child: BigText(
                    text: "रु 15 | Add to cart",
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
