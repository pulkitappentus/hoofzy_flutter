import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

import '../../../../../domain/firebase/firebase.repository.dart';
import '../../../../../infrastructure/base/base_controller.dart';

class ServiceDetailController extends BaseController {
  final FirebaseRepository _firebaseRepository;

  ServiceDetailController({required FirebaseRepository firebaseRepository}) : _firebaseRepository = firebaseRepository;

  var selectedService = 10.obs;
  var lastSelectedService = 10.obs;

  var selectedDays = 10.obs;
  var lastSelectedDays = 10.obs;

  @override
  void onConnectionChange(ConnectivityResult result) {

  }

  @override
  void onTokenChange(String? result) {

  }


}
