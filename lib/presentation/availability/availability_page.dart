import 'package:Hoofzy_V2/constants.dart';
import 'package:Hoofzy_V2/presentation/availability/controllers/availability.controller.dart';
import 'package:Hoofzy_V2/presentation/rates/controllers/rate.controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import '../../../infrastructure/base/base_view.dart';
import '../../infrastructure/navigation/routes.dart';

class AvailabilityPage extends BaseView<AvailabilityController> {

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
            ),
            Expanded(child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  
                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Align(alignment: Alignment.topLeft,
                        child: Text('Availability', style: headlineBlack20,)),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 14.0),
                    child: Flexible(child: Row(
                      children: <Widget>[
                        Image.asset('assets/hoofzy/question.png', width: 20,
                          height: 20,
                          fit: BoxFit.fill,color: primaryColorSitter,),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text('Why is availability important?', style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: primaryColorSitter),),
                        )
                      ],
                    )),
                  ),

                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 15, right: 16),
                    child: Align(alignment: Alignment.topLeft,
                      child: Text(
                          'Are you home full-time during the week?', style:
                      TextStyle(fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          height: 1.8)),
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Container(
                          height: 40.sp,
                          width: 100.sp,
                          decoration: BoxDecoration(
                            border: Border.all(color: greyLightColor,width: 1.5),
                            borderRadius: BorderRadius.all(Radius.circular(30))
                          ),
                          child: Align(alignment:Alignment.center,child: Text('Yes',style: textBlackLight15,)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Container(
                            height: 40.sp,
                            width: 100.sp,
                            decoration: BoxDecoration(
                              border: Border.all(color: greyLightColor,width: 1.5),
                              borderRadius: BorderRadius.all(Radius.circular(30))
                            ),
                            child: Align(alignment:Alignment.center,child: Text('No',style: textBlackLight15,)),
                          ),
                        )
                      ],

                    ),
                  ),

                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 15, right: 16),
                    child: Align(alignment: Alignment.topLeft,
                      child: Text('What days of the week will you typically be available for Boarding?', style:
                      TextStyle(fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          height: 1.8)),
                    ),
                  ),

                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 5, right: 16),
                    child: Align(alignment: Alignment.topLeft,
                      child: Text('This will update your generic availability. You can edit any date individually by going to your calendar.', style:
                      TextStyle(fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          height: 1.8)),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 40.sp,
                          width: 65.sp,
                          decoration: BoxDecoration(
                              border: Border.all(color: greyLightColor,width: 1.5),
                              borderRadius: BorderRadius.all(Radius.circular(30))
                          ),
                          child: Align(alignment:Alignment.center,child: Text('Sun',style: textBlackLight15,)),
                        ),
                        Container(
                          height: 40.sp,
                          width: 65.sp,
                          decoration: BoxDecoration(
                              border: Border.all(color: greyLightColor,width: 1.5),
                              borderRadius: BorderRadius.all(Radius.circular(30))
                          ),
                          child: Align(alignment:Alignment.center,child: Text('Mon',style: textBlackLight15,)),
                        ),
                        Container(
                          height: 40.sp,
                          width: 65.sp,
                          decoration: BoxDecoration(
                              border: Border.all(color: greyLightColor,width: 1.5),
                              borderRadius: BorderRadius.all(Radius.circular(30))
                          ),
                          child: Align(alignment:Alignment.center,child: Text('Tue',style: textBlackLight15,)),
                        ),
                        Container(
                          height: 40.sp,
                          width: 65.sp,
                          decoration: BoxDecoration(
                              border: Border.all(color: greyLightColor,width: 1.5),
                              borderRadius: BorderRadius.all(Radius.circular(30))
                          ),
                          child: Align(alignment:Alignment.center,child: Text('Wed',style: textBlackLight15,)),
                        ),
                      ],

                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Container(
                            height: 40.sp,
                            width: 65.sp,
                            decoration: BoxDecoration(
                                border: Border.all(color: greyLightColor,width: 1.5),
                                borderRadius: BorderRadius.all(Radius.circular(30))
                            ),
                            child: Align(alignment:Alignment.center,child: Text('Thu',style: textBlackLight15,)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Container(
                            height: 40.sp,
                            width: 65.sp,
                            decoration: BoxDecoration(
                                border: Border.all(color: greyLightColor,width: 1.5),
                                borderRadius: BorderRadius.all(Radius.circular(30))
                            ),
                            child: Align(alignment:Alignment.center,child: Text('Fri',style: textBlackLight15,)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Container(
                            height: 40.sp,
                            width: 65.sp,
                            decoration: BoxDecoration(
                                border: Border.all(color: greyLightColor,width: 1.5),
                                borderRadius: BorderRadius.all(Radius.circular(30))
                            ),
                            child: Align(alignment:Alignment.center,child: Text('Sat',style: textBlackLight15,)),
                          ),
                        )
                      ],
                    ),
                  ),

                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 30, right: 16),
                    child: Align(alignment: Alignment.topLeft,
                      child: Text('How frequently can you provide potty breaks?', style:
                      TextStyle(fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          height: 1.8)),
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/hoofzy/un_checked.png',height: 24,width: 24,),
                            const Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text('0-2 hours',style: textBlackLight15,),
                            )
                          ],

                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Row(
                            children: [
                              Image.asset('assets/hoofzy/un_checked.png',height: 24,width: 24,),
                              const Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text('2-4 hours',style: textBlackLight15,),
                              )
                            ],

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Row(
                            children: [
                              Image.asset('assets/hoofzy/un_checked.png',height: 24,width: 24,),
                              const Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text('4-8 hours',style: textBlackLight15,),
                              )
                            ],

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Row(
                            children: [
                              Image.asset('assets/hoofzy/un_checked.png',height: 24,width: 24,),
                              const Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text('8+ hours',style: textBlackLight15,),
                              )
                            ],

                          ),
                        ),
                      ],

                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 22.0),
                    child: Flexible(child: Row(
                      children: <Widget> [
                        Image.asset('assets/hoofzy/question.png',width: 20,height: 20,fit: BoxFit.fill,color: primaryColorSitter,),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text('How will advance notice be used?',style:TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: primaryColorSitter) ,),
                        )
                      ],
                    )),
                  ),

                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 23, right: 16),
                    child: Align(alignment: Alignment.topLeft,
                      child: Text('How far in advance do you need new clients to reach out to you before a booking?', style:
                      TextStyle(fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          height: 1.8)),
                    ),
                  ),

                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 5, right: 16),
                    child: Align(alignment: Alignment.topLeft,
                      child: Text('Select the time you need', style:
                      TextStyle(fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          height: 1.8)),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 20,bottom: 14),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/hoofzy/un_checked.png',height: 24,width: 24,),
                            const Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text('0 Days (I accept same day bookings)',style: textBlackLight15,),
                            )
                          ],

                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Row(
                            children: [
                              Image.asset('assets/hoofzy/un_checked.png',height: 24,width: 24,),
                              const Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text('1 Day',style: textBlackLight15,),
                              )
                            ],

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Row(
                            children: [
                              Image.asset('assets/hoofzy/un_checked.png',height: 24,width: 24,),
                              const Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text('2 Days',style: textBlackLight15,),
                              )
                            ],

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Row(
                            children: [
                              Image.asset('assets/hoofzy/un_checked.png',height: 24,width: 24,),
                              const Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text('3 Days',style: textBlackLight15,),
                              )
                            ],

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Row(
                            children: [
                              Image.asset('assets/hoofzy/un_checked.png',height: 24,width: 24,),
                              const Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text('1 Week',style: textBlackLight15,),
                              )
                            ],

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Row(
                            children: [
                              Image.asset('assets/hoofzy/un_checked.png',height: 24,width: 24,),
                              const Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text('2 Weeks',style: textBlackLight15,),
                              )
                            ],

                          ),
                        ),
                      ],

                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(58.0),
                    child: Container(
                        height: 60,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: greyLightColor
                        ),
                        child: Align(alignment: Alignment.center,
                            child:TextButton
                              (
                              onPressed: (){
                              },
                              child: Text('Save & Continue',style: textWhiteMedium15,),)
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





