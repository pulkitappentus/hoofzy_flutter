import 'package:get/get.dart';
import '../../../../presentation/sitter_app/booking/up_comming_booking/controllers/upcomming_booking_controller.dart';

class UpcommingBookingControllerBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<UpcommingBookingController>(
          () => UpcommingBookingController(),
    );

  }
}
