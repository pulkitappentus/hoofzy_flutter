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
      padding: const EdgeInsets.all(40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children:  [
          //Text('Swipe left to continue',style: textBlackLight15),
          Container(
            height: 56,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(20),
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

/*Widget circleBar(bool isActive) {
  return AnimatedContainer(
    duration: Duration(milliseconds: 150),
    margin: EdgeInsets.symmetric(horizontal: 8),
    height: isActive ? 12 : 8,
    width: isActive ? 12 : 8,
    decoration: BoxDecoration(
        color: isActive ? Colors.blue[700] : Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(12))),
  );
}*/

/*Align(
alignment: Alignment.bottomCenter,
child: Container(
margin: EdgeInsets.only(bottom: 15),
child: Row(
mainAxisSize: MainAxisSize.min,
mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
for (int i = 0; i < 2; i++)
(i == currentPage ? circleBar(true) : circleBar(false))
],
),
),
),*/

/*return PageView(
children: controller.list,
scrollDirection: Axis.horizontal,
pageSnapping: true,
physics: BouncingScrollPhysics(),
controller: controller.controller,
onPageChanged: (num) {
print("Current page number is " + num.toString());
controller.curr = num;
},
);*/

