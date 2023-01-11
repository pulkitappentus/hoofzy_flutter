import 'package:get/get.dart';
import '../../../../presentation/sitter_build_trust_screens/request_testimonials/controllers/request.testimonials.controller.dart';
import '../../../../presentation/sitter_build_trust_screens/sitter_profile/controllers/create.profile.controller.dart';
import '/infrastructure/navigation/bindings/domains/firebase.repository.binding.dart';

class RequestTestimonialsControllerBinding extends Bindings {
  @override
  void dependencies() {
    final firebaseRepositoryBinding = FirebaseRepositoryBinding();

    Get.lazyPut<RequestTestimonialsController>(
          () => RequestTestimonialsController(firebaseRepository: firebaseRepositoryBinding.repository),
    );

  }
}
