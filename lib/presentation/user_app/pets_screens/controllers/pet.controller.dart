import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class PetController extends GetxController {


  var selectedPet = 10.obs;
  var lastSelectedPet = 10.obs;

  //changed algo
  var selected_pet = false.obs;
  var alreadySelected = false.obs;

  @override
  void onConnectionChange(ConnectivityResult result) {

  }

  @override
  void onTokenChange(String? result) {

  }

}
