import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class UpcommingBookingController extends GetxController{
  var tabIndex = 0.obs;
  var reviewAvailable = false;

  var selectedDay = 10.obs;
  var lastSelectedDay = 10.obs;


  @override
  void onConnectionChange(ConnectivityResult result) {

  }

  @override
  void onTokenChange(String? result) {

  }


}
