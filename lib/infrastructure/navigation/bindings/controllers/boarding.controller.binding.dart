import 'package:get/get.dart';

import '../../../../presentation/boarding_screens/controllers/boarding.controller.dart';
import '/infrastructure/navigation/bindings/domains/firebase.repository.binding.dart';

class BoardingControllerBinding extends Bindings {
  @override
  void dependencies() {
    final firebaseRepositoryBinding = FirebaseRepositoryBinding();

    Get.lazyPut<BoardingController>(
          () => BoardingController(firebaseRepository: firebaseRepositoryBinding.repository),
    );

  }
}
