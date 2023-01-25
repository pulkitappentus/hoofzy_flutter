import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import '../../../../../../../infrastructure/base/base_view.dart';
import '../controllers/safety.quiz.controller.dart';
class BodyLanguage4Page extends BaseView<SafetyQuizController> {

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
                    padding: const EdgeInsets.only(left: 16.0,top: 20),
                    child: Align(alignment: Alignment.topLeft,child: Text('Concerning body language',style: headlineBlack20,)),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 15),
                    child: Align(alignment: Alignment.topLeft,child: Text('Here`s what to look for',style: textBlackMedium14,)),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 20),
                    child: Align(alignment: Alignment.topLeft,child: Text('Avoiding scuffles and bites',style: textBlackMedium16,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 20),
                    child: Align(alignment: Alignment.topLeft,child: Image.asset('assets/hoofzy/dog_quiz.png',width: 52,height: 60,fit: BoxFit.fill,),),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 10),
                    child: Align(alignment: Alignment.topLeft,child: Text('Dog',style: textBlackMedium16,)),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 15,right: 16.0),
                    child: Align(alignment: Alignment.topLeft,child: Text('If a dog displays concerning body language, '
                        'avoid or remove them from the situation causing this behavior.'
                        ' If you need to interrupt a dog scuffle, make a loud noise or put a barrier between the dogs.',style: textBlackMedium14,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 20),
                    child: Align(alignment: Alignment.topLeft,child: Image.asset('assets/hoofzy/cat_quiz.png',width: 52,height: 60,fit: BoxFit.fill,),),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 10),
                    child: Align(alignment: Alignment.topLeft,child: Text('Cat',style: textBlackMedium16,)),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 15,right: 16.0),
                    child: Align(alignment: Alignment.topLeft,child: Text('If you encounter a cat who is crouching or arching its back, '
                        'especially with fur standing up, give them space.'
                        ' Don`t crowd a nervous cat, pick them up, or force the cat to move or interact.',style: textBlackMedium14,)),
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





