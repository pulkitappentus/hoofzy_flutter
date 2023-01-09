import 'package:Hoofzy_V2/presentation/sitter_profile_screens/controllers/sitterprofile.controller.dart';
import 'package:get/get.dart';
import '/infrastructure/navigation/bindings/domains/firebase.repository.binding.dart';

class SitterProfileControllerBinding extends Bindings {
  @override
  void dependencies() {
    final firebaseRepositoryBinding = FirebaseRepositoryBinding();

    Get.lazyPut<SitterProfileController>(
          () => SitterProfileController(firebaseRepository: firebaseRepositoryBinding.repository),
    );

  }
}
