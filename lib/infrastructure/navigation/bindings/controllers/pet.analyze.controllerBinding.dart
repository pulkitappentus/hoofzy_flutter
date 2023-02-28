import 'package:get/get.dart';
import '../../../../presentation/pet_profile_screens/pet_avatar_screen/controllers/pet.avatar.controller.dart';

class PetAnalyzeControllerBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<PetAvatarController>(
          () => PetAvatarController(),
    );

  }
}
