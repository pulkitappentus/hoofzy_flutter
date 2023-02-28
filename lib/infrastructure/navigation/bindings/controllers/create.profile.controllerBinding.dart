import 'package:get/get.dart';
import '../../../../presentation/sitter_build_trust_screens/sitter_profile/controllers/create.profile.controller.dart';

class CreateProfileControllerBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<CreateProfileController>(
          () => CreateProfileController(),
    );

  }
}
