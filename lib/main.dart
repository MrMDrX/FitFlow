import 'package:fitflow/core/themes/app_themes.dart';
import 'package:fitflow/presentation/main/pages/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FitFlow',
      debugShowCheckedModeBanner: false,
      theme: AppThemes.lightTheme, 
      darkTheme: AppThemes.darkTheme,
      themeMode: ThemeMode.dark,
      home: const MainPage(),
    );
  }
}
