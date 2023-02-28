import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../constants.dart';
import '../../infrastructure/core/base/base_view.dart';
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
    return Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage('assets/hoofzy/background.png'),
              fit: BoxFit.fill),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            toolbarHeight: 80,
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Image.asset('assets/hoofzy/boarding_title.png', width: 130,
                height: 60,
                fit: BoxFit.contain),
            centerTitle: true,
          ),
          body: Stack(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  top: 50.0, bottom: 120, left: 38, right: 38),
              child: Stack(
                children: <Widget>[
                  panels,
                  Obx(() {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 30.0),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: DotsIndicator(
                          dotsCount: 3,
                          position: controller.currentPage.value.toDouble(),
                          decorator: DotsDecorator(
                            color: avtarBackground,
                            activeColor: primaryColor,
                            size: const Size(13.0, 6.0),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                            activeSize: const Size(24.0, 6.0),
                            activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                          ),),
                      ),
                    );
                  })
                ],),
            ),
            Stack(
              children: <Widget>[
                Obx(() =>
                (2 == controller.currentPage.value
                    ? nextButton(context)
                    : skipText()))
              ],
            ),
          ]),
        )
    );
  }

  skipText() {
    return const Padding(
      padding: EdgeInsets.all(40.0),
      child: Align(alignment: Alignment.bottomCenter,
          child: Text('Swipe left to continue', style: textBlackLight15)),
    );
  }

  nextButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 60.0, right: 60.0, bottom: 40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          //Text('Swipe left to continue',style: textBlackLight15),
          Container(
            height: 56,
            width: MediaQuery
                .of(context)
                .size
                .width,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Align(
                alignment: Alignment.center,
                child: TextButton(onPressed: () {
                  Get.offNamed(Routes.login);
                }, child: Text('Get Started', style: textWhiteMedium16,))),
          )
        ],
      ),
    );
  }
}
