import 'package:flutter/material.dart';
import 'package:test/config/app_routes.dart';
import 'package:test/design/themes.dart';
import 'package:test/models/user.dart';
import 'package:test/pages/home.dart';

import 'pages/new-page.dart';
import 'pages/other-page.dart';

class AppInitial extends StatelessWidget {
  const AppInitial({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemesRandom.defaultTheme,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case AppRoutes.newPage:
            return MaterialPageRoute(builder: (context) => const NewPage());
          case AppRoutes.otherPage:
            return MaterialPageRoute(
                builder: (context) => OtherPage(
                      userData: settings.arguments as User,
                    ));
          case AppRoutes.home:
            return MaterialPageRoute(builder: (context) => const HomePage());
          default:
            return MaterialPageRoute(builder: (context) => const HomePage());
        }
      },
    );
  }
}
