import 'package:e_commerce_app/utils/colors.dart';
import 'package:e_commerce_app/widgets/app_colums.dart';
import 'package:e_commerce_app/widgets/app_icon.dart';
import 'package:e_commerce_app/widgets/big_text.dart';
import 'package:flutter/material.dart';


class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // background image------------------>>
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
          //icon widgets --------------------->>
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
          //introduction of food --------------------->>
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 340,
            child: Container(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20)
                  ),
                color: Colors.white
              ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AppColumn(text: "Chinese Slide",),
                    const SizedBox(height: 20,),
                    BigText(text: "Introduce")
                  ],
                ),
            ),
            ),
            //expandable text widget -------------------->
        ],
      ),
      bottomNavigationBar: Container(
        height: 120,
        padding: const EdgeInsets.only(top: 30,bottom: 30,left: 20,right: 20),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40)),
            color: AppColors.buttonBackgroundColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white
              ),
              child: Row(
                children: [
                  Icon(Icons.remove,color: AppColors.signColor,),
                  const SizedBox(width: 10,),
                  BigText(text: "0"),
                  const SizedBox(width: 10,),
                  Icon(Icons.add,color: AppColors.signColor,)
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20),
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.circular(20)),
                child: BigText(
                  text: "\$10 | Add to cart",
                  color: Colors.white,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}