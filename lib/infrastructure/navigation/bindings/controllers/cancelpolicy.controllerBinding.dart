import 'package:get/get.dart';
import '../../../../presentation/cancellation_policy/controllers/cancelpolicy.controller.dart';
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
