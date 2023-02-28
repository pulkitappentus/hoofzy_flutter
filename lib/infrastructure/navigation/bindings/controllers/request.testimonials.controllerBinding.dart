import 'package:get/get.dart';
import '../../../../presentation/sitter_build_trust_screens/request_testimonials/controllers/request.testimonials.controller.dart';

class RequestTestimonialsControllerBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<RequestTestimonialsController>(
          () => RequestTestimonialsController(),
    );

  }
}
