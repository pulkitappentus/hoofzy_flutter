import 'package:get/get.dart';
import '../../../../presentation/sitter_build_trust_screens/sitter_profile/profile_details/basic_info/controllers/basic.info.controller.dart';

class BasicInfoControllerBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<BasicInfoController>(
          () => BasicInfoController(),
    );

  }
}
