import 'package:e_commerce_app/utils/colors.dart';
import 'package:e_commerce_app/widgets/app_icon.dart';
import 'package:e_commerce_app/widgets/big_text.dart';
import 'package:e_commerce_app/widgets/expandable_text_widget.dart';
import 'package:flutter/material.dart';


class RecomendedFoodDetails extends StatelessWidget {
  const RecomendedFoodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_checkout_outlined)
              ],
            ),


            bottom: PreferredSize(preferredSize: const Size.fromHeight(20),

             child: Container(
              width: double.maxFinite,
              padding: const EdgeInsets.only(top: 5,bottom: 10),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20))),
              child: Center(
                child: BigText(text: "Burger",size: 26,)),
              ),),


            pinned: true,
            backgroundColor: Colors.lightBlue,
            expandedHeight: 320,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("assets/images/burger.jpg",
              width: double.maxFinite,
              fit: BoxFit.cover,
              )),
          ),


           SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20,right: 20),
                  child: const ExpandableTextWidget(text: "The burger, an iconic culinary creation with roots tracing back to the bustling streets of the late 19th century, has evolved from a humble sandwich to a global phenomenon that transcends cultural boundaries and tantalizes taste buds across the world. This quintessential fast-food delight, often synonymous with convenience and comfort, represents a harmonious marriage of flavors, textures, and cultural influences that have united to form a gastronomic masterpiece.At its heart, a burger comprises a harmonious symphony of ingredients, each playing a vital role in creating a multisensory experience that captivates the senses. The journey begins with the bun, a seemingly simple yet crucial component. Its role goes beyond mere support, as it cradles and encapsulates the ensemble of flavors within. A carefully chosen bun possesses the power to elevate the entire burger, offering a soft, yielding texture that contrasts with the savory and robust elements encased within.Central to the burger's allure is the patty, a cornerstone of satisfaction. Ground meat, traditionally beef, is expertly seasoned, sometimes with a symphony of spices, and shaped into a succulent masterpiece that becomes the canvas for culinary innovation. This canvas allows for a rich interplay of tastes, aromas, and textures, enticing the palate with a fusion of umami, smokiness, and juiciness. As the patty sizzles on the grill or in the pan, its tantalizing aroma signals the imminent delight.The transformation of the humble patty into a delectable masterpiece doesn't stop there. Toppings, ranging from the familiar to the exotic, offer a personalized touch that celebrates individual preferences and cultural nuances. Crisp lettuce and juicy tomato slices provide a refreshing contrast, while onions, whether raw and pungent or caramelized to sweetness, add layers of complexity. Melting cheese, a ubiquitous companion, introduces a creamy richness that envelops the patty in a warm embrace, enhancing its inherent flavors.The symphony of flavors crescendos with condiments that paint the burger with a stroke of tanginess, sweetness, or spiciness, elevating it from mere sustenance to a harmonious gastronomic symposium. Ketchup, mustard, mayonnaise, and unique signature sauces dance on the taste buds, leaving an indelible imprint and igniting culinary memories.Yet, the beauty of the burger lies not just in its physical composition, but in its embodiment of cultural amalgamation. From its earliest origins as the Hamburg steak in the German port city, Hamburg, to its transformation in the United States into the quintessential fast-food item, the burger has absorbed and adapted to diverse influences. The fusion of immigrant traditions, regional preferences, and culinary experimentation has resulted in an ever-expanding tapestry of burger variations.The burger's universal appeal transcends geographical boundaries, making it a symbol of convenience, indulgence, and shared experiences. It is the ultimate comfort food, offering a moment of solace amidst the hustle and bustle of modern life. From casual roadside diners to gourmet establishments, the burger has found its place as a unifying force, a canvas for culinary imagination, and a testament to the joy of simple pleasures.n a world of ever-changing gastronomic trends and evolving palates, the burger remains a steadfast constant, a timeless masterpiece that continues to capture the hearts and appetites of individuals across generations. Its legacy is one of adaptability, celebration, and unity – a true testament to the power of food to bring people together and create unforgettable memories. The burger, in all its glorious iterations, stands as a testament to the art of gastronomy, a reflection of cultural diversity, and an enduring emblem of culinary delight.")
                  )
              ],
            ),
          )
        ],
      ),

      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 50,right: 50,top: 10,bottom: 10),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
              children: [
          
                AppIcon(iconSize: 24, icon: Icons.remove,backgroundColor: AppColors.mainColor,iconColor: Colors.white,),

                BigText(text: "\$12.88 " " X " " 0 ",color: AppColors.mainBlackColor,size: 26,),
          
                AppIcon(icon: Icons.add,backgroundColor: AppColors.mainColor,iconColor: Colors.white,iconSize: 24,)
              ],
            ),
          )
        ],
      ),
    );
  }
}