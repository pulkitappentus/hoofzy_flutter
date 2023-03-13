import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class SortFilterController extends GetxController {

  var selectedService = 10.obs;
  var lastSelectedService = 10.obs;
  var serviceList = ['Most \npopular', 'Verified \nBoarding', 'Distance \nnear to far', 'Distance \nfar to near', 'Price low \nto high', 'Price high \nto low'];

  var selectedDays = 10.obs;
  var lastSelectedDays = 10.obs;

  //distance rating
  var selectedRating = 10.obs;
  var lastSelectedRating = 10.obs;
  var distanceRatingList = ['1Star', '2Star', '3Star', '4Star', '5Star'];

  //house condition
  var selectedCondition = 10.obs;
  var lastSelectedCondition = 10.obs;
  var conditionList = ['Has house (excludes apartments)', 'Has fenced yard', 'Dogs allowed on furniture', 'Dogs allowed on bed', 'Non-smoking home'];

  //pets in the home
  var selectedPetsCount = 10.obs;
  var lastSelectedPetsCount = 10.obs;
  var petsCountList = ['Doesn`t own a dog', 'Doesn`t own a cat', 'Accepts only one client at a time', 'Does not own caged pets'];

  //children in the home
  var selectedChildrenCount = 10.obs;
  var lastSelectedChildrenCount = 10.obs;
  var childrenCountList = ['Has no children', 'No children 0-5 years old', 'No children 6-12 years old'];

  //children in the home
  var selectedASCount = 10.obs;
  var lastSelectedASCount = 10.obs;
  var additionalServiceCountList = [
    'Puppy care',
    'Cat care',
    'Accepts unspayed female dogs',
    'Accepts non neutered male dogs',
    'Bathing / Grooming',
    'Dog first-aid / CPR'
  ];

  @override
  void onConnectionChange(ConnectivityResult result) {

  }

  @override
  void onTokenChange(String? result) {

  }


}
