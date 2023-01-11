import 'package:get/get.dart';
import '../../../../presentation/sitter_build_trust_screens/sitter_profile/controllers/create.profile.controller.dart';
import '../../../../presentation/sitter_build_trust_screens/sitter_profile/profile_details/basic_info/controllers/basic.info.controller.dart';
import '/infrastructure/navigation/bindings/domains/firebase.repository.binding.dart';

class BasicInfoControllerBinding extends Bindings {
  @override
  void dependencies() {
    final firebaseRepositoryBinding = FirebaseRepositoryBinding();

    Get.lazyPut<BasicInfoController>(
          () => BasicInfoController(firebaseRepository: firebaseRepositoryBinding.repository),
    );

  }
}
