import 'package:Hoofzy_V2/constants.dart';
import 'package:Hoofzy_V2/presentation/home/controllers/home.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../infrastructure/base/base_view.dart';
import '../../../../infrastructure/navigation/routes.dart';

class ServicesIntroPage extends BaseView<HomeController> {

  @override
  Widget body(BuildContext context) {

    return Container(
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
              title: Text('Boarding', style: headlineBlack20,),
            ),
            Expanded(child: SingleChildScrollView(
              child: Column(
                children: <Widget> [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 14.0),
                    child: Row(children: <Widget> [
                      Image.asset('assets/hoofzy/them_bording.png',width: 30,height: 30,fit: BoxFit.fill,color: primaryColor,),
                      const Padding(
                        padding: const EdgeInsets.only(left: 10.0,top: 4.0),
                        child: Align(alignment: Alignment.topLeft,child: Text('Boarding',style: textBlackMedium16,)),
                      ),

                    ],),
                  ),

                  const Padding(
                    padding: EdgeInsets.only(left:16,top: 15.0,right: 16),
                    child: Align(alignment:Alignment.topLeft,child: Text('Your pets stay overnight in your sitter’s home. They’ll be treated like part of the family in a comfortable environment.',style: textBlackMedium14,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 30.0),
                    child: Row(children: <Widget> [
                      Image.asset('assets/hoofzy/house_sitting.png',width: 30,height: 30,fit: BoxFit.fill,color: primaryColor,),
                      const Padding(
                        padding: const EdgeInsets.only(left: 10.0,top: 4.0),
                        child: Align(alignment: Alignment.topLeft,child: Text('House Sitting',style: textBlackMedium16,)),
                      ),

                    ],),
                  ),

                  const Padding(
                    padding: EdgeInsets.only(left:16,top: 10.0,right: 16),
                    child: Align(alignment:Alignment.topLeft,child: Text('Your sitter takes care of your pets and your home. Your pets will get all the attention they need without leaving home.',style: textBlackMedium14,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 30.0),
                    child: Row(children: <Widget> [
                      Image.asset('assets/hoofzy/drop_visit.png',width: 30,height: 30,fit: BoxFit.fill,color: primaryColor,),
                      const Padding(
                        padding: const EdgeInsets.only(left: 10.0,top: 4.0),
                        child: Align(alignment: Alignment.topLeft,child: Text('Drop-In Visit',style: textBlackMedium16,)),
                      ),

                    ],),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:16,top: 10.0,right: 16),
                    child: Align(alignment:Alignment.topLeft,child: Text('A quick and essential step that all providers pass to be part of Rover and build trust with clients. '
                        'We will charge your card after completing this step. ',style: textBlackMedium14,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 30.0),
                    child: Row(children: <Widget> [
                      Image.asset('assets/hoofzy/doggy_care.png',width: 30,height: 30,fit: BoxFit.fill,color: primaryColor,),
                      const Padding(
                        padding: const EdgeInsets.only(left: 10.0,top: 4.0),
                        child: Align(alignment: Alignment.topLeft,child: Text('Doggy Day Care',style: textBlackMedium16,)),
                      ),

                    ],),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:16,top: 10.0,right: 16),
                    child: Align(alignment:Alignment.topLeft,child: Text('With these two steps completed you`re ready '
                        'to submit your profile! We`ll review it within 5 business days.',style: textBlackMedium14,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 30.0),
                    child: Row(children: <Widget> [
                      Image.asset('assets/hoofzy/dog_walking.png',width: 30,height: 30,fit: BoxFit.fill,color: primaryColor,),
                      const Padding(
                        padding: const EdgeInsets.only(left: 10.0,top: 4.0),
                        child: Align(alignment: Alignment.topLeft,child: Text('Dog Walking',style: textBlackMedium16,)),
                      ),

                    ],),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:16,top: 10.0,right: 16),
                    child: Align(alignment:Alignment.topLeft,child: Text('Your dog gets a walk around your neighborhood. Perfect for busy days and dogs with '
                        'extra energy to burn.',style: textBlackMedium14,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0,right: 32.0,top: 50,bottom: 50),
                    child: Container(
                        height: 56,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color:  primaryColor
                        ),
                        child: Align(alignment: Alignment.center,
                            child:TextButton
                              (
                              onPressed: (){
                                _trustInfoBottomSheet(context);
                              },
                              child: Text('Book a Sitter Now',style: textWhiteMedium15,),)
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

void _trustInfoBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 6,
                decoration: const BoxDecoration(
                    color: lightThemeColor,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30))

                ),

              ),
              Padding(
                padding: const EdgeInsets.only(left:20,top: 20.0,right: 16),
                child: Align(alignment:Alignment.topLeft,
                    child: Image.asset('assets/hoofzy/boarding_heart.png',width: 58,height: 65,fit: BoxFit.fill,)),
              ),
              const Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 16.0, bottom: 20),
                child: Align(alignment: Alignment.topLeft,
                    child: Text(
                      'Book with pet sitters you can trust', style: headlineBlack20,)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Row(
                  children: [
                    Image.asset('assets/hoofzy/checked.png',width: 24,height: 24,fit: BoxFit.fill,),
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text('All sitters pass a background check.', style: textBlackLight15,),
                    )
                  ],

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0,top: 20),
                child: Row(
                  children: [
                    Image.asset('assets/hoofzy/checked.png',width: 24,height: 24,fit: BoxFit.fill,),
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text('All sitters provide a detailed profile and \npersonal information.', style: textBlackLight15,),
                    )
                  ],

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0,top: 20),
                child: Row(
                  children: [
                    Image.asset('assets/hoofzy/checked.png',width: 24,height: 24,fit: BoxFit.fill,),
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text('All sitters are approved by our team of sitter \nspecialists.', style: textBlackLight15,),
                    )
                  ],

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                      height: 56,
                      width: 260,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: primaryColor
                      ),
                      child: Align(alignment: Alignment.center,
                          child: TextButton
                            (
                            onPressed: () {
                              Get.toNamed(Routes.serviceBookingPage1);
                            },
                            child: Text('Book a Sitter Now', style: textWhiteMedium15,),)
                      )
                  ),
                ),
              ),
            ],
          ),
        );
      }
  );
}






