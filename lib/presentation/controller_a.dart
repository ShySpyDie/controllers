import 'package:flutter/material.dart';

class ButtonController with ChangeNotifier {
  double j = 0;
  double get getJ => j;

  void rotation() {
    j += 120;
    // Duration(milliseconds: 10);
    // notifyListeners();
    // j = j + 120;
    // notifyListeners();
    // j = j + 120;
    notifyListeners();
  }
}
