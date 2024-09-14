import 'package:flutter/material.dart';
import 'package:weather_app/theme.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightMode;
  ThemeData get themedata => _themeData;
  bool _isSelected = false;
  bool get isSelected => _isSelected;

  void toggleTheme() {
    if (_themeData == lightMode) {
      _themeData = DarkMode;
    } else {
      _themeData = lightMode;
    }
    _isSelected = !_isSelected;
    notifyListeners();
  }
}
