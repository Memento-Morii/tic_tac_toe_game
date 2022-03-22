import 'package:get/get.dart';
import 'package:tic_tac_toe_game/views/pick_a_side.dart/controller/pick_a_side_controller.dart';

class PickASideBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(PickASideController());
  }
}
