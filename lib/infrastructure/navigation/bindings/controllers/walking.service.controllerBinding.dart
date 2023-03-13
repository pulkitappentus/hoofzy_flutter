import 'package:get/get.dart';
import '../../../../presentation/sitter_app/booking/walking_page/controllers/walking_service_controller.dart';

class WalkingServiceControllerBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<WalkingServiceController>(
          () => WalkingServiceController(),
    );

  }
}
