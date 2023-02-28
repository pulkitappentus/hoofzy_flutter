import 'package:get/get.dart';
import '../../../../presentation/pet_profile_screens/pet_basic_details/controllers/pet_profile_detail_controller.dart';

class PetProfileDetailControllerBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<PetProfileDetailController>(
          () => PetProfileDetailController(),
    );

  }
}
