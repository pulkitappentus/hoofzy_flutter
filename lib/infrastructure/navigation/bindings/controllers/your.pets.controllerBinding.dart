import 'package:get/get.dart';
import '../../../../presentation/sitter_build_trust_screens/sitter_profile/profile_details/your_pets/controllers/your.pets.controller.dart';

class YourPetsControllerBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<YourPetsController>(
          () => YourPetsController(),
    );

  }
}
