import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class BoardingController extends GetxController {
  var tabIndex = 0.obs;
  var reviewAvailable = false;

  var currentPage = 0.obs;

  @override
  void onConnectionChange(ConnectivityResult result) {

  }

  @override
  void onTokenChange(String? result) {

  }


}
