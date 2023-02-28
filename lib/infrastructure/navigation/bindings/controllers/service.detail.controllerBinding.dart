import 'package:get/get.dart';
import '../../../../presentation/user_app/boarding_screens/service_detail_screen/controllers/service.detail.controller.dart';

class ServiceDetailControllerBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<ServiceDetailController>(
          () => ServiceDetailController(),
    );

  }
}
