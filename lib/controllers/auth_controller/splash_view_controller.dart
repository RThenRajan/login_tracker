import 'package:get/get.dart';
import 'package:login_tracker/views/pages/login_view.dart';
import '../../singleton/app_delegate.dart';

class SplashViewController extends GetxController {

  @override
  void onInit() {
    init();
    super.onInit();
  }

  init() async {
    await theme();
    Future.delayed(const Duration(milliseconds: 1000), () {
      Get.offAll(()=> const LoginView());
    });
  }

  theme() async {
    AppDelegate().isDarkMode = false;
  }
}