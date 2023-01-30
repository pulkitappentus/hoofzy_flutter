import 'package:get/get.dart';
import '../../../../presentation/sitter_app/booking/up_comming_booking/controllers/upcomming_booking_controller.dart';
import '/infrastructure/navigation/bindings/domains/firebase.repository.binding.dart';

class UpcommingBookingControllerBinding extends Bindings {
  @override
  void dependencies() {
    final firebaseRepositoryBinding = FirebaseRepositoryBinding();

    Get.lazyPut<UpcommingBookingController>(
          () => UpcommingBookingController(firebaseRepository: firebaseRepositoryBinding.repository),
    );

  }
}
