import 'package:get/get.dart';
import '../../../../presentation/pet_profile_screens/pet_breed/controllers/pet.breed.controller.dart';

class PetBreedControllerBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<PetBreedController>(
          () => PetBreedController(),
    );

  }
}
