import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import '../../../../domain/firebase/firebase.repository.dart';
import '../../../../infrastructure/base/base_controller.dart';
import '../../hoofzy/model/popular_service_data.dart';

class ServiceSettingController extends BaseController {
  final FirebaseRepository _firebaseRepository;
  var tabIndex = 0.obs;
  var reviewAvailable = false;
  ServiceSettingController({required FirebaseRepository firebaseRepository}) : _firebaseRepository = firebaseRepository;

  List<PopularServiceData> popularServiceList = PopularServiceData.popularServiceList;



  @override
  void onConnectionChange(ConnectivityResult result) {

  }

  @override
  void onTokenChange(String? result) {

  }


}
