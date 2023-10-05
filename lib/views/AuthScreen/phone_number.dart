import 'package:bazzar/constant/color.dart';
import 'package:bazzar/views/SharedWidgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

phonNumber() {
  return Container(
    child: Column(
      children: [
        10.heightBox,
        Align(
          alignment: Alignment.centerLeft,
          child: "Enter your mobile number"
              .text
              .size(20)
              .color(kTextColor)
              .fontWeight(FontWeight.w500)
              .make(),
        ),
        SizedBox(
          height: 20,
        ),
        "We need to verify you. We will send you a one time verification code. "
            .text
            .color(darkGreyTextColor)
            .size(16)
            .make(),
        SizedBox(
          height: 30,
        ),
        customTextField(
            prifixicon: Icon(Icons.phone), hinttext: "Phone Number"),
        15.heightBox,
        customTextField(
            prifixicon: Icon(Icons.gps_fixed_rounded),
            hinttext: "Enter Pincode"),
      ],
    ),
  );
}
