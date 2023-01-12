import 'package:get/get.dart';
import '../../../../presentation/sitter_build_trust_screens/sitter_profile/controllers/create.profile.controller.dart';
import '../../../../presentation/sitter_build_trust_screens/sitter_profile/profile_details/basic_info/controllers/basic.info.controller.dart';
import '../../../../presentation/sitter_build_trust_screens/sitter_profile/profile_details/date_of_birth/controllers/date.of.birth.controller.dart';
import '/infrastructure/navigation/bindings/domains/firebase.repository.binding.dart';

class DateOfBirthControllerBinding extends Bindings {
  @override
  void dependencies() {
    final firebaseRepositoryBinding = FirebaseRepositoryBinding();

    Get.lazyPut<DateOfBirthController>(
          () => DateOfBirthController(firebaseRepository: firebaseRepositoryBinding.repository),
    );

  }
}