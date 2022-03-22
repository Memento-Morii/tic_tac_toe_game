import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tic_tac_toe_game/data/tic_tac_model.dart';

class HomePageController extends GetxController {
  late List<int> playerOneChoices;
  late List<int> playerTwoChoices;
  RxInt activePlayer = 1.obs;
  String userChoiceType = "X";

  late RxList<TicTacModel> allButtons = <TicTacModel>[].obs;
  @override
  void onInit() {
    init();
    super.onInit();
  }

  void init() {
    playerOneChoices = [];
    playerTwoChoices = [];
    allButtons.value = [
      TicTacModel(gameId: 1, isEnabled: true.obs, backgroundColor: Colors.grey.obs),
      TicTacModel(gameId: 2, isEnabled: true.obs, backgroundColor: Colors.grey.obs),
      TicTacModel(gameId: 3, isEnabled: true.obs, backgroundColor: Colors.grey.obs),
      TicTacModel(gameId: 4, isEnabled: true.obs, backgroundColor: Colors.grey.obs),
      TicTacModel(gameId: 5, isEnabled: true.obs, backgroundColor: Colors.grey.obs),
      TicTacModel(gameId: 6, isEnabled: true.obs, backgroundColor: Colors.grey.obs),
      TicTacModel(gameId: 7, isEnabled: true.obs, backgroundColor: Colors.grey.obs),
      TicTacModel(gameId: 8, isEnabled: true.obs, backgroundColor: Colors.grey.obs),
      TicTacModel(gameId: 9, isEnabled: true.obs, backgroundColor: Colors.grey.obs),
    ];
  }

  void pressButton(TicTacModel tictac) {
    // setState(() {
    if (activePlayer.value == 1) {
      tictac.type = "X";
      tictac.backgroundColor.value = Colors.red;
      activePlayer.value = 2;
      playerOneChoices.add(tictac.gameId);
    } else {
      tictac.type = "0";
      tictac.backgroundColor.value = Colors.yellow;
      activePlayer.value = 1;
      playerTwoChoices.add(tictac.gameId);
    }
  }
}
