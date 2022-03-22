import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tic_tac_toe_game/routes/app_pages.dart';
import 'package:tic_tac_toe_game/views/onboarding/onboarding_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: AppPages.routes,
      initialRoute: AppPages.initial,
      home: const OnboardingView(),
    );
  }
}
