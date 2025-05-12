import 'package:flutter/material.dart';
import 'package:khamkham/utils/dimensions.dart';

class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  double height;

  SmallText({
    super.key,
    this.color = Colors.black26,
    required this.text,
    this.size = 0,
    this.height = 1.2,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,

      style: TextStyle(
        fontFamily: 'Roboto',
        height: height,

        color: color,
        fontWeight: FontWeight.w400,
        fontSize: size == 0 ? Dimensions.font12 : size,
      ),
    );
  }
}
