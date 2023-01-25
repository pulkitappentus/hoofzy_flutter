import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';
import '../../../../../infrastructure/base/base_view.dart';
import '../../../../../infrastructure/navigation/routes.dart';
import '../safety_quiz/controllers/safety.quiz.controller.dart';

class CongratulationPage extends BaseView<SafetyQuizController> {

  @override
  Widget body(BuildContext context) {

    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(image: AssetImage('assets/hoofzy/background.png'),fit: BoxFit.fill)
      ),
      width: double.infinity,
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: SingleChildScrollView(
              child: Column(
                children: <Widget> [
                  AppBar(
                    toolbarHeight: 0,
                    backgroundColor: Color(0xFFFFFBF6),
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
                    title: Text('Create a Sitter Profile', style: headlineBlack20,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 58.0,left: 16,right: 16),
                    child: Lottie.asset('assets/lottie/congratulation_success_batch.json',width: double.infinity,height: 192,fit: BoxFit.fill),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(top: 54),
                    child: Align(alignment: Alignment.center,child: Text('You`re awesome! \nCongratulations!',style: headlineBlack20,)),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Align(alignment: Alignment.center,child: Text('You have successfully created a sitter`s profile. '
                        '\nYou can add the services you provide, \nor explore the sitter app.',style: textBlackLight15,textAlign: TextAlign.center,)),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 120.0,left: 68,right: 68),
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
                                Get.toNamed(Routes.sitterProfile);
                              },
                              child: Text('Add Services',style: textWhiteMedium15,),)
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
                              child: Text('Skip, Explore the sitter app',style: textBlackMedium16,),)
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

}





