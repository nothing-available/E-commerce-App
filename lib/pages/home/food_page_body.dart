import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_commerce_app/colors.dart';
import 'package:e_commerce_app/utils/dimension.dart';
import 'package:e_commerce_app/widgets/big_text.dart';
import 'package:e_commerce_app/widgets/icons_and_text_widget.dart';
import 'package:e_commerce_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

import '../../widgets/app_column.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  //for showing next slide and previous slide
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0; //for animation on sliding
  double _scaleFactor = 0.8;
  double _height = Dimension.pageViewContainer;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    // means when u leave the page, we don't want it to active otherwisw it has memory leak
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        //slider section
        Container(
          height: Dimension.pageView,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              }),
        ),

      // for the dotted line 
      DotsIndicator(
        dotsCount: 5,
        position: _currPageValue,
        decorator: DotsDecorator(
          activeColor: AppColors.mainColor,
          size: const Size.square(9.0),
          activeSize: const Size(18.0, 9.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0)
            ),
          ),
      ),

      // popular text
      SizedBox(height: Dimension.height30,),

      Container(
        margin: EdgeInsets.only(left: Dimension.width30),

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            BigText(text: "Popular"),
            SizedBox(width: Dimension.width10,),
            Container(
              margin: const EdgeInsets.only(bottom: 3),
              child: BigText(text: ".",color: Colors.black26,),
            ),
            SizedBox(width: Dimension.width10,),
            Container(
              margin: const EdgeInsets.only(bottom: 2),
              child: SmallText(text: "Food Prepairing"),
            ),
          ],
        ),
      ),
      
      //list of food and images
      ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index){
          return Container(
            margin: EdgeInsets.only(left: Dimension.width20,right: Dimension.width20,bottom: Dimension.height10),
      
            child: Row(
              children: [
                //image section
                Container(
                  width: Dimension.ListViewImgSize,
                  height: Dimension.ListViewImgSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimension.radius20),
                    color: Colors.white38,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/brooke.jpg")
                      )
                  ),
                ),
              
              //text container
              Expanded(
                child: Container(
                  height: Dimension.ListViewTextContSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimension.radius20),
                      bottomRight: Radius.circular(Dimension.radius20)
                      ),
                    color: Colors.white,
              
                  ),
                  child: Padding(padding: EdgeInsets.only(left: Dimension.width10,right: Dimension.width10),
                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BigText(text: "Nutritious Fruit Meal In India"),

                      SizedBox(height: Dimension.height10),

                      SmallText(text: "with indian characteristics"),

                      SizedBox(height: Dimension.height10,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconAndTextWidget(
                          icon: Icons.circle_sharp,
                          text: "Normal",
                          iconColor: AppColors.iconColor1),
                      IconAndTextWidget(
                          icon: Icons.location_on,
                          text: "1.7km",
                          iconColor: AppColors.mainColor),
                      IconAndTextWidget(
                          icon: Icons.access_time_rounded,
                          text: "32min",
                          iconColor: AppColors.iconColor2),
                    ],
                  )
                    ],
                  ),),

                  
                ),
              )
              ],
            ),
          );
      })

      ],

    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity(); //this is an aPi for scaling
    //check
    if (index == _currPageValue.floor()) {//floor for round fig. or number
      
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);

      var currTrans = _height * (1 - currScale) / 2;

      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);    
    }

     else if (index == _currPageValue.floor() + 1) {
      // refers to the next slide
      var currScale =
          _scaleFactor + (_currPageValue - index) * (1 - _scaleFactor);

      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);

      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } 
    
    // for prev slide
    else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);

      var currTrans = _height * (1 - currScale) / 2;

      matrix = Matrix4.diagonal3Values(1, currScale, 1);

      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 1);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Dimension.pageViewContainer,
            margin: EdgeInsets.only(left: Dimension.width10, right: Dimension.width10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimension.radius30),
                color: index.isEven ? Color(0xFF69c5df) : Color(0xFF9294cc),
                image: const DecorationImage(
                    fit: BoxFit.cover, //to fit the image
                    image: AssetImage("assets/images/burger.jpg"))),
          ),
          Align(
            //simply make another widget bottom the imgaes
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimension.pageViewTextContainer,
              margin: EdgeInsets.only(left: Dimension.width30, right: Dimension.width30, bottom: Dimension.height30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimension.radius20),
                color: Colors.white,
                boxShadow: const [ // for the shadow
                  BoxShadow(
                    color: Color(0xFFe8e8e8),
                    blurRadius: 5.0,
                    offset: Offset(0,5) 
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5,0)
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(5,0)
                  )
                  
                ]
              ),


              child: Container(
                padding: EdgeInsets.only(top: Dimension.height15, left: 15, right: 15),
                child: AppColumn(text: 'Burger',),
              ),
            ),
          ),
        ],
      ),
    );
  }
}