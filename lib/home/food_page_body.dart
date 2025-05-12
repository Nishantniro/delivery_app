import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:khamkham/utils/colors.dart';
import 'package:khamkham/utils/dimensions.dart';
import 'package:khamkham/widgets/big_text.dart';
import 'package:khamkham/widgets/icon_and_text.dart';
import 'package:khamkham/widgets/small_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pagecontroller = PageController(viewportFraction: 0.85);
  var _CurrPageValue = 0.0;
  double _ScaleFactor = 0.8;
  double _height = Dimensions.pageViewContainer;

  @override
  void initState() {
    super.initState();

    pagecontroller.addListener(() {
      setState(() {
        _CurrPageValue = pagecontroller.page!;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pagecontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //slider part
        Container(
          height: Dimensions.pageView,
          child: PageView.builder(
            itemCount: 5,
            controller: pagecontroller,
            itemBuilder: (context, position) {
              return _buildPageItem(position);
            },
          ),
        ),

        //dots indicator
        new DotsIndicator(
          dotsCount: 5,
          position: _CurrPageValue,
          decorator: DotsDecorator(
            activeColor: AppColors.mainColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Dimensions.radius5),
            ),
          ),
        ),

        //popular text
        SizedBox(height: Dimensions.height20),
        Container(
          margin: EdgeInsets.only(left: Dimensions.radius30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: "popular", color: Colors.black),
              SizedBox(width: Dimensions.width10),
              Container(
                margin: EdgeInsets.only(bottom: 3),
                child: BigText(text: ".", color: Colors.black26),
              ),

              SizedBox(width: Dimensions.width10),

              Container(
                margin: EdgeInsets.only(bottom: 3),
                child: SmallText(
                  text: "Food pair",
                  color: Colors.black26,
                  size: Dimensions.radius15,
                ),
              ),
            ],
          ),
        ),

        //lists of food with list view builder
        Container(
          height: 900,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 10,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  bottom: Dimensions.height20,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          Dimensions.radius20,
                        ),
                        color: Colors.red,
                        image: DecorationImage(
                          image: AssetImage("assets/images/food0.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //text container food name
                    Expanded(
                      child: Container(
                        height: 100,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(Dimensions.radius20),
                            bottomRight: Radius.circular(Dimensions.radius20),
                          ),
                          color: const Color.fromARGB(255, 231, 5, 5),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == _CurrPageValue.floor()) {
      var currScale = 1 - (_CurrPageValue - index) * (1 - _ScaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _CurrPageValue.floor() + 1) {
      var currScale =
          _ScaleFactor + (_CurrPageValue - index + 1) * (1 - _ScaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _CurrPageValue.floor() - 1) {
      var currScale = 1 - (_CurrPageValue - index) * (1 - _ScaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - currScale) / 2, 0);
    }
    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Dimensions.pageViewContainer,
            margin: EdgeInsets.only(left: 9, right: 9),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius30),
              color:
                  index.isEven
                      ? Color(0xFF69c5df)
                      : Color.fromARGB(255, 204, 190, 146),
              image: DecorationImage(
                image: AssetImage("assets/images/food0.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.pageViewTextContainer,
              margin: EdgeInsets.only(left: 25, right: 25, bottom: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFe8e8e8),
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                  BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
                  BoxShadow(color: Colors.white, offset: Offset(5, 0)),
                ],
              ),
              child: Container(
                padding: EdgeInsets.only(
                  top: Dimensions.height15,
                  left: Dimensions.height15,
                  right: Dimensions.height15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text: "Chowmein", color: Colors.black54),
                    SizedBox(height: Dimensions.height5),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(5, (index) {
                            return Icon(
                              Icons.star,
                              color: AppColors.mainColor,
                              size: 17,
                            );
                          }),
                        ),
                        SizedBox(width: 5),
                        SmallText(text: "4.5"),
                        SizedBox(width: 10),
                        SmallText(text: "1287"),
                        SizedBox(width: 5),
                        SmallText(text: "comments"),
                      ],
                    ),
                    SizedBox(height: Dimensions.height20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconAndText(
                          icon: Icons.circle_sharp,
                          iconColor: AppColors.iconColor1,
                          text: 'Normal',
                        ),
                        SizedBox(width: 10),
                        IconAndText(
                          icon: Icons.location_on,
                          iconColor: AppColors.mainColor,
                          text: '1.7km',
                        ),
                        SizedBox(width: 10),
                        IconAndText(
                          icon: Icons.access_time_rounded,
                          iconColor: AppColors.iconColor2,
                          text: '20min',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
