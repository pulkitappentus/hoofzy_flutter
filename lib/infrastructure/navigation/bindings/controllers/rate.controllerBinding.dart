import 'package:get/get.dart';
import '../../../../presentation/rates/controllers/rate.controllers.dart';
import '/infrastructure/navigation/bindings/domains/firebase.repository.binding.dart';

class RateControllerBinding extends Bindings {
  @override
  void dependencies() {
    final firebaseRepositoryBinding = FirebaseRepositoryBinding();

    Get.lazyPut<RateController>(
          () => RateController(firebaseRepository: firebaseRepositoryBinding.repository),
    );

  }
}
