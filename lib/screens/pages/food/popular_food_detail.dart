import 'package:e_commerce_app/widgets/app_icon.dart';
import 'package:flutter/material.dart';


class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 360,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                  "assets/images/food0.png"
                ),
                ),
              ),
          )),
          Positioned(
            top: 40,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppIcon(icon: Icons.arrow_back_ios,),
                AppIcon(icon: Icons.shopping_cart_outlined,)
              ],
          )),
          Positioned(
            left: 0,
            right: 0,
            top: 340,
            child: Container(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.lightBlue
              ),
            )
            )
        ],
      ),
    );
  }
}