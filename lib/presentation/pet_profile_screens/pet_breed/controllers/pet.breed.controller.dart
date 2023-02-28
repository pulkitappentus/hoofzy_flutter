import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class PetBreedController extends GetxController {
  var tabIndex = 0.obs;
  var reviewAvailable = false;

  var breedSelected = false.obs;

  var selectedIndex = 0.obs;
  var lastItemSelectedIndex = 0.obs;

  var selectedOtherIndex = 0.obs;
  var lastItemSelectedOtherIndex = 0.obs;


  @override
  void onConnectionChange(ConnectivityResult result) {

  }

  @override
  void onTokenChange(String? result) {

  }

}
