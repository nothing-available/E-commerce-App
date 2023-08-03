import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: PageView.builder(
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildpageItem(position);
          }),
    );
  }

  Widget _buildpageItem(int index) {
    return Container(
      height: 220,
      margin: EdgeInsets.only(left: 5,right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: index.isEven?const Color(0xFF69c5df):const Color(0xFF9294cc),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/burger.jpg"))
      ),
    );
  }
}
