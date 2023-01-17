import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import '../../../../domain/firebase/firebase.repository.dart';
import '../../../../infrastructure/base/base_controller.dart';

class PetProfileDetailController extends BaseController {
  final FirebaseRepository _firebaseRepository;
  var tabIndex = 0.obs;
  var reviewAvailable = false;
  PetProfileDetailController({required FirebaseRepository firebaseRepository}) : _firebaseRepository = firebaseRepository;

  var isDogSelect = false.obs;
  var isCatSelect = false.obs;
  var isMaleSelect = false.obs;
  var isFemaleSelect = false.obs;


  @override
  void onConnectionChange(ConnectivityResult result) {

  }

  @override
  void onTokenChange(String? result) {

  }


}
