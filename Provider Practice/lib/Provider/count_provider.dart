import 'package:flutter/foundation.dart';

class CountProvider with ChangeNotifier {
  int count = 0;
  int get Count => count; // gettter function
  void setCount() {
    count++;
    notifyListeners();
  }
}
