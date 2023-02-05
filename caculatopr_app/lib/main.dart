import 'package:caculatopr_app/View/Page/Home.dart';
import 'package:caculatopr_app/View/Theme/Theme.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
 runApp(const MyApp()); 
}
class MyApp
 extends StatelessWidget {
  const MyApp
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      home: const Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}