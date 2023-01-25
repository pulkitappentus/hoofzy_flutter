import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

import '../../../../../domain/firebase/firebase.repository.dart';
import '../../../../../infrastructure/base/base_controller.dart';

class ServiceBookingController extends BaseController {
  final FirebaseRepository _firebaseRepository;

  ServiceBookingController({required FirebaseRepository firebaseRepository}) : _firebaseRepository = firebaseRepository;

  var selectedPet = 10.obs;
  var lastSelectedPet = 10.obs;

  var selectedDays = 10.obs;
  var lastSelectedDays = 10.obs;
  var selectedTime = 10.obs;
  var lastSelectedTime = 10.obs;

  //
  var selectedAvatar = 10.obs;
  var lastSelectedAvatar = 10.obs;

  @override
  void onConnectionChange(ConnectivityResult result) {

  }

  @override
  void onTokenChange(String? result) {

  }


}
