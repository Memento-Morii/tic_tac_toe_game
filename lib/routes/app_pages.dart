import 'package:get/get.dart';
import 'package:tic_tac_toe_game/views/homepage/bindings/homepage_bindings.dart';
import 'package:tic_tac_toe_game/views/homepage/controller/homepage_controller.dart';
import 'package:tic_tac_toe_game/views/homepage/homepage_view.dart';
import 'package:tic_tac_toe_game/views/onboarding/onboarding_view.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.onboarding;
  static final routes = [
    GetPage(
      name: Routes.onboarding,
      page: () => const OnboardingView(),
    ),
    GetPage(
      name: Routes.homepage,
      page: () => const HomePageView(),
      binding: HomePageBindings(),
    ),
  ];
}
