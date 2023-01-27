import 'package:get/get.dart';
import '../../../../presentation/about_home/controllers/abouthome.controllers.dart';
import '/infrastructure/navigation/bindings/domains/firebase.repository.binding.dart';

class AboutHomeControllerBinding extends Bindings {
  @override
  void dependencies() {
    final firebaseRepositoryBinding = FirebaseRepositoryBinding();

    Get.lazyPut<AboutHomeController>(
          () => AboutHomeController(firebaseRepository: firebaseRepositoryBinding.repository),
    );

  }
}
