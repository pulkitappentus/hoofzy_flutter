import 'package:Hoofzy_V2/presentation/home/controllers/home.controller.dart';
import 'package:get/get.dart';

class ServicesIntroControllerBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<HomeController>(
          () => HomeController(),
    );

  }
}
