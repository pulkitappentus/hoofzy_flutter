import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import '../../../../domain/firebase/firebase.repository.dart';
import '../../../../infrastructure/base/base_controller.dart';

class PetBreedController extends BaseController {
  final FirebaseRepository _firebaseRepository;
  var tabIndex = 0.obs;
  var reviewAvailable = false;
  PetBreedController({required FirebaseRepository firebaseRepository}) : _firebaseRepository = firebaseRepository;

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
