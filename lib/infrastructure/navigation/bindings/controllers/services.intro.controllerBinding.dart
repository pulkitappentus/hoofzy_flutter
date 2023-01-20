import 'package:Hoofzy_V2/presentation/home/controllers/home.controller.dart';
import 'package:get/get.dart';
import '/infrastructure/navigation/bindings/domains/firebase.repository.binding.dart';

class ServicesIntroControllerBinding extends Bindings {
  @override
  void dependencies() {
    final firebaseRepositoryBinding = FirebaseRepositoryBinding();

    Get.lazyPut<HomeController>(
          () => HomeController(firebaseRepository: firebaseRepositoryBinding.repository),
    );

  }
}
