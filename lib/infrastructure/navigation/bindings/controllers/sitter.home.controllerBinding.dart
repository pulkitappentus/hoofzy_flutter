import 'package:get/get.dart';
import '../../../../presentation/sitter_app/sitter_home_screens/controllers/sitter.home.controller.dart';

class SitterHomeControllerBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<SitterHomeController>(
          () => SitterHomeController(),
    );

  }
}
