import 'package:get/get.dart';
import '../../../../presentation/sitter_app/booking/booking_details/controllers/booking_details_controller.dart';
import '/infrastructure/navigation/bindings/domains/firebase.repository.binding.dart';

class BookingDetailsControllerBinding extends Bindings {
  @override
  void dependencies() {
    final firebaseRepositoryBinding = FirebaseRepositoryBinding();

    Get.lazyPut<BookingDetailsController>(
          () => BookingDetailsController(firebaseRepository: firebaseRepositoryBinding.repository),
    );

  }
}
