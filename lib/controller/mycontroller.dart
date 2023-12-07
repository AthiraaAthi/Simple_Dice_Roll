import 'dart:math';

import 'package:dice_task/utils/image_constant.dart';
import 'package:flutter/material.dart';

class MyController with ChangeNotifier {
  int randomNumber = 0;
  bool isLoading = false;
  List diceImages = [
    ImageConstant.dice1,
    ImageConstant.dice2,
    ImageConstant.dice3,
    ImageConstant.dice4,
    ImageConstant.dice5,
    ImageConstant.dice6
  ];
  generate() {
    isLoading = true;
    Future.delayed(Duration(seconds: 3)).then((value) {});
    //we can also use ; after duration if there's nothing to perform
    randomNumber = Random().nextInt(6);
    //we use random for generating random images(in this case)within the list
    print(randomNumber);
    notifyListeners();
  }
}
