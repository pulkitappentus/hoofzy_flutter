import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../infrastructure/base/base_view.dart';
import '../../../infrastructure/navigation/routes.dart';
import 'controllers/boarding.controller.dart';

class BScreen3 extends BaseView<BoardingController> {

  @override
  Widget body(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0,bottom: 40),
        child: Column(
          children: [
            AppBar(
              toolbarHeight: 60,
              backgroundColor: Colors.white,
              elevation: 0,
              title: Image.asset('assets/hoofzy/boarding_title.png',width: 130,height: 60,fit: BoxFit.contain),
              centerTitle: true,
            ),

            Padding(
              padding: const EdgeInsets.only(top: 86.0),
              child: Image.asset('assets/hoofzy/boarding_3_image.png',width: 220,height: 174,fit: BoxFit.fill),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40),
              child: Text(
                'Join our',
                style: textBlackBold22,
              ),
            ),
            const Text(
              'Community',
              textAlign: TextAlign.center,
              style: headlineBlack36,
            ),
            const Padding(
              padding: EdgeInsets.only(top : 20),
              child: Text(
                'Share your training moments with other \ndog parents.',
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

            Expanded(child: Padding(
              padding: const EdgeInsets.only(left: 38.0,right: 38.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children:  [
                  //Text('Swipe left to continue',style: textBlackLight15),
                  Container(
                    height: 56,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                        child: TextButton(onPressed: (){
                          Get.offNamed(Routes.login);
                        },child: Text('Get Started',style: textWhiteMedium16,))),
                  )
                ],
              ),
            )
            )
          ],
        ),
      ),
    );
  }

}






