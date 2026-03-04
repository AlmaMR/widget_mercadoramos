import 'package:flutter/material.dart';
import 'package:widget_mercadoramos/config/theme/app_theme.dart';
import 'package:widget_mercadoramos/presentacion/screens/home/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 10).themeData(),
      // home: Scaffold(
      //   body: Center(
      //     child: FilledButton(
      //       onPressed: () {
      //         print('Mercado Ramos');
      //       },
      //       child: Text('Mercado Ramos'),
      //     ),
      //   ),
      // ),
      home: HomeScreen(),
    );
  }
}
