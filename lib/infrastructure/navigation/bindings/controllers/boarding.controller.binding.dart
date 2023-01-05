import 'package:get/get.dart';
import '../../../../presentation/hoofzy/boarding_screens/boarding.controller.dart';
import '/presentation/home/controllers/home.controller.dart';

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
