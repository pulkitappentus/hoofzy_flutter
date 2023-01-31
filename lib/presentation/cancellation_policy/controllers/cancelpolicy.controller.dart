import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import '../../../../domain/firebase/firebase.repository.dart';
import '../../../../infrastructure/base/base_controller.dart';

class CancelPolicyController extends BaseController {
  final FirebaseRepository _firebaseRepository;
  var tabIndex = 0.obs;
  var reviewAvailable = false;
  CancelPolicyController({required FirebaseRepository firebaseRepository}) : _firebaseRepository = firebaseRepository;

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
