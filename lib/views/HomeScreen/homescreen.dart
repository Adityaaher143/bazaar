import 'package:bazzar/constant/color.dart';
import 'package:bazzar/constant/images.dart';
import 'package:bazzar/constant/list.dart';
import 'package:bazzar/views/HomeScreen/widgets/custom_app_bar.dart';
import 'package:bazzar/views/HomeScreen/widgets/offer_cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customAppBar(),
              greenOfferCard(),
        
              Stack(
                children: [
                  VxSwiper(
                    viewportFraction: 1.0,
                    items: List.generate(3, (index) => greenOfferCard(),),),
                    Positioned(
                      bottom: 10,left: 150,
                      child: Row(
                        children: List.generate(3, (index) => CircleAvatar(radius: 7.5,backgroundColor: Colors.grey,).box.margin(EdgeInsets.all(5)).make()),
                      ),
                    )
                ],
              ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: "View By Category".text.size(18).make(),
               ),
               Padding(
                 padding: const EdgeInsets.all(12.0),
                 child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: CategoriesList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    mainAxisExtent: 150
                  ), itemBuilder:(context,index){
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Image.asset(CategoriesList[index].imgUrl.toString(),),
                        "${CategoriesList[index].name.toString()}".text.align(TextAlign.center).make()
                    ],
                  ).box.white.shadowSm.roundedSM.make();
                 }),
               ).box.color(greyBgColor).make(),

               // Bets Offers Section
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: "Best offers".text.size(18).make(),
                ),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: List.generate(4, (index) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(p1),
                          "Coffee".text.make(),
                          Row(
                            children: [
                              VxRating(onRatingUpdate: (val){
                              },
                              count: 5,
                              maxRating: 5,
                              value: 2,
                              selectionColor: activeStarColor,
                              normalColor: inActiveStarColor,
                              ),
                              " (4)".text.color(inActiveStarColor).make()
                            ],
                          ),
                          10.heightBox,
                          Container(
                            height: 35,
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            decoration: BoxDecoration(
                              border: Border.all(color: borderColor)
                            ),
                            width: double.infinity,
                            child: DropdownButton(
                              underline: SizedBox(),
                              isExpanded: true,
                              value: "100 g",
                              items: productSizeList.map((e) => DropdownMenuItem(child: e.text.color(greyTextColor).make(), value: e)).toList(), onChanged: (value){
                            }),
                            
                          ),
                          10.heightBox,
                          "₹20".text.color(priceTextColor).size(18).make(),
                            
                            10.heightBox,
                            SizedBox(
                              height: 8,
                              width: double.infinity,
                              child: FAProgressBar(
                                maxValue: 10,
                                currentValue: 3,
                                progressColor: greenColor,
                                backgroundColor: borderColor,
                              )),
                              20.heightBox
                        ],
                      ).box.width(context.screenWidth * 0.45).roundedSM.border(color: borderColor).margin(EdgeInsets.symmetric(horizontal: 6)).padding(EdgeInsets.symmetric(horizontal: 12)).make()),
                    ),
                  ),
                )




        
            ],
          ),
        ),
      ),
    );
  }

}



