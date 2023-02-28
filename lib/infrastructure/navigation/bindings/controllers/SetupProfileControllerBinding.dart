import 'package:get/get.dart';
import '../../../../presentation/set_up_profile/controllers/setupprofile.controller.dart';

class SetupProfileControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SetupProfileController>(
          () => SetupProfileController(),
    );

  }
}
