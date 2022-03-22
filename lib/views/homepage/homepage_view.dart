import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tic_tac_toe_game/constants/custom_colors.dart';
import 'package:tic_tac_toe_game/data/tic_tac_model.dart';
import 'package:tic_tac_toe_game/themes/custom_text_styles.dart';
import 'package:tic_tac_toe_game/views/homepage/controller/homepage_controller.dart';

class HomePageView extends GetView<HomePageController> {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  colors: [CustomColors.primaryColor, CustomColors.secondaryColor],
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                ),
              ),
              child: TextButton.icon(
                label: Text('Retry', style: CustomTextStyle.whiteBodyOne),
                onPressed: () => controller.init(),
                icon: const Icon(
                  Icons.refresh_rounded,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Material(
              elevation: 10,
              child: Obx(
                () => GridView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(10.0),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 0.8,
                    ),
                    itemCount: controller.allButtons.length,
                    itemBuilder: (context, index) {
                      TicTacModel ticTacModel = controller.allButtons[index];
                      return SizedBox(
                        width: 120,
                        height: 120,
                        child: Obx(
                          () => TextButton(
                            onPressed: () => ticTacModel.isEnabled.isFalse
                                ? null
                                : controller.pressButton(ticTacModel),
                            child: Text(
                              ticTacModel.type ?? '',
                              style: CustomTextStyle.whiteHeadlineOne,
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                ticTacModel.backgroundColor.value,
                              ),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
