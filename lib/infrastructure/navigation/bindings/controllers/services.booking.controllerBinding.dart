import 'package:get/get.dart';
import '../../../../presentation/user_app/boarding_screens/services_booking_screen1/controllers/services.booking.controller.dart';

class ServicesBookingControllerBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<ServicesBookingController>(
          () => ServicesBookingController(),
    );

  }
}
