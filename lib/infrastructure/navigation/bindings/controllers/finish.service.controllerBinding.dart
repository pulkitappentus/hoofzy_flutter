import 'package:get/get.dart';
import '../../../../presentation/sitter_app/booking/finish_service/controllers/finish_service_controller.dart';
import '/infrastructure/navigation/bindings/domains/firebase.repository.binding.dart';

class FinishServiceControllerBinding extends Bindings {
  @override
  void dependencies() {
    final firebaseRepositoryBinding = FirebaseRepositoryBinding();

    Get.lazyPut<FinishServiceController>(
          () => FinishServiceController(firebaseRepository: firebaseRepositoryBinding.repository),
    );

  }
}
