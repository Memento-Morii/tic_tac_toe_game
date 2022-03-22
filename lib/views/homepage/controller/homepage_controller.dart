import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tic_tac_toe_game/data/tic_tac_model.dart';

class HomePageController extends GetxController {
  // late List<int> playerOneChoices;
  late HashSet<int> playerOneChoices;
  late HashSet<int> playerTwoChoices;
  RxInt activePlayer = 2.obs;
  String userChoiceType = "X";
  int winner = 3;

  late RxList<TicTacModel> allButtons = <TicTacModel>[].obs;
  @override
  void onInit() {
    init();
    super.onInit();
  }

  void init() {
    if (Get.arguments != null) {
      userChoiceType = Get.arguments;
    }
    playerOneChoices = HashSet<int>();
    playerTwoChoices = HashSet<int>();
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
    activePlayer.value = 1;
    winner = 3;
  }

  void pressButton(TicTacModel tictac) {
    // setState(() {
    if (activePlayer.value == 1) {
      tictac.type = userChoiceType;
      tictac.backgroundColor.value = Colors.red;
      activePlayer.value = 2;
      playerOneChoices.add(tictac.gameId);
    } else {
      tictac.type = userChoiceType == "X" ? "O" : "X";
      tictac.backgroundColor.value = Colors.yellow;
      activePlayer.value = 1;
      playerTwoChoices.add(tictac.gameId);
    }
    tictac.isEnabled.value = false;
    winner = handleWinner();
    if (winner == 1) {
      Get.snackbar("Player One", " is the Winner ");
    } else if (winner == 2) {
      Get.snackbar("Player Two", " is the Winner ");
    }
  }

  int handleWinner() {
    //HORIZONTAL WINNER SCENARIOS FOR PLAYER ONE
    if (playerOneChoices.containsAll([1, 2, 3])) {
      return 1;
    } else if (playerOneChoices.containsAll([4, 5, 6])) {
      return 1;
    } else if (playerOneChoices.containsAll([7, 8, 9])) {
      return 1;
    }

    //HORIZONTAL WINNING SCENARIOS FOR PLAYER TWO
    else if (playerTwoChoices.containsAll([1, 2, 3])) {
      return 2;
    } else if (playerTwoChoices.containsAll([4, 5, 6])) {
      return 2;
    } else if (playerTwoChoices.containsAll([7, 8, 9])) {
      return 2;
    }

    //VERTICAL WINNING SCENARIOS FOR PLAYER ONE
    else if (playerOneChoices.containsAll([1, 4, 7])) {
      return 1;
    } else if (playerOneChoices.containsAll([2, 5, 8])) {
      return 1;
    } else if (playerOneChoices.containsAll([3, 6, 9])) {
      return 1;
    }

    //VERTICAL WINNING SCENARIOS FOR PLAYER TWO
    else if (playerTwoChoices.containsAll([1, 4, 7])) {
      return 2;
    } else if (playerTwoChoices.containsAll([2, 5, 8])) {
      return 2;
    } else if (playerTwoChoices.containsAll([3, 6, 9])) {
      return 2;
    }

    //DIAGONAL WINNING SCENARIOS FOR PLAYER ONE
    else if (playerOneChoices.containsAll([1, 5, 9])) {
      return 1;
    } else if (playerOneChoices.containsAll([3, 5, 7])) {
      return 1;
    }

    //DIAGONAL WINNING SCENARIOS FOR PLAYER TWO
    else if (playerTwoChoices.containsAll([1, 5, 9])) {
      return 2;
    } else if (playerTwoChoices.containsAll([3, 5, 7])) {
      return 2;
    } else {
      return 3;
    }
  }
}
