import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class YourPetsController extends GetxController {
  var tabIndex = 0.obs;
  var reviewAvailable = false;

  var isPetHave = false.obs;
  var isDonthavePet = false.obs;


  @override
  void onConnectionChange(ConnectivityResult result) {

  }

  @override
  void onTokenChange(String? result) {

  }


}
