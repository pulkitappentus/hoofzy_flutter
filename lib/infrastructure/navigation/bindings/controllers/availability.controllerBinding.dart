import 'package:get/get.dart';
import '../../../../presentation/availability/controllers/availability.controller.dart';
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
