import 'package:bazzar/constant/color.dart';
import 'package:bazzar/constant/images.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class greenOfferCard extends StatelessWidget {
  const greenOfferCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: context.screenHeight * 0.25,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(igGreenPoster),fit: BoxFit.cover)
      ),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            bottom: 0,
            child: Image.asset(bgFruits,scale: 0.9,),),
            Positioned(
              left: 30,
              top: 30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  "60% off".text.size(16).white.make().box.padding(EdgeInsets.all(10)).color(greenDiscountTagColor).make(),
            
                  "Organic Food".text.size(28).make(),
                  10.heightBox,
                  "Save up to 60% off on firts order".text.make()
                ],
              ),
            )
      ],),

   

    );
  }
}
