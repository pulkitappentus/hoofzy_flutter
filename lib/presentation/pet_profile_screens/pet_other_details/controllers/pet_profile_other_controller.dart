import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import '../../../../domain/firebase/firebase.repository.dart';
import '../../../../infrastructure/base/base_controller.dart';

class PetProfileOtherController extends BaseController {
  final FirebaseRepository _firebaseRepository;

  PetProfileOtherController({required FirebaseRepository firebaseRepository}) : _firebaseRepository = firebaseRepository;

  var selectedPetSizeIndex = 10.obs;
  var lastPetSizeSelectedIndex = 10.obs;

  var selectedPetFriendly = 10.obs;
  var lastSelectedPetFriendly = 10.obs;

  var selectedPetTemp = 10.obs;
  var lastSelectedPetTemp = 10.obs;

  var isValid = false.obs;

  @override
  void onConnectionChange(ConnectivityResult result) {

  }

  @override
  void onTokenChange(String? result) {

  }

  checkValidation(){
    if (selectedPetSizeIndex==10){
      isValid.value = false;
    }
    else if(selectedPetFriendly==10){
      isValid.value = false;
    }
    else if(selectedPetTemp==10){
      isValid.value = false;
    }
    else{
      isValid.value = true;
    }
  }


}
