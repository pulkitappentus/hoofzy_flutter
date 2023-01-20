import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import '../../../../domain/firebase/firebase.repository.dart';
import '../../../../infrastructure/base/base_controller.dart';

class PetController extends BaseController {
  final FirebaseRepository _firebaseRepository;

  PetController({required FirebaseRepository firebaseRepository}) : _firebaseRepository = firebaseRepository;

  var selectedPet = 10.obs;
  var lastSelectedPet = 10.obs;

  @override
  void onConnectionChange(ConnectivityResult result) {

  }

  @override
  void onTokenChange(String? result) {

  }

}
