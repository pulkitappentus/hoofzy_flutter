import 'package:get/get.dart';
import '../../../../presentation/sitter_build_trust_screens/final_details/controllers/final.details.controller.dart';
import '../../../../presentation/sitter_build_trust_screens/sitter_profile/controllers/create.profile.controller.dart';
import '/infrastructure/navigation/bindings/domains/firebase.repository.binding.dart';

class FinalDetailsControllerBinding extends Bindings {
  @override
  void dependencies() {
    final firebaseRepositoryBinding = FirebaseRepositoryBinding();

    Get.lazyPut<FinalDetailsController>(
          () => FinalDetailsController(firebaseRepository: firebaseRepositoryBinding.repository),
    );

  }
}
