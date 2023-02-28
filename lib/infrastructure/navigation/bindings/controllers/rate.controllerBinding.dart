import 'package:get/get.dart';
import '../../../../presentation/rates/controllers/rate.controllers.dart';

class RateControllerBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<RateController>(
          () => RateController(),
    );

  }
}
