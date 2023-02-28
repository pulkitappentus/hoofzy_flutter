import 'package:get/get.dart';
import '../../../../presentation/sitter_build_trust_screens/final_details/controllers/final.details.controller.dart';

class FinalDetailsControllerBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<FinalDetailsController>(
          () => FinalDetailsController(),
    );

  }
}
