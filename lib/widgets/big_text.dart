import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overflow;
  
  BigText({
    super.key, 
    // this is a default colur, u can change a/c to u in use
    this.color = const Color(0xFF332d2b),
    required this.text,
    this.size = 23,
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
        fontSize: size,
        fontFamily: 'Roboto'
      ),
    );
  }
}
