import 'package:flutter/material.dart';
import 'package:test/design/themes.dart';
import 'package:test/pages/home.dart';

class AppInitial extends StatelessWidget {
  const AppInitial({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: Themes.defaulTheme,
        home: const HomePage(
          key: Key('home page'),
        ));
  }
}
