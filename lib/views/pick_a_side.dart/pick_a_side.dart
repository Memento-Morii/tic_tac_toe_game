import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tic_tac_toe_game/themes/custom_text_styles.dart';
import 'package:tic_tac_toe_game/views/pick_a_side.dart/controller/pick_a_side_controller.dart';

import '../../constants/custom_colors.dart';

class PickASide extends GetView<PickASideController> {
  const PickASide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Pick A Side',
            style: CustomTextStyle.blackHeadlineOne,
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              InkWell(
                onTap: () => controller.pick("X"),
                child: Text(
                  'X',
                  style: CustomTextStyle.primaryHeadline,
                ),
              ),
              InkWell(
                onTap: () => controller.pick("O"),
                child: Text(
                  'O',
                  style: CustomTextStyle.secondaryHeadline,
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                colors: [CustomColors.primaryColor, CustomColors.secondaryColor],
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
              ),
            ),
            child: TextButton.icon(
              label: Text('Proceed To Game', style: CustomTextStyle.whiteBodyOne),
              onPressed: () => controller.continueToGame(),
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
