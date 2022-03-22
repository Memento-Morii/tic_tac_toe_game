import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tic_tac_toe_game/constants/custom_colors.dart';
import 'package:tic_tac_toe_game/routes/app_pages.dart';
import 'package:tic_tac_toe_game/themes/custom_text_styles.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [CustomColors.primaryColor, CustomColors.secondaryColor],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Tic-Tac',
                style: CustomTextStyle.whiteHeadlineOne,
              ),
              const SizedBox(height: 40),
              Image.asset(
                "assets/toe.png",
                width: Get.width * .4,
              ),
              const SizedBox(height: 40),
              Text(
                'Game',
                style: CustomTextStyle.whiteHeadlineOne,
              ),
              const SizedBox(height: 100),
              SizedBox(
                width: Get.width * .8,
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  onPressed: () => Get.toNamed(Routes.homepage),
                  child: Text(
                    'Continue',
                    style: CustomTextStyle.blackBodyOne,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
