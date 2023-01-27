import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import '../../../../../domain/firebase/firebase.repository.dart';
import '../../../../../infrastructure/base/base_controller.dart';

class UpcommingBookingController extends BaseController {
  final FirebaseRepository _firebaseRepository;
  var tabIndex = 0.obs;
  var reviewAvailable = false;
  UpcommingBookingController({required FirebaseRepository firebaseRepository}) : _firebaseRepository = firebaseRepository;

  var selectedDay = 10.obs;
  var lastSelectedDay = 10.obs;


  @override
  void onConnectionChange(ConnectivityResult result) {

  }

  @override
  void onTokenChange(String? result) {

  }


}
