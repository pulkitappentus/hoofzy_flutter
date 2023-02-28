import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class ServicesBookingController extends GetxController {

  var selectedService = 10.obs;
  var lastSelectedService = 10.obs;

  var selectedDays = 10.obs;
  var lastSelectedDays = 10.obs;

  @override
  void onConnectionChange(ConnectivityResult result) {

  }

  @override
  void onTokenChange(String? result) {

  }


}
