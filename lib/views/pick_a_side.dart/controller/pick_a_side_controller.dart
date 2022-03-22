import 'package:get/get.dart';
import 'package:tic_tac_toe_game/routes/app_pages.dart';

class PickASideController extends GetxController {
  String type = '';
  pick(String pickedType) {
    type = pickedType;
  }

  continueToGame() {
    if (type.isEmpty) {
      Get.snackbar("Pick A Side", "Please pick a side");
    } else {
      Get.toNamed(Routes.homepage, arguments: type);
    }
  }
}
