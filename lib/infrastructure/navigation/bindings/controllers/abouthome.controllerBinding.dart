import 'package:get/get.dart';
import '../../../../presentation/about_home/controllers/abouthome.controllers.dart';

class AboutHomeControllerBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<AboutHomeController>(
          () => AboutHomeController(),
    );

  }
}
