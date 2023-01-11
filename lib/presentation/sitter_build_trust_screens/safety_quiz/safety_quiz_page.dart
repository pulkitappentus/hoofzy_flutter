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
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
            ),
            Expanded(child: SingleChildScrollView(
              child: Column(
                children: const [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 16),
                    child: Align(alignment: Alignment.topLeft,child: Text('Concerning body language',style: headlineBlack20,)),
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





