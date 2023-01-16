import 'package:get/get.dart';
import '../../../../presentation/pet_profile_screens/pet_basic_details/controllers/pet_profile_detail_controller.dart';
import '../../../../presentation/pet_profile_screens/pet_profile_image/controllers/pet_profile_image_controller.dart';
import '../../../../presentation/sitter_build_trust_screens/sitter_profile/controllers/create.profile.controller.dart';
import '../../../../presentation/sitter_build_trust_screens/sitter_profile/profile_details/basic_info/controllers/basic.info.controller.dart';
import '../../../../presentation/sitter_build_trust_screens/sitter_profile/profile_details/date_of_birth/controllers/date.of.birth.controller.dart';
import '../../../../presentation/sitter_build_trust_screens/sitter_profile/profile_details/details/controllers/details.controller.dart';
import '../../../../presentation/sitter_build_trust_screens/sitter_profile/profile_details/your_pets/controllers/your.pets.controller.dart';
import '/infrastructure/navigation/bindings/domains/firebase.repository.binding.dart';

class PetProfileImageControllerBinding extends Bindings {
  @override
  void dependencies() {
    final firebaseRepositoryBinding = FirebaseRepositoryBinding();

    Get.lazyPut<PetProfileImageController>(
          () => PetProfileImageController(firebaseRepository: firebaseRepositoryBinding.repository),
    );
  }
}
