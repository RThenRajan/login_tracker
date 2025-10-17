import 'package:flutter/material.dart';
import 'package:login_tracker/helper/theme_notifier.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeNotifier().colors().signInBG,
    );
  }
}
