import 'package:e_commerce_app/utils/colors.dart';
import 'package:e_commerce_app/widgets/app_colums.dart';
import 'package:e_commerce_app/widgets/app_icon.dart';
import 'package:e_commerce_app/widgets/big_text.dart';
import 'package:e_commerce_app/widgets/expandable_text_widget.dart';
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
                  "assets/images/burger.jpg"
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
                    const AppColumn(text: "Burger",),
                    const SizedBox(height: 20,),
                    BigText(text: "Introduce"),
                    const SizedBox(height: 20,),
                    const Expanded(
                      child: SingleChildScrollView(
                        child: ExpandableTextWidget(
                          text:
                           "The burger, an iconic culinary creation with roots tracing back to the bustling streets of the late 19th century, has evolved from a humble sandwich to a global phenomenon that transcends cultural boundaries and tantalizes taste buds across the world. This quintessential fast-food delight, often synonymous with convenience and comfort, represents a harmonious marriage of flavors, textures, and cultural influences that have united to form a gastronomic masterpiece. A burger, short for hamburger, is a popular culinary delight enjoyed worldwide. It consists of a seasoned ground meat patty, often beef, cooked and placed between sliced buns. The burger can be customized with various toppings like lettuce, tomato, cheese, onions, and condiments such as ketchup and mustard. This iconic fast food item offers a delectable blend of flavors and textures, with the juicy patty complemented by the soft bun and a range of accompaniments. Burgers are a symbol of American cuisine and have evolved into a diverse array of styles, catering to different tastes and dietary preferences. ")))
                  ],
                ),
            ),
            ),
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