import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../infrastructure/base/base_view.dart';
import '../../constants.dart';
import '../../infrastructure/navigation/routes.dart';
import 'bscreen_1.dart';
import 'bscreen_2.dart';
import 'bscreen_3.dart';
import 'controllers/boarding.controller.dart';

class BoardingScreenView extends BaseView<BoardingController> {
  @override
  Widget body(BuildContext context) {
    final panels = PageView(
      onPageChanged: (int page) {
        controller.currentPage.value = page;
      },
      controller: PageController(initialPage: 0),
      children: <Widget>[
        BScreen1(),
        BScreen2(),
        BScreen3(),
      ],
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:  AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Image.asset('assets/hoofzy/boarding_title.png',width: 130,height: 60,fit: BoxFit.contain),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(image: AssetImage('assets/hoofzy/background.png'),fit: BoxFit.fill),
        ),
        child: Stack(children: <Widget>[
          panels,
          Stack(
            children: <Widget>[
              //nextButton(context)
              Obx(() => (2 == controller.currentPage.value ? nextButton(context) : skipText()))

            ],
          ),
        ]),
      ),
    );
  }
  skipText(){
    return const Padding(
      padding: EdgeInsets.all(40.0),
      child: Align(alignment:Alignment.bottomCenter,child: Text('Swipe left to continue',style: textBlackLight15)),
    );
  }

  nextButton(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(left: 60.0,right: 60.0,bottom: 40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children:  [
          //Text('Swipe left to continue',style: textBlackLight15),
          Container(
            height: 56,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Align(
                alignment: Alignment.center,
                child: TextButton(onPressed: (){
                  Get.offNamed(Routes.login);
                },child: Text('Get Started',style: textWhiteMedium16,))),
          )
        ],
      ),
    );
  }
}

