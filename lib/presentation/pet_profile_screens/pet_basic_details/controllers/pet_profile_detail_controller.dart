import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class PetProfileDetailController extends GetxController {

  var isDogSelect = false.obs;
  var isCatSelect = false.obs;
  var isMaleSelect = false.obs;
  var isFemaleSelect = false.obs;

  var isValid = false.obs;

  var selectedSuggestionName = 10.obs;
  var lastselectedSuggestionName = 10.obs;

  //date of birth
  var dob = 'Add your pet date of bith'.obs;
  
  dobb(DateTime newDate){
    dob.value = newDate.toIso8601String().split("T")[0];
  }
  
  @override
  void onConnectionChange(ConnectivityResult result) {

  }

  @override
  void onTokenChange(String? result) {

  }

  checkValidation(){
    if (!isDogSelect.value){
      isValid.value = false;
    }
    else if(!isCatSelect.value){
      isValid.value = false;
    }
    else if(!isMaleSelect.value){
      isValid.value = false;
    }
    else if(!isFemaleSelect.value){
      isValid.value = false;
    }
    else{
      isValid.value = true;
    }
  }



}
