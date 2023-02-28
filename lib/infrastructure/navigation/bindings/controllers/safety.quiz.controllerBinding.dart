import 'package:get/get.dart';
import '../../../../presentation/sitter_build_trust_screens/sitter_profile/profile_details/safety_quiz/controllers/safety.quiz.controller.dart';

class SafetyQuizControllerBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<SafetyQuizController>(
          () => SafetyQuizController(),
    );

  }
}
