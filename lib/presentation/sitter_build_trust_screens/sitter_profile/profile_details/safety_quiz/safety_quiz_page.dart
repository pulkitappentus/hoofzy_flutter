import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../../infrastructure/core/base/base_view.dart';
import '../../../../../infrastructure/navigation/routes.dart';
import 'controllers/safety.quiz.controller.dart';

class SafetyQuizPage extends BaseView<SafetyQuizController> {

  @override
  Widget body(BuildContext context) {

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [Color(0xFFFFFBF6), Color(0xFFFFFFFF)],
            stops: [0.0, 1.0],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
            tileMode: TileMode.repeated),
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBar(
              toolbarHeight: 56,
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
            ),
            Expanded(child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                  Container(
                    width: double.infinity,
                    height: 250,
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/hoofzy/trending_community_image.png'),fit: BoxFit.fill)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0,left: 16),
                    child: Container(
                        height: 36,
                        width: 70,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: primaryColorSitter
                        ),
                        child: Align(alignment: Alignment.center,
                            child:TextButton
                              (
                              onPressed: (){
                              },
                              child: Text('2 min',style: textWhiteMedium15,),)
                        )
                    ),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 15),
                    child: Align(alignment: Alignment.topLeft,child: Text('Concerning body language',style: headlineBlack20,)),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 15,right: 16.0),
                    child: Align(alignment: Alignment.topLeft,child: Text('Learning about dog body language, whether you’re caring for them or cats, '
                        'helps you understand what they’re trying to say. Just like people! \nThis information'
                        ' from a certified dog trainer illustrates the most common signs that can lead to a scuffle or bite with another dog or cat.'
                        ' Read on to help keep pets safe.',style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black,height: 1.5),)),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 88.0,left: 58,right: 58),
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
                                Get.offNamed(Routes.quizExplanation);
                              },
                              child: Text('Get Started',style: textWhiteMedium15,),)
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





