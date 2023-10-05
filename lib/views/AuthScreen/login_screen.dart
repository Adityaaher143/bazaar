import 'package:bazzar/constant/images.dart';
import 'package:bazzar/controller/auth_controller.dart';
import 'package:bazzar/views/AuthScreen/otp_varification.dart';
import 'package:bazzar/views/AuthScreen/phone_number.dart';
import 'package:bazzar/views/SharedWidgets/bg_widget.dart';
import 'package:bazzar/views/SharedWidgets/custom_button.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Provider.of<AuthController>(context, listen: false);
    return bgWidget(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Consumer<AuthController>(builder: (context, provider, xx) {
          return SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(15),
              height: context.screenHeight,
              width: context.screenWidth,
              child: Column(
                children: [
                  (context.screenHeight * 0.2).heightBox,
                  Image.asset(igPhone),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Column(
                      children: [
                        provider.show_otp_screen == 1
                            ? otpVerification()
                            : phonNumber(),
                        // !provider.show_otp_screen
                        //     ? phonNumber()
                        //     : otpVerification(),
                        12.heightBox,
                        customButton(
                            title: "Next",
                            width: context.screenWidth,
                            onTap: () {
                              controller.show_otp_screen = 1;
                              print("tapping");
                              controller.notifyListeners();
                            })
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
