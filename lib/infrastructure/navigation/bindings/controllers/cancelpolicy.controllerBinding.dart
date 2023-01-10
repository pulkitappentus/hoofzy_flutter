import 'package:get/get.dart';
import '../../../../presentation/availability/controllers/availability.controller.dart';
import '../../../../presentation/cancellation_policy/controllers/cancelpolicy.controller.dart';
import '../../../../presentation/rates/controllers/rate.controllers.dart';
import '../../../../presentation/sitter_service_setting/controllers/servicesetting.controller.dart';
import '/infrastructure/navigation/bindings/domains/firebase.repository.binding.dart';

class CancelPolicyControllerBinding extends Bindings {
  @override
  void dependencies() {
    final firebaseRepositoryBinding = FirebaseRepositoryBinding();

    Get.lazyPut<CancelPolicyController>(
          () => CancelPolicyController(firebaseRepository: firebaseRepositoryBinding.repository),
    );

  }
}
