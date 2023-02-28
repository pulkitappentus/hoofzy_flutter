import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class PetAvatarController extends GetxController {

  var selectedAvatar = 10.obs;
  var lastSelectedAvatar = 10.obs;

  @override
  void onConnectionChange(ConnectivityResult result) {
  }

  @override
  void onTokenChange(String? result) {

  }

}
