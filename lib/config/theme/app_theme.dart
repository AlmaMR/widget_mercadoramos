import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.pinkAccent,
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.yellow,
  Colors.orange,
  Colors.purple,
  Colors.brown,
  Colors.grey,
  Colors.black,
  Colors.white,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
    : assert(
        selectedColor >= 0 && selectedColor < colorList.length,
        'The color must be greater than or equal to 0',
      ),
      assert(
        selectedColor < colorList.length,
        'The color must be less than the maximum color',
      );

  ThemeData themeData() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: AppBarTheme(centerTitle: false),
  );
}
