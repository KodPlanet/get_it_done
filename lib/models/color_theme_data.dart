import 'package:flutter/material.dart';

class ColorThemeData with ChangeNotifier {
  final ThemeData _greenTheme = ThemeData(
      primaryColor: Colors.green,
      primarySwatch: Colors.green,
      scaffoldBackgroundColor: Colors.green,
      accentColor: Colors.green,
      appBarTheme: AppBarTheme(color: Colors.green),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: TextTheme(
          subtitle1: TextStyle(color: Colors.white),
          headline3: TextStyle(color: Colors.white)));
  final ThemeData _redTheme = ThemeData(
      primaryColor: Colors.red,
      primarySwatch: Colors.red,
      scaffoldBackgroundColor: Colors.red,
      accentColor: Colors.red,
      appBarTheme: AppBarTheme(color: Colors.red),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: TextTheme(
          subtitle1: TextStyle(color: Colors.white),
          headline3: TextStyle(color: Colors.white)));

  ThemeData _selectedThemeData = ThemeData(
      primaryColor: Colors.green,
      primarySwatch: Colors.green,
      scaffoldBackgroundColor: Colors.green,
      accentColor: Colors.green,
      appBarTheme: AppBarTheme(color: Colors.green),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: TextTheme(
          subtitle1: TextStyle(color: Colors.white),
          headline3: TextStyle(color: Colors.white)));

  void switchTheme(bool selected) {
    _selectedThemeData = selected ? _greenTheme : _redTheme;
    notifyListeners();
  }

  ThemeData get selectedThemeData => _selectedThemeData;
}
