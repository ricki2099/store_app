import 'package:flutter/material.dart';
import 'package:test/models/user.dart';

class OtherPage extends StatelessWidget {
  final User userData;
  const OtherPage({
    Key? key,
    required this.userData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Other Page'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Go back! ${userData.name} ${userData.age}'),
        ),
      ),
    );
  }
}
