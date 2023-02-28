import 'package:get/get.dart';
import '../../../../presentation/pet_preferences/controllers/petpreferences.controller.dart';

class PetPreferencesControllerBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<PetPreferencesController>(
          () => PetPreferencesController(),
    );

  }
}
