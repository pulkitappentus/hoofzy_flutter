import 'package:get/get.dart';
import '../../../../presentation/about_home/controllers/abouthome.controllers.dart';
import '../../../../presentation/availability/controllers/availability.controller.dart';
import '../../../../presentation/rates/controllers/rate.controllers.dart';
import '../../../../presentation/sitter_service_setting/controllers/servicesetting.controller.dart';
import '/infrastructure/navigation/bindings/domains/firebase.repository.binding.dart';

class AboutHomeControllerBinding extends Bindings {
  @override
  void dependencies() {
    final firebaseRepositoryBinding = FirebaseRepositoryBinding();

    Get.lazyPut<AboutHomeController>(
          () => AboutHomeController(firebaseRepository: firebaseRepositoryBinding.repository),
    );

  }
}
