import 'package:bazzar/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

otpVerification() {
  return Container(
    padding: EdgeInsets.all(15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        10.heightBox,
        Align(
          alignment: Alignment.centerLeft,
          child: "Enter Verification Code"
              .text
              .size(20)
              .color(kTextColor)
              .fontWeight(FontWeight.w500)
              .make(),
        ),
        SizedBox(
          height: 12,
        ),
        "We have sent SMS to: ".text.size(16).color(darkGreyTextColor).make(),
        "+91XXXXXXXXXX"
            .text
            .color(darkGreyTextColor)
            .fontWeight(FontWeight.bold)
            .size(16)
            .make(),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(border: InputBorder.none),
            ).centered().box.size(64, 68).color(textFieldColor).rounded.make(),
            TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(border: InputBorder.none),
            ).centered().box.size(64, 68).color(textFieldColor).rounded.make(),
            TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(border: InputBorder.none),
            ).centered().box.size(64, 68).color(textFieldColor).rounded.make(),
            TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(border: InputBorder.none),
            ).centered().box.size(64, 68).color(textFieldColor).rounded.make(),
          ],
        ),
        30.heightBox,
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          "Resend OTP".text.size(16).color(priceTextColor).make(),
          "Change Phone Number".text.size(16).color(greyTextColor).make()
        ])
      ],
    ),
  );
}
