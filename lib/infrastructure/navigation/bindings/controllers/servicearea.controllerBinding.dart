import 'package:get/get.dart';
import '../../../../presentation/availability/controllers/availability.controller.dart';
import '../../../../presentation/service_area_screen/controllers/servicearea.controller.dart';
import '/infrastructure/navigation/bindings/domains/firebase.repository.binding.dart';

class ServiceareaControllerBinding extends Bindings {
  @override
  void dependencies() {
    final firebaseRepositoryBinding = FirebaseRepositoryBinding();

    Get.lazyPut<ServiceareaController>(
          () => ServiceareaController(firebaseRepository: firebaseRepositoryBinding.repository),
    );

  }
}
