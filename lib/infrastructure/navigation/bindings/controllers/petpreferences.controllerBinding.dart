import 'package:get/get.dart';
import '../../../../presentation/pet_preferences/controllers/petpreferences.controller.dart';
import '/infrastructure/navigation/bindings/domains/firebase.repository.binding.dart';

class PetPreferencesControllerBinding extends Bindings {
  @override
  void dependencies() {
    final firebaseRepositoryBinding = FirebaseRepositoryBinding();

    Get.lazyPut<PetPreferencesController>(
          () => PetPreferencesController(firebaseRepository: firebaseRepositoryBinding.repository),
    );

  }
}
