import 'package:get/get.dart';
import '../../../../presentation/about_home/controllers/abouthome.controllers.dart';
import '../../../../presentation/sitter_app/home_sitter/controllers/home_sitter_controller.dart';
import '/infrastructure/navigation/bindings/domains/firebase.repository.binding.dart';

class HomeSitterControllerBinding extends Bindings {
  @override
  void dependencies() {
    final firebaseRepositoryBinding = FirebaseRepositoryBinding();

    Get.lazyPut<HomeSitterController>(
          () => HomeSitterController(firebaseRepository: firebaseRepositoryBinding.repository),
    );

  }
}
