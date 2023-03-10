import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../../infrastructure/base/base_view.dart';
import '../../../../../infrastructure/navigation/routes.dart';
import '../safety_quiz/controllers/safety.quiz.controller.dart';

class QuizResultPage extends BaseView<SafetyQuizController> {

  @override
  Widget body(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBar(
              toolbarHeight: 56,
              backgroundColor: Colors.white,
              elevation: 0,
              centerTitle: true,
              leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.close,
                  color: Colors.black,
                ),
              ),
            ),
            Expanded(child: SingleChildScrollView(
              child: Column(
                children: <Widget> [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 6),
                    child: Container(
                      width: 146,
                      height: 144,
                      decoration: const BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/hoofzy/boarding_heart.png'),fit: BoxFit.fill)
                      ),
                    ),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 54),
                    child: Align(alignment: Alignment.topLeft,child: Text('3 of 4 Correct',style: textBlackMedium14,)),
                  ),
                  questionScreen(),

                  Padding(
                    padding: const EdgeInsets.only(top: 100.0,left: 58,right: 58),
                    child: Container(
                        height: 60,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: primaryColorSitter
                        ),
                        child: Align(alignment: Alignment.center,
                            child:TextButton
                              (
                              onPressed: (){
                                Get.toNamed(Routes.congratulation);
                              },
                              child: Text('Finish and return to sign-up',style: textWhiteMedium15,),)
                        )
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 50.0,left: 38,right: 38),
                    child: Container(
                        height: 56,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            //border: Border.all(color: greyColor,width: 1)
                        ),
                        child: Align(alignment: Alignment.center,
                            child:TextButton
                              (
                              onPressed: (){

                              },
                              child: Text('Revisit missed questions',style: textBlackMedium16,),)
                        )
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }

  questionScreen() {
    return Column(
      children: const [
        Padding(
          padding: const EdgeInsets.only(left: 16.0,top: 20,right: 16.0),
          child: Align(alignment: Alignment.topLeft,child: Text('You answered almost all correctly',style: textBlackMedium16,)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0,top:15),
          child: Align(alignment: Alignment.topLeft,child: Text('Nice work, but because you missed some, retake the questions you get wrong.'
              ' \nThis information is critical for understanding dogs and pet safety.',style: textBlackMedium14,)),
        ),
      ],
    );
  }
}





