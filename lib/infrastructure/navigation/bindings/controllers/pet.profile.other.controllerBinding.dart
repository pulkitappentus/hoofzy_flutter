import 'package:get/get.dart';
import '../../../../presentation/pet_profile_screens/pet_other_details/controllers/pet_profile_other_controller.dart';

class PetProfileOtherControllerBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<PetProfileOtherController>(
          () => PetProfileOtherController(),
    );

  }
}
