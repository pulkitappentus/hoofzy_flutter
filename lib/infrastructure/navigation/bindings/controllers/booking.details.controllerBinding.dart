import 'package:get/get.dart';
import '../../../../presentation/sitter_app/booking/booking_details/controllers/booking_details_controller.dart';

class BookingDetailsControllerBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<BookingDetailsController>(
          () => BookingDetailsController(),
    );

  }
}
