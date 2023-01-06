import 'package:Hoofzy_V2/presentation/login_screens/controllers/login.controller.dart';
import 'package:get/get.dart';
import '/infrastructure/navigation/bindings/domains/firebase.repository.binding.dart';

class LoginControllerBinding extends Bindings {
  @override
  void dependencies() {
    final firebaseRepositoryBinding = FirebaseRepositoryBinding();

    Get.lazyPut<LoginController>(
          () => LoginController(firebaseRepository: firebaseRepositoryBinding.repository),
    );

  }
}
