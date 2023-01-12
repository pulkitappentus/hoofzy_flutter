import 'package:get/get.dart';
import '../../../../presentation/sitter_build_trust_screens/sitter_profile/controllers/create.profile.controller.dart';
import '../../../../presentation/sitter_build_trust_screens/sitter_profile/profile_details/basic_info/controllers/basic.info.controller.dart';
import '../../../../presentation/sitter_build_trust_screens/sitter_profile/profile_details/date_of_birth/controllers/date.of.birth.controller.dart';
import '../../../../presentation/sitter_build_trust_screens/sitter_profile/profile_details/details/controllers/details.controller.dart';
import '../../../../presentation/sitter_build_trust_screens/sitter_profile/profile_details/your_pets/controllers/your.pets.controller.dart';
import '/infrastructure/navigation/bindings/domains/firebase.repository.binding.dart';

class YourPetsControllerBinding extends Bindings {
  @override
  void dependencies() {
    final firebaseRepositoryBinding = FirebaseRepositoryBinding();

    Get.lazyPut<YourPetsController>(
          () => YourPetsController(firebaseRepository: firebaseRepositoryBinding.repository),
    );

  }
}
