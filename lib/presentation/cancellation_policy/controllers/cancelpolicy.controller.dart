import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class CancelPolicyController extends GetxController {
  var tabIndex = 0.obs;
  var reviewAvailable = false;

  //availability
  var selectedCancelReason = 10.obs;
  var lastSelectedCancelReason = 10.obs;
  var cancelReasonsList = ['Same day', 'One Day', 'Three days', 'Seven Days'];


  @override
  void onConnectionChange(ConnectivityResult result) {

  }

  @override
  void onTokenChange(String? result) {

  }


}
