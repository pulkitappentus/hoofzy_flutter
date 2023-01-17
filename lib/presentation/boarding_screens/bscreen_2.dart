import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';

import '../../../infrastructure/base/base_view.dart';
import 'controllers/boarding.controller.dart';

class BScreen2 extends BaseView<BoardingController> {

  @override
  Widget body(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.only(top: 20.0,bottom: 130,left: 38,right: 38),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(30.0))

        ),
        child: Column(
          children: [
            AppBar(
              toolbarHeight: 0,
              backgroundColor: Colors.white,
              elevation: 0,
              title: Image.asset('assets/hoofzy/boarding_title.png',width: 130,height: 60,fit: BoxFit.contain),
              centerTitle: true,
            ),

            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Image.asset('assets/hoofzy/boarding_2_image.png',width: 208,height: 200,fit: BoxFit.fill),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40),
              child: Text(
                'Don’t buy! Adopt',
                style: headlineBlack24,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top : 20),
              child: Text(
                'Find the best pet near you and \nadopt your favourite one',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  height: 1.8,
                  fontWeight: FontWeight.normal,
                  decoration: TextDecoration.none,
                  color: Colors.black,
                ),
              ),
            ),

            /*Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text('Swipe left to continue',style: textBlackLight15),
              ],
            )
            )*/
          ],
        ),
      ),
    );
  }

}






