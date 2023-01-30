import 'package:get/get.dart';
import '../../../../presentation/sitter_app/booking/walking_page/controllers/walking_service_controller.dart';
import '/infrastructure/navigation/bindings/domains/firebase.repository.binding.dart';

class WalkingServiceControllerBinding extends Bindings {
  @override
  void dependencies() {
    final firebaseRepositoryBinding = FirebaseRepositoryBinding();

    Get.lazyPut<WalkingServiceController>(
          () => WalkingServiceController(firebaseRepository: firebaseRepositoryBinding.repository),
    );

  }
}
