import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';

import '../../../infrastructure/base/base_view.dart';
import 'boarding.controller.dart';

class BScreen1 extends BaseView<BoardingController> {

  @override
  Widget body(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/hoofzy/furry_friend.png',width: 308,height: 204,fit: BoxFit.fill),
          const Padding(
            padding: EdgeInsets.only(top: 34),
            child: Text(
              'Train your',
              style: textBlackBold22,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top : 10,left: 12,right: 12),
            child: Text(
              'Furry Friend',
              textAlign: TextAlign.center,
              style: headlineBlack36,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top : 20,left: 12,right: 12),
            child: Text(
              'Our programs are designed by experts to \nempower you to take training into your own hands.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                decoration: TextDecoration.none,
                color: Colors.black,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text('Swipe left to continue.',style: textBlackLight15,),
          )
        ],
      ),
    );
  }

}






