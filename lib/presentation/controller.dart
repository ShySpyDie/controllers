import 'package:flutter/material.dart';
// part of 'home.dart';

class AddCount with ChangeNotifier {
  int i = 0;
  int get getI => i;

  void count() {
    i++;
    notifyListeners();
  }
}
