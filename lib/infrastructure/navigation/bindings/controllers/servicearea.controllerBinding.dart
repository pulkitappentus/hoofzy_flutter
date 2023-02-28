import 'package:get/get.dart';
import '../../../../presentation/service_area_screen/controllers/servicearea.controller.dart';

class ServiceareaControllerBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<ServiceareaController>(
          () => ServiceareaController(),
    );

  }
}
