import 'package:get/get.dart';
import '../../../../presentation/cancellation_policy/controllers/cancelpolicy.controller.dart';

class CancelPolicyControllerBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<CancelPolicyController>(
          () => CancelPolicyController(),
    );

  }
}
