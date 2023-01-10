import 'package:get/get.dart';
import '../../../../presentation/availability/controllers/availability.controller.dart';
import '../../../../presentation/rates/controllers/rate.controllers.dart';
import '../../../../presentation/sitter_service_setting/controllers/servicesetting.controller.dart';
import '/infrastructure/navigation/bindings/domains/firebase.repository.binding.dart';

class AvailabilityControllerBinding extends Bindings {
  @override
  void dependencies() {
    final firebaseRepositoryBinding = FirebaseRepositoryBinding();

    Get.lazyPut<AvailabilityController>(
          () => AvailabilityController(firebaseRepository: firebaseRepositoryBinding.repository),
    );

  }
}
