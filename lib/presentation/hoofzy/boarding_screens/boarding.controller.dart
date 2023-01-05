import 'package:Hoofzy_V2/presentation/hoofzy/boarding_screens/bscreen_3.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:in_app_review/in_app_review.dart';
import '../../../domain/firebase/firebase.repository.dart';
import '../../../infrastructure/base/base_controller.dart';
import 'bscreen_1.dart';
import 'bscreen_2.dart';

class BoardingController extends BaseController {
  final FirebaseRepository _firebaseRepository;
  var tabIndex = 0.obs;
  var reviewAvailable = false;
  BoardingController({required FirebaseRepository firebaseRepository}) : _firebaseRepository = firebaseRepository;

  //
  PageController controller=PageController();
  List<Widget> list=<Widget>[
    new Center(child:new BScreen1()),
    new Center(child:new BScreen2()),
    new Center(child:new BScreen3())
  ];

  int curr=0;


  @override
  void onConnectionChange(ConnectivityResult result) {

  }

  @override
  void onTokenChange(String? result) {

  }


}
