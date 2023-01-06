import 'package:get/get.dart';
import '../../../../presentation/set_up_profile/controllers/setupprofile.controller.dart';
import '/infrastructure/navigation/bindings/domains/firebase.repository.binding.dart';

class SetupProfileControllerBinding extends Bindings {
  @override
  void dependencies() {
    final firebaseRepositoryBinding = FirebaseRepositoryBinding();

    Get.lazyPut<SetupProfileController>(
          () => SetupProfileController(firebaseRepository: firebaseRepositoryBinding.repository),
    );

  }
}
