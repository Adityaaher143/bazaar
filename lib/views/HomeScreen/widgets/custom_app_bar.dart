
  import 'package:bazzar/constant/color.dart';
import 'package:bazzar/constant/images.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Container customAppBar() {
    return Container(
            padding: EdgeInsets.all(12),
            color: greenColor,
            child: Column(

              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "Shubham Bazar".text.size(22).white.make(),
                    Image.asset(icUser,width: 20,color: whiteColor,)
                  ],
                ),
                10.heightBox,
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(color: whiteColor,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12))
                  ),
                  child: Row(
                    children: [
                      Image.asset(icSearch,width: 20),
                      20.widthBox,
                      Expanded(child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(color: greenColor),
                          border: InputBorder.none
                        ),
                      )),
                    ],
                  ),
                ),

              ],
            ),
          );
  }