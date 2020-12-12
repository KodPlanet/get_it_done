import 'package:flutter/material.dart';
import './models/color_theme_data.dart';
import './models/items_data.dart';
import 'package:provider/provider.dart';
import './screens/home_page.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<ItemData>(
        create: (BuildContext context) => ItemData()),
    ChangeNotifierProvider<ColorThemeData>(
        create: (context) => ColorThemeData())
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<ColorThemeData>(context).selectedThemeData,
      home: HomePage(),
    );
  }
}

/*
ThemeData greenTheme = ThemeData(
    primaryColor: Colors.green,
    primarySwatch: Colors.green,
    scaffoldBackgroundColor: Colors.green,
    accentColor: Colors.green,
    appBarTheme: AppBarTheme(color: Colors.green),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: TextTheme(
        subtitle1: TextStyle(color: Colors.white),
        headline3: TextStyle(color: Colors.white)));
ThemeData redTheme = ThemeData(
    primaryColor: Colors.red,
    primarySwatch: Colors.red,
    scaffoldBackgroundColor: Colors.red,
    accentColor: Colors.red,
    appBarTheme: AppBarTheme(color: Colors.red),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: TextTheme(
        subtitle1: TextStyle(color: Colors.white),
        headline3: TextStyle(color: Colors.white)));
*/
