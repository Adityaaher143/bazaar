import 'package:bazzar/constant/color.dart';
import 'package:bazzar/constant/images.dart';
import 'package:bazzar/constant/list.dart';
import 'package:bazzar/views/HomeScreen/widgets/custom_app_bar.dart';
import 'package:bazzar/views/HomeScreen/widgets/offer_cards.dart';
import 'package:flutter/material.dart';
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
                    items: List.generate(3, (index) => greenOfferCard(),),),
                    Positioned(
                      bottom: 10,left: 150,
                      child: Row(
                        children: List.generate(3, (index) => CircleAvatar(radius: 10,backgroundColor: Colors.grey,)),
                      ),
                    )
                ],
              ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: "View By Category".text.size(18).make(),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: GridView.builder(
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
                  ).box.white.shadow.roundedSM.make();
                 }),
               )
        
            ],
          ),
        ),
      ),
    );
  }

}



