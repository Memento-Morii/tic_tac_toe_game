import 'package:flutter/material.dart';
import 'package:get/get.dart';

// enum PlayerType{
//   'X',"0"
// }
class TicTacModel {
  final int gameId;
  String? type;
  RxBool isEnabled;
  Rx<Color> backgroundColor;

  TicTacModel({
    required this.gameId,
    this.type,
    required this.isEnabled,
    required this.backgroundColor,
  });
}
