import 'dart:ffi';

import 'package:e_commerce_app/colors.dart';
import 'package:e_commerce_app/utils/dimension.dart';
import 'package:e_commerce_app/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  const ExpandableText({super.key, required this.text});

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late String firstHalf; //use late because we initialize the later
  late String secondhalf;
  bool hiddenText = true;

  double textHeight = Dimension.screenHeight / 5.63;

  @override
  // The initState() is a method that is called when an object for your stateful widget is created and inserted inside the widget tree. It is basically the entry point for the Stateful Widgets.
  void initState() { 
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondhalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondhalf = " ";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondhalf.isEmpty
          ? SmallText(size: Dimension.font16,color: AppColors.paraColor, text: firstHalf)
          : Column(
              children: [
                SmallText(
                  height: 1.8,
                  color: AppColors.paraColor,
                  size: Dimension.font16,
                    text: hiddenText
                        ? (firstHalf + "...")
                        : (firstHalf + secondhalf)),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(
                    children: [
                      SmallText(
                        text: "show more",
                        color: AppColors.mainColor,
                      ),
                      Icon(
                        hiddenText? Icons.arrow_drop_down:Icons.arrow_drop_up,
                        color: AppColors.mainColor,
                      )
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
