import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  double height;

  SmallText({
    super.key,
    this.height = 1.2, // for the space b/t two line
    this.color = const Color(0xFFccc7c5),
    required this.text,
    this.size = 13,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
        fontSize: size,
        height: height
      ),
    );
  }
}
