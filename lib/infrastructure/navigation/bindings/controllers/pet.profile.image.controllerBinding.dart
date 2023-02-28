import 'package:get/get.dart';
import '../../../../presentation/pet_profile_screens/pet_profile_image/controllers/pet_profile_image_controller.dart';

class PetProfileImageControllerBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<PetProfileImageController>(
          () => PetProfileImageController(),
    );
  }
}
