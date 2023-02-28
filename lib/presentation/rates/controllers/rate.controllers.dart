import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class RateController extends GetxController {
  var tabIndex = 0.obs;
  var reviewAvailable = false;


  @override
  void onConnectionChange(ConnectivityResult result) {

  }

  @override
  void onTokenChange(String? result) {

  }


}
