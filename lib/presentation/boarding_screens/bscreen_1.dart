import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';

import '../../../infrastructure/base/base_view.dart';
import 'controllers/boarding.controller.dart';

class BScreen1 extends BaseView<BoardingController> {

  @override
  Widget body(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0,bottom: 40),
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
              child: Image.asset('assets/hoofzy/boarding_1_image.png',width: 180,height: 200,fit: BoxFit.fill),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40),
              child: Text(
                'Train your',
                style: textBlackBold22,
              ),
            ),
            const Text(
              'Furry Friend',
              textAlign: TextAlign.center,
              style: headlineBlack36,
            ),
            const Padding(
              padding: EdgeInsets.only(top : 20),
              child: Text(
                'Our programs are designed by experts to \nempower you to take training into your own hands.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  height: 1.8,
                  fontWeight: FontWeight.normal,
                  decoration: TextDecoration.none,
                  color: Colors.black,
                ),
              ),
            ),

           /* Expanded(child: Column(
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






