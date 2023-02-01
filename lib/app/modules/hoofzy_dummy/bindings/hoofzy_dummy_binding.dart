import 'package:get/get.dart';

import '../controllers/hoofzy_dummy_controller.dart';

class HoofzyDummyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HoofzyDummyController>(
      () => HoofzyDummyController(),
    );
  }
}
