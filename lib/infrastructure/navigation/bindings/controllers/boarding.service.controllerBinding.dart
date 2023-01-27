import 'package:get/get.dart';
import '../../../../presentation/sitter_service_setting/boarding_screen/controllers/boarding.service.controller.dart';
import '/infrastructure/navigation/bindings/domains/firebase.repository.binding.dart';

class BoardingServiceControllerBinding extends Bindings {
  @override
  void dependencies() {
    final firebaseRepositoryBinding = FirebaseRepositoryBinding();

    Get.lazyPut<BoardingServiceController>(
          () => BoardingServiceController(firebaseRepository: firebaseRepositoryBinding.repository),
    );

  }
}
