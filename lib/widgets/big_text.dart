import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overflow;
  
  BigText({
    super.key, 
    // The default value is const Color(0xFF332d2b), but this can be overridden by the user
    this.color = const Color(0xFF332d2b),
    required this.text,
    //The default value is 23, but this can be overridden by the user
    this.size = 0,
    this.overflow = TextOverflow.ellipsis
    });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w400,
        fontSize: size == 0 ? 20 : size,
        fontFamily: 'Roboto'
      ),
    );
  }
}
