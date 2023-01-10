import 'package:Hoofzy_V2/constants.dart';
import 'package:Hoofzy_V2/presentation/availability/controllers/availability.controller.dart';
import 'package:Hoofzy_V2/presentation/rates/controllers/rate.controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import '../../../infrastructure/base/base_view.dart';
import '../../infrastructure/navigation/routes.dart';
import 'controllers/abouthome.controllers.dart';

class AboutHomePage extends BaseView<AboutHomeController> {

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
                children: <Widget>[

                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Align(alignment: Alignment.topLeft,
                        child: Text('About your home', style: headlineBlack20,)),
                  ),

                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 20, right: 16),
                    child: Align(alignment: Alignment.topLeft,
                      child: Text('What type of home do you live in?', style:
                      TextStyle(fontSize: 14,
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
                              child: Text('House',style: textBlackLight15,),
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
                                child: Text('Apartment',style: textBlackLight15,),
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
                                child: Text('Farm',style: textBlackLight15,),
                              )
                            ],

                          ),
                        ),
                      ],

                    ),
                  ),

                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 30, right: 16),
                    child: Align(alignment: Alignment.topLeft,
                      child: Text('What type of yard do you have?', style:
                      TextStyle(fontSize: 14,
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
                              child: Text('Fenced yard',style: textBlackLight15,),
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
                                child: Text('Unfenced yard',style: textBlackLight15,),
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
                                child: Text('No yard',style: textBlackLight15,),
                              )
                            ],

                          ),
                        ),
                      ],

                    ),
                  ),

                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 23, right: 16),
                    child: Align(alignment: Alignment.topLeft,
                      child: Text('What can pet owners expect when boarding at your home?', style:
                      TextStyle(fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          height: 1.8)),
                    ),
                  ),

                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 5, right: 16),
                    child: Align(alignment: Alignment.topLeft,
                      child: Text('(Check all that apply)', style:
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
                            Image.asset('assets/hoofzy/unchecked.png',height: 24,width: 24,),
                            const Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text('Smoking inside home',style: textBlackLight15,),
                            )
                          ],

                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Row(
                            children: [
                              Image.asset('assets/hoofzy/unchecked.png',height: 24,width: 24,),
                              const Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text('Children age 0-5',style: textBlackLight15,),
                              )
                            ],

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Row(
                            children: [
                              Image.asset('assets/hoofzy/unchecked.png',height: 24,width: 24,),
                              const Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text('Children age 6-12',style: textBlackLight15,),
                              )
                            ],

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Row(
                            children: [
                              Image.asset('assets/hoofzy/unchecked.png',height: 24,width: 24,),
                              const Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text('Dogs are allowed on furniture',style: textBlackLight15,),
                              )
                            ],

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Row(
                            children: [
                              Image.asset('assets/hoofzy/unchecked.png',height: 24,width: 24,),
                              const Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text('Dogs are allowed on bed',style: textBlackLight15,),
                              )
                            ],

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Row(
                            children: [
                              Image.asset('assets/hoofzy/unchecked.png',height: 24,width: 24,),
                              const Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text('Cats at home',style: textBlackLight15,),
                              )
                            ],

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Row(
                            children: [
                              Image.asset('assets/hoofzy/unchecked.png',height: 24,width: 24,),
                              const Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text('Caged pets in home',style: textBlackLight15,),
                              )
                            ],

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Row(
                            children: [
                              Image.asset('assets/hoofzy/unchecked.png',height: 24,width: 24,),
                              const Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text('None of the above',style: textBlackLight15,),
                              )
                            ],

                          ),
                        ),
                      ],

                    ),
                  ),

                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 23, right: 16),
                    child: Align(alignment: Alignment.topLeft,
                      child: Text('Are you able to host any of the following?', style:
                      TextStyle(fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          height: 1.8)),
                    ),
                  ),

                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 5, right: 16),
                    child: Align(alignment: Alignment.topLeft,
                      child: Text('(Check all that apply)', style:
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
                            Image.asset('assets/hoofzy/unchecked.png',height: 24,width: 24,),
                            const Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text('Pets from different families at the same time',style: textBlackLight15,),
                            )
                          ],

                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Row(
                            children: [
                              Image.asset('assets/hoofzy/unchecked.png',height: 24,width: 24,),
                              const Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text('Puppies under 1 year old',style: textBlackLight15,),
                              )
                            ],

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Row(
                            children: [
                              Image.asset('assets/hoofzy/unchecked.png',height: 24,width: 24,),
                              const Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text('Dogs that are not create trained',style: textBlackLight15,),
                              )
                            ],

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Row(
                            children: [
                              Image.asset('assets/hoofzy/unchecked.png',height: 24,width: 24,),
                              const Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text('Unneutered male dogs',style: textBlackLight15,),
                              )
                            ],

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Row(
                            children: [
                              Image.asset('assets/hoofzy/unchecked.png',height: 24,width: 24,),
                              const Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text('Female dogs in heat',style: textBlackLight15,),
                              )
                            ],

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Row(
                            children: [
                              Image.asset('assets/hoofzy/unchecked.png',height: 24,width: 24,),
                              const Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text('None of the above',style: textBlackLight15,),
                              )
                            ],

                          ),
                        ),
                      ],

                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(38.0),
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





