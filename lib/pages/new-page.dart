import 'package:flutter/material.dart';
import 'package:test/config/app_routes.dart';
import 'package:test/models/user.dart';

class NewPage extends StatelessWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userData = User(name: 'Richard', age: 29);
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Page'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.of(context)
                .pushReplacementNamed(AppRoutes.otherPage, arguments: userData);
          },
          child: const Text('Next page!'),
        ),
      ),
    );
  }
}
