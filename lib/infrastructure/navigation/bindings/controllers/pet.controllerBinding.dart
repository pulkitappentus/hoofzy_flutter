import 'package:get/get.dart';
import '../../../../presentation/user_app/pets_screens/controllers/pet.controller.dart';

class PetControllerBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<PetController>(
          () => PetController(),
    );

  }
}
