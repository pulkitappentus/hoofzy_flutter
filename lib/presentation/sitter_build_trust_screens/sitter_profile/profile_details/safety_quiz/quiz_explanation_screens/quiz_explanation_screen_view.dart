import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../../../constants.dart';
import '../../../../../../infrastructure/core/base/base_view.dart';
import '../../../../../../infrastructure/navigation/routes.dart';
import '../controllers/safety.quiz.controller.dart';
import 'body_language2_page.dart';
import 'body_language3_page.dart';
import 'body_language4_page.dart';
import 'body_language_page.dart';

class QuizExplanationScreenView extends BaseView<SafetyQuizController> {
  @override
  Widget body(BuildContext context) {
    final panels = PageView(
      onPageChanged: (int page) {
        controller.currentPage.value = page;
      },
      controller: PageController(initialPage: 0),
      children: <Widget>[
        BodyLanguagePage(),
        BodyLanguage2Page(),
        BodyLanguage3Page(),
        BodyLanguage4Page(),
      ],
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:  AppBar(
        toolbarHeight: 30,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        child: Stack(children: <Widget>[
          Stack(children: [
            panels,
            Obx(() {
              return Padding(
                padding: const EdgeInsets.only(bottom: 0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: DotsIndicator(
                    dotsCount: 4,
                    position: controller.currentPage.value.toDouble(),
                    decorator: DotsDecorator(
                      color: Colors.black12,
                      activeColor: Colors.black,
                      size: const Size(13.0, 6.0),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                      activeSize: const Size(24.0, 6.0),
                      activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                    ),),
                ),
              );
            })
          ],),
          Stack(
            children: <Widget>[
              //nextButton(context)
              Obx(() => (3 == controller.currentPage.value ? nextButton(context) : startQuizButton(context)))
            ],
          ),
        ]),
      ),
    );
  }
  startQuizButton(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(left: 60.0,right: 60.0,bottom: 40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children:  [
          //Text('Swipe left to continue',style: textBlackLight15),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: primaryColorSitter,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Align(
                alignment: Alignment.center,
                child: TextButton(onPressed: (){
                },child: Text('Next',style: textWhiteMedium16,))),
          )
        ],
      ),
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
            height: 60,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: primaryColorSitter,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Align(
                alignment: Alignment.center,
                child: TextButton(onPressed: (){
                  Get.offNamed(Routes.startQuiz);
                },child: Text('Start Quiz',style: textWhiteMedium16,))),
          )
        ],
      ),
    );
  }
}

