import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';

import '../../../infrastructure/base/base_view.dart';
import 'controllers/boarding.controller.dart';

class BScreen1 extends BaseView<BoardingController> {
  @override
  Widget body(BuildContext context) {//FFF4EF
    return Container(
      //backgroundColor: Color(0xffFEFAF7),
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [Color(0xffFEFAF7), Color(0xFFFFF4EF)],
            stops: [0.0, 1.0],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
            tileMode: TileMode.repeated),

      ),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Color(0xffFFFBF6), Color(0xFFFFFFFF)],
              stops: [0.0, 1.0],
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              tileMode: TileMode.repeated),
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
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
              child: Image.asset('assets/hoofzy/boarding_1_image.png',width: 180,height: 200,fit: BoxFit.fill),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 45),
              child: Text(
                'Train your Furry Friend',
                style: headlineBlack,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top : 20,left: 30,right: 30),
              child: Text(
                'Our programs are designed by experts to empower you to take training into your own hands.',
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






