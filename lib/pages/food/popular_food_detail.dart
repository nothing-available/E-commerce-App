import 'package:e_commerce_app/utils/dimension.dart';
import 'package:flutter/material.dart';
import '../../colors.dart';
import '../../widgets/app_column.dart';
import '../../widgets/app_icon.dart';
import '../../widgets/big_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
      children: [
        Positioned(
          left: 0,
          right: 0,
          child: Container(
            width: double.maxFinite,
            height: Dimension.popularFoodImgSize,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/burger.jpg")
                )
            ),
          ),
        ),

        Positioned(
          top: Dimension.height45,
          left: Dimension.width20,
          right: Dimension.width20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppIcon(icon: Icons.arrow_back_ios, ),
              AppIcon(icon: Icons.shopping_cart_outlined)
            ],
          )
          ),

          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimension.popularFoodImgSize-40,
            child: Container(
              padding: EdgeInsets.only(left: Dimension.width20,right: Dimension.width20,top: Dimension.height20),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimension.radius20),
                  topLeft: Radius.circular(Dimension.radius20),
                ),
                color: Colors.white
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(text: 'Burger',),
                  SizedBox(height: Dimension.height20,),
                  BigText(text: "Introduce")
                ],
              ),
          ))
      ],  
      ),
      bottomNavigationBar: Container(
        height: Dimension.bottomHeightBar,
        padding: EdgeInsets.only(top: Dimension.height30,bottom: Dimension.height30,left: Dimension.width20, right: Dimension.width20),

        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(Dimension.radius20*2),
            topLeft: Radius.circular(Dimension.radius20*2)
            ) 
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                top: Dimension.height20,
                bottom: Dimension.height20,
                left: Dimension.width20,
                right: Dimension.width20
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimension.radius20),
                color: Colors.white
              ),

              child: Row(
                children: [
                  Icon(Icons.remove,color: AppColors.signColor,),
                  SizedBox(width: Dimension.width10/2,),
                  BigText(text: "0"),
                  SizedBox(width: Dimension.width10/2,),
                  Icon(Icons.add,color: AppColors.signColor,),  
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.only(
                top: Dimension.height20,
                bottom: Dimension.height20,
                left: Dimension.width20,
                right: Dimension.width20
              ),
              child: BigText(text: "\$10 | Add to cart",color: Colors.white,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimension.radius20),
                color: AppColors.mainColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}