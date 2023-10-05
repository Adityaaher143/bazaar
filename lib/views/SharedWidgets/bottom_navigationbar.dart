import 'package:bazzar/constant/color.dart';
import 'package:bazzar/constant/list.dart';
import 'package:bazzar/controller/home_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';

BottomAppBar customBottomAppBar(
    BuildContext context, HomeScreenController controller) {
  return BottomAppBar(
      child: Consumer<HomeScreenController>(builder: (context, provider, xxx) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(
        bottomAppBarItemsIcon.length,
        (index) => Image.asset(
          bottomAppBarItemsIcon[index],
          color:
              provider.CurrentScreenIndex == index ? whiteColor : Colors.black,
          width: 35,
        )
            .box
            .roundedFull
            .color(
              provider.CurrentScreenIndex == index ? greenColor : whiteColor,
            )
            .padding(EdgeInsets.all(16))
            .make()
            .onTap(() {
          controller.CurrentScreenIndex = index;
          provider.notifyListeners();
        }),
      ),
    );
  }));
}
