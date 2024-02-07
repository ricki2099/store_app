import 'package:flutter/material.dart';
import 'package:test/design/colors.dart';
import 'package:test/design/radius.dart';

import '../widgets/home_app_title.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 97,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: RadiusBorde.small,
            bottomRight: RadiusBorde.small,
          ),
        ),
        backgroundColor: ColorsRandom.brandLightColor,
        title: const Padding(
            padding: EdgeInsets.fromLTRB(16, 45, 16, 12),
            child: HomeAppBarTitle()),
      ),
      body: const Center(
        child: Text(
          'Hola Mundo',
        ),
      ),
    );
  }
}
