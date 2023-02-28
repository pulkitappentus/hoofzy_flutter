import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class ServiceBookingController extends GetxController {

  var selectedPet = 10.obs;
  var lastSelectedPet = 10.obs;

  var selectedDays = 10.obs;
  var lastSelectedDays = 10.obs;
  var selectedTime = 10.obs;
  var lastSelectedTime = 10.obs;

  //
  var selectedAvatar = 10.obs;
  var lastSelectedAvatar = 10.obs;

  @override
  void onConnectionChange(ConnectivityResult result) {

  }

  @override
  void onTokenChange(String? result) {

  }


}
