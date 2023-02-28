import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class AboutHomeController extends GetxController {
  var tabIndex = 0.obs;
  var reviewAvailable = false;

  //home type
  var selectedHomeType = 10.obs;
  var lastSelectedHomeType = 10.obs;
  var homeTypeList = ['House', 'Apartment', 'Farm'];

  //yard type
  var selectedYardType = 10.obs;
  var lastSelectedYardType = 10.obs;
  var yardTypeList = ['Fenced yard', 'Unfenced yard', 'No yard'];

  //owner expections
  var selectedExpectation = 10.obs;
  var lastSelectedExpectation = 10.obs;
  var expectationList = [
    'Smoking inside home',
    'Children age 0-5',
    'Children age 6-12',
    'Dogs are allowed on furniture',
    'Dogs are allowed on bed',
    'Cats at home',
    'Caged pets in home',
    'None of the above'
  ];

  //sitter expections host
  var selectedSitterExpectation = 10.obs;
  var lastSelectedSitterExpectation = 10.obs;
  var sitterExpectationList = [
    'Pets from different families at the same time',
    'Puppies under 1 year old',
    'Dogs that are not create trained',
    'Unneutered male dogs',
    'Female dogs in heat',
    'None of the above'
  ];


  @override
  void onConnectionChange(ConnectivityResult result) {

  }

  @override
  void onTokenChange(String? result) {

  }


}
