import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import '../../../../domain/firebase/firebase.repository.dart';
import '../../../../infrastructure/base/base_controller.dart';

class PetPreferencesController extends BaseController {
  final FirebaseRepository _firebaseRepository;
  var tabIndex = 0.obs;
  var reviewAvailable = false;
  PetPreferencesController({required FirebaseRepository firebaseRepository}) : _firebaseRepository = firebaseRepository;

  //pet sizes
  var selectedSize = 10.obs;
  var lastSelectedSize = 10.obs;
  var sizeList = ['Small dog (0-10 kg)', 'Medium dog (10-20 kg)', 'Large dog (21-50 kg)', 'Gaint Dog (50+ kg)', 'Cat'];
  var petImageList = [
    'assets/hoofzy/small_grey_dog.png',
    'assets/hoofzy/medium_grey_dog.png',
    'assets/hoofzy/large_grey_dog.png',
    'assets/hoofzy/gaint_grey_dog.png',
    'assets/hoofzy/grey_cat.png'
  ];

  //number of pets
  var petsCount = 1.obs;


  @override
  void onConnectionChange(ConnectivityResult result) {

  }

  @override
  void onTokenChange(String? result) {

  }


}
