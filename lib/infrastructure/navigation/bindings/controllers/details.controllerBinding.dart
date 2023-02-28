import 'package:get/get.dart';
import '../../../../presentation/sitter_build_trust_screens/sitter_profile/profile_details/details/controllers/details.controller.dart';

class DetailsControllerBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<DetailsController>(
          () => DetailsController(),
    );

  }
}
