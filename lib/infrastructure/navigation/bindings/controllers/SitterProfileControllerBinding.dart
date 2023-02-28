import 'package:Hoofzy_V2/presentation/sitter_profile_screens/controllers/sitterprofile.controller.dart';
import 'package:get/get.dart';

class SitterProfileControllerBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<SitterProfileController>(
          () => SitterProfileController(),
    );

  }
}
