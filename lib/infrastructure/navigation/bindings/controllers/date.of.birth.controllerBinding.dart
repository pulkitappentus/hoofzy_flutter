import 'package:get/get.dart';
import '../../../../presentation/sitter_build_trust_screens/sitter_profile/profile_details/date_of_birth/controllers/date.of.birth.controller.dart';

class DateOfBirthControllerBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<DateOfBirthController>(
          () => DateOfBirthController(),
    );

  }
}
