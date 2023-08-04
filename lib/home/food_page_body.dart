import 'package:e_commerce_app/colors.dart';
import 'package:e_commerce_app/widgets/big_text.dart';
import 'package:e_commerce_app/widgets/icons_and_text_widget.dart';
import 'package:e_commerce_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.9);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown,
      height: 320,
      child: PageView.builder(
        controller: pageController,
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildpageItem(position);
          }),
    );
  }

  Widget _buildpageItem(int index) {
    return Stack(
      children: [
        Container(
          height: 220,
          margin: EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: index.isEven
                  ? const Color(0xFF69c5df)
                  : const Color(0xFF9294cc),
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/burger.jpg"))),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(

            height: 140,
            margin: EdgeInsets.only(left: 25, right: 25, bottom: 25),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),

            child: Container(
              padding: EdgeInsets.only(top: 10,left: 15,right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: "Chinese Slide"),

                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Wrap(
                        children: 
                          List.generate(5, (index) => Icon(Icons.star,color: AppColors.mainColor,)),
                      ),
                      SizedBox(width: 10,),
                      SmallText(text: "4.5"),
                      SizedBox(width: 10,),
                      SmallText(text: "1287"),
                      SizedBox(width: 10,),
                      SmallText(text: "comments"),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      IconAndTextWidget( 
                        icon: Icons.circle_sharp,
                        text: 'Normal',
                        iconColor: AppColors.iconColor1
                        ),
                        SizedBox(width: 20,),
                      IconAndTextWidget(
                        icon: Icons.location_on,
                        text: "1.7 km", 
                        iconColor: AppColors.mainColor,
                        ),
                        SizedBox(width: 20,),
                      IconAndTextWidget(
                        icon: Icons.access_time_rounded, 
                        text: "32 min", 
                        iconColor: AppColors.iconColor2
                        )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
