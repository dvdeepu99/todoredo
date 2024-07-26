import 'package:flutter/material.dart';
import 'package:todoredo/theme/theme.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = orangeMode;

  ThemeData get orangeData => _themeData;

  set orangeData(ThemeData orangeData) {
    _themeData = orangeData;
    notifyListeners();
  }

  toggleTheme() {
    if (_themeData == orangeMode) {
      orangeData = purpleMode;
    } else {
      orangeData = orangeMode;
    }
  }
}
