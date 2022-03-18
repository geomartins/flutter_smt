import 'package:flutter/material.dart';

class PasswordReset extends StatelessWidget {
  static const String id = '/password_reset';
  const PasswordReset({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Password Reset Screen'),
      ),
    );
  }
}
