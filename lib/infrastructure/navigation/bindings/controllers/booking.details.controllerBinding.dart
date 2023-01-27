import 'package:get/get.dart';
import '../../../../presentation/about_home/controllers/abouthome.controllers.dart';
import '../../../../presentation/sitter_app/booking/booking_details/controllers/booking_details_controller.dart';
import '../../../../presentation/sitter_app/home_sitter/controllers/home_sitter_controller.dart';
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
