import 'package:get/get.dart';
import '../../../../presentation/sitter_service_setting/boarding_screen/controllers/boarding.service.controller.dart';

class BoardingServiceControllerBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<BoardingServiceController>(
          () => BoardingServiceController(),
    );

  }
}
