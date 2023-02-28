import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import '../../hoofzy/model/popular_service_data.dart';

class SitterProfileController extends GetxController {
  var tabIndex = 0.obs;
  var reviewAvailable = false;

  List<PopularServiceData> popularServiceList = PopularServiceData.popularServiceList;



  @override
  void onConnectionChange(ConnectivityResult result) {

  }

  @override
  void onTokenChange(String? result) {

  }


}
