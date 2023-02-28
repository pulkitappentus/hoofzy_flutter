import 'package:Hoofzy_V2/presentation/login_screens/controllers/login.controller.dart';
import 'package:get/get.dart';

class LoginControllerBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<LoginController>(
          () => LoginController(),
    );

  }
}
