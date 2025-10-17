import 'package:flutter/material.dart';
import 'package:login_tracker/controllers/auth_controller/splash_view_controller.dart';
import 'package:login_tracker/helper/theme_notifier.dart';
import 'package:get/get.dart';

class SplashView extends StatelessWidget {
  SplashView({super.key});

  final SplashViewController controller = Get.put(SplashViewController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeNotifier().colors().signInBG,
      body: GetBuilder(
        init: controller,
        builder: (context) {
          return Center(
            child: TweenAnimationBuilder<double>(
              tween: Tween(begin: 0.0, end: 1.0),
              duration: const Duration(milliseconds: 1000),
              curve: Curves.easeOutCubic,
              builder: (context, value, child) {
                return Opacity(
                  opacity: value,
                  child: Transform.scale(
                    scale: value,
                    child: child,
                  ),
                );
              },
              child: Image.asset(
                'assets/splash.png',
                height: 100,
                width: 100,
              ),
            ),
          );
        }
      ),
    );
  }
}
