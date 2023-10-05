import 'package:bazzar/constant/color.dart';
import 'package:bazzar/constant/list.dart';
import 'package:bazzar/controller/home_screen_controller.dart';
import 'package:bazzar/views/CartScreen/cart_screen.dart';
import 'package:bazzar/views/CategoryScreen/category_screen.dart';
import 'package:bazzar/views/MenuScreen/menu_screen.dart';
import 'package:bazzar/views/SharedWidgets/bottom_navigationbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';

class Home extends StatelessWidget {
  Home({super.key});

  // var screensList = [CartScreen(), CategoryScreen(), MenuScreen()];

  @override
  Widget build(BuildContext context) {
    var controller = Provider.of<HomeScreenController>(context, listen: false);
    return Container(
      child: Scaffold(
        bottomNavigationBar: Container(
          height: context.screenHeight * 0.15,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          child: customBottomAppBar(context, controller),
        ),
        body: Consumer<HomeScreenController>(builder: (context, provider, xxx) {
          return screenlist[provider.CurrentScreenIndex];
        }),
      ),
    );
  }
}
