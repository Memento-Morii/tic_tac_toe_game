import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tic_tac_toe_game/constants/custom_colors.dart';
import 'package:tic_tac_toe_game/themes/custom_text_styles.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: Get.width,
          height: Get.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [CustomColors.primaryColor, CustomColors.secondaryColor],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: Column(
            children: <Widget>[
              Text(
                'Tic',
                style: CustomTextStyle.whiteHeadlineOne,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
