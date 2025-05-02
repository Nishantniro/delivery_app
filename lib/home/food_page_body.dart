import 'package:flutter/material.dart';
import 'package:khamkham/widgets/big_text.dart';
import 'package:khamkham/utils/colors.dart';
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
  double _height = 220;

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
    return Container(
      height: 320,
      child: PageView.builder(
        itemCount: 5,
        controller: pagecontroller,
        itemBuilder: (context, position) {
          return _buildPageItem(position);
        },
      ),
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
            height: 220,
            margin: EdgeInsets.only(left: 9, right: 9),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
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
              height: 130,
              width: 400,
              margin: EdgeInsets.only(left: 25, right: 25, bottom: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: Container(
                padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text: "Chowmein", color: Colors.black54),
                    SizedBox(height: 5),
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
                    SizedBox(height: 30),
                    Row(
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
