import 'package:get/get.dart';
import '../../../../presentation/availability/controllers/availability.controller.dart';

class AvailabilityControllerBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<AvailabilityController>(
          () => AvailabilityController(),
    );

  }
}
