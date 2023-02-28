import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class AvailabilityController extends GetxController {
  var tabIndex = 0.obs;
  var reviewAvailable = false;

  var atHome = false.obs;
  var notAtHome = false.obs;

  //availability
  var selectedDay = 10.obs;
  var lastSelectedDay = 10.obs;
  var dayList = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];

  //frequently potty breaks
  var selectedHour = 10.obs;
  var lastSelectedHour = 10.obs;
  var hourList = ['0-2 hours', '2-4 hours', '4-8 hours', '8+ hours'];

  //new client reach
  var selectedReachDay = 10.obs;
  var lastSelectedReachDay = 10.obs;
  var reachDayList = ['0 Days (I accept same day bookings)', '1 Days', '2 Days', '3 Days', '1 Week', '2 Weeks'];


  @override
  void onConnectionChange(ConnectivityResult result) {

  }

  @override
  void onTokenChange(String? result) {

  }


}
