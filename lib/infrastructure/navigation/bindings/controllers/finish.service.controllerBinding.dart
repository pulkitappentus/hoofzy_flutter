import 'package:get/get.dart';
import '../../../../presentation/sitter_app/booking/finish_service/controllers/finish_service_controller.dart';

class FinishServiceControllerBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<FinishServiceController>(
          () => FinishServiceController(),
    );

  }
}
