import 'package:get/get.dart';
import '../../../../presentation/sitter_service_setting/controllers/servicesetting.controller.dart';
import '/infrastructure/navigation/bindings/domains/firebase.repository.binding.dart';

class ServiceSettingControllerBinding extends Bindings {
  @override
  void dependencies() {
    final firebaseRepositoryBinding = FirebaseRepositoryBinding();

    Get.lazyPut<ServiceSettingController>(
          () => ServiceSettingController(firebaseRepository: firebaseRepositoryBinding.repository),
    );

  }
}
