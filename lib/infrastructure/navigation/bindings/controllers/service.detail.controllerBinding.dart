import 'package:get/get.dart';
import '../../../../presentation/pet_profile_screens/pet_avatar_screen/controllers/pet.avatar.controller.dart';
import '../../../../presentation/pet_profile_screens/pet_basic_details/controllers/pet_profile_detail_controller.dart';
import '../../../../presentation/pet_profile_screens/pet_breed/controllers/pet.breed.controller.dart';
import '../../../../presentation/sitter_build_trust_screens/sitter_profile/controllers/create.profile.controller.dart';
import '../../../../presentation/sitter_build_trust_screens/sitter_profile/profile_details/basic_info/controllers/basic.info.controller.dart';
import '../../../../presentation/sitter_build_trust_screens/sitter_profile/profile_details/date_of_birth/controllers/date.of.birth.controller.dart';
import '../../../../presentation/sitter_build_trust_screens/sitter_profile/profile_details/details/controllers/details.controller.dart';
import '../../../../presentation/sitter_build_trust_screens/sitter_profile/profile_details/your_pets/controllers/your.pets.controller.dart';
import '../../../../presentation/user_app/boarding_screens/service_detail_screen/controllers/service.detail.controller.dart';
import '../../../../presentation/user_app/boarding_screens/sort_filter_screen/controllers/sort.filter.controller.dart';
import '../../../../presentation/user_app/pets_screens/controllers/pet.controller.dart';
import '/infrastructure/navigation/bindings/domains/firebase.repository.binding.dart';

class ServiceDetailControllerBinding extends Bindings {
  @override
  void dependencies() {
    final firebaseRepositoryBinding = FirebaseRepositoryBinding();

    Get.lazyPut<ServiceDetailController>(
          () => ServiceDetailController(firebaseRepository: firebaseRepositoryBinding.repository),
    );

  }
}
