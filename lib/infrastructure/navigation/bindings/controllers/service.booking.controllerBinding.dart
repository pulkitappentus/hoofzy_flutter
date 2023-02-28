import 'package:get/get.dart';
import '../../../../presentation/user_app/boarding_screens/services_booking_screen/controllers/service.booking.controller.dart';

class ServiceBookingControllerBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<ServiceBookingController>(
          () => ServiceBookingController(),
    );

  }
}
