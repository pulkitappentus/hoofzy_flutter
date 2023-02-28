import 'package:get/get.dart';

import '../../../../presentation/boarding_screens/controllers/boarding.controller.dart';

class BoardingControllerBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<BoardingController>(
          () => BoardingController(),
    );

  }
}
