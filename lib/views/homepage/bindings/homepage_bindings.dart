import 'package:get/get.dart';
import 'package:tic_tac_toe_game/views/homepage/controller/homepage_controller.dart';

class HomePageBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(HomePageController());
  }
}
