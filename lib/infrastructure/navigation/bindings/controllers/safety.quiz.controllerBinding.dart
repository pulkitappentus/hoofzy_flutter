import 'package:get/get.dart';
import '../../../../presentation/sitter_build_trust_screens/safety_quiz/controllers/safety.quiz.controller.dart';
import '../../../../presentation/sitter_build_trust_screens/sitter_profile/controllers/create.profile.controller.dart';
import '/infrastructure/navigation/bindings/domains/firebase.repository.binding.dart';

class SafetyQuizControllerBinding extends Bindings {
  @override
  void dependencies() {
    final firebaseRepositoryBinding = FirebaseRepositoryBinding();

    Get.lazyPut<SafetyQuizController>(
          () => SafetyQuizController(firebaseRepository: firebaseRepositoryBinding.repository),
    );

  }
}
