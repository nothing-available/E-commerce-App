import 'package:e_commerce_app/utils/dimension.dart';
import 'package:e_commerce_app/widgets/expandable_text.dart';
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
        //backgroung image
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

        //icons
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

          //introduction to food
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
                  const AppColumn(text: 'Burger',),
                  SizedBox(height: Dimension.height20,),
                  BigText(text: "Introduce"),
                  SizedBox(height: Dimension.height20,),

                  const Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableText(
                        text: "A hamburger, or simply burger, is a sandwich consisting of fillings—usually a patty of ground meat, typically beef—placed inside a sliced bun or bread roll. Hamburgers are often served with cheese, lettuce, tomato, onion, pickles, bacon, or chilis; condiments such as ketchup, mustard, mayonnaise, relish, or a special sauce, often a variation of Thousand Island dressing; and are frequently placed on sesame seed buns. A hamburger patty topped with cheese is called a cheeseburger")),
                  )
                ],
              ),
          ),
          ),
      
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