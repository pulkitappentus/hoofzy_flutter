import 'package:get/get.dart';
import '../../../../presentation/sitter_app/sitter_home_screens/controllers/sitter.home.controller.dart';
import '/infrastructure/navigation/bindings/domains/firebase.repository.binding.dart';

class SitterHomeControllerBinding extends Bindings {
  @override
  void dependencies() {
    final firebaseRepositoryBinding = FirebaseRepositoryBinding();

    Get.lazyPut<SitterHomeController>(
          () => SitterHomeController(firebaseRepository: firebaseRepositoryBinding.repository),
    );

  }
}
