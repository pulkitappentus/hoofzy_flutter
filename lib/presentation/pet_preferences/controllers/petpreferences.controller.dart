import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class PetPreferencesController extends GetxController {
  var tabIndex = 0.obs;
  var reviewAvailable = false;

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
