import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../infrastructure/base/base_view.dart';
import 'controllers/safety.quiz.controller.dart';

class SafetyQuizPage extends BaseView<SafetyQuizController> {

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
                        width: double.infinity,
                        height: 180,
                        decoration: const BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/hoofzy/trending_community_image.png',),fit: BoxFit.fill)
                        ),
                    ),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 16),
                    child: Align(alignment: Alignment.topLeft,child: Text('Question 1 of 4',style: textBlackMedium14,)),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 20,right: 16.0),
                    child: Align(alignment: Alignment.topLeft,child: Text('What are all the ways a dog shows they are stressed with their body language?',style: textBlackMedium16,)),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,top:15),
                    child: Align(alignment: Alignment.topLeft,child: Text('(select all that apply)',style: textBlackMedium14,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 30,bottom: 14),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/hoofzy/unchecked.png',height: 32,width: 32,),
                            const Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text('Yawning',style: textBlackLight15,),
                            )
                          ],

                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Row(
                            children: [
                              Image.asset('assets/hoofzy/unchecked.png',height: 32,width: 32,),
                              const Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text('Nose licking',style: textBlackLight15,),
                              )
                            ],

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Row(
                            children: [
                              Image.asset('assets/hoofzy/unchecked.png',height: 32,width: 32,),
                              const Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text('Shaking it off',style: textBlackLight15,),
                              )
                            ],

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Row(
                            children: [
                              Image.asset('assets/hoofzy/unchecked.png',height: 32,width: 32,),
                              const Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text('Wagging tail ',style: textBlackLight15,),
                              )
                            ],

                          ),
                        ),
                      ],

                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 50.0,left: 38,right: 38),
                    child: Container(
                        height: 56,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: primaryColor
                        ),
                        child: Align(alignment: Alignment.center,
                            child:TextButton
                              (
                              onPressed: (){
                              },
                              child: Text('Next',style: textWhiteMedium15,),)
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





