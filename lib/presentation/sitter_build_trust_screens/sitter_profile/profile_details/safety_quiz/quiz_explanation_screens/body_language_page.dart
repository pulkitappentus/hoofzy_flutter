import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import '../../../../../../../infrastructure/base/base_view.dart';
import '../controllers/safety.quiz.controller.dart';

class BodyLanguagePage extends BaseView<SafetyQuizController> {

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

            Expanded(child: SingleChildScrollView(
              child: Column(
                children: <Widget> [
                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 16),
                    child: Align(alignment: Alignment.topLeft,child: Text('Concerning body language',style: headlineBlack20,)),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 15),
                    child: Align(alignment: Alignment.topLeft,child: Text('Here`s what to look for',style: textBlackMedium14,)),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 20),
                    child: Align(alignment: Alignment.topLeft,child: Text('Stress',style: textBlackMedium16,)),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 15,right: 16),
                    child: Align(alignment: Alignment.topLeft,child: Text('Yawning, nose-licking, and shaking it off are all signs of stress.',style: textBlackMedium14,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 20),
                    child: Container(
                        width: double.infinity,
                        height: 180,
                        decoration: const BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/hoofzy/trending_community_image.png',),fit: BoxFit.fill)
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  width: 130,
                                  height: 40,
                                  decoration: const BoxDecoration(
                                      color: Colors.white60,
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(30),bottomRight: Radius.circular(30))
                                  ),
                                  child: const Align(alignment:Alignment.center,child: Text('Nose-licking',style: textBlackLight15,)),
                                ),
                              ),
                            )
                          ],
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 10),
                    child: Container(
                        width: double.infinity,
                        height: 180,
                        decoration: const BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/hoofzy/trending_community_image.png',),fit: BoxFit.fill)
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  width: 130,
                                  height: 40,
                                  decoration: const BoxDecoration(
                                      color: Colors.white60,
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(30),bottomRight: Radius.circular(30))
                                  ),
                                  child: const Align(alignment:Alignment.center,child: Text('Yawning',style: textBlackLight15,)),
                                ),
                              ),
                            )
                          ],
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 10),
                    child: Container(
                        width: double.infinity,
                        height: 180,
                        decoration: const BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/hoofzy/trending_community_image.png',),fit: BoxFit.fill)
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  width: 130,
                                  height: 40,
                                  decoration: const BoxDecoration(
                                      color: Colors.white60,
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(30),bottomRight: Radius.circular(30))
                                  ),
                                  child: const Align(alignment:Alignment.center,child: Text('Shaking it off',style: textBlackLight15,)),
                                ),
                              ),
                            )
                          ],
                        )
                    ),
                  ),

                  /*Padding(
                    padding: const EdgeInsets.only(top: 50.0,left: 58,right: 58),
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
                              },
                              child: Text('Next',style: textWhiteMedium15,),)
                        )
                    ),
                  ),*/

                ],
              ),
            ))
          ],
        ),
      ),
    );
  }

}





