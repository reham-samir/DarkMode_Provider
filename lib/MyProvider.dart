import 'package:flutter/material.dart';

class MyProvider with ChangeNotifier {
  ThemeMode tm = ThemeMode.light;
  bool swVal = false;
  void switchChange(bool value) {
    swVal = value;

    if (swVal == false) {
      tm = ThemeMode.light;
      print('$tm');
    } else {
      tm = ThemeMode.dark;
      print('$tm');
    }
    notifyListeners();
  }
}
