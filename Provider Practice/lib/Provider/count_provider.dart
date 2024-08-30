import 'package:flutter/material.dart';

class CountProvider with ChangeNotifier {
  int count = 0;
  int getCount() => count; // gettter function
  void setCount() {
    count++;
    notifyListeners();
  }
}
