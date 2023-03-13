import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import '../../../infrastructure/core/base/base_view.dart';
import '../../infrastructure/navigation/routes.dart';
import '../sitter_profile_screens/controllers/sitterprofile.controller.dart';

class SitterProfilePage2 extends BaseView<SitterProfileController> {

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
              title: Text('Set up sitter profile',style: headlineBlack20,),
            ),
            Expanded(child: SingleChildScrollView(
              child: Column(
                children: [
                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 16),
                    child: Align(alignment: Alignment.topLeft,child: Text('Complete the required steps to get approved.',style: headlineBlack20,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 14.0),
                    child: Flexible(child: Row(
                      children: <Widget> [
                        Image.asset('assets/hoofzy/question.png',width: 20,height: 20,fit: BoxFit.fill,),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text('How does approval work?',style:TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: primaryColor) ,),
                        )
                      ],
                    )),
                  ),

                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 30),
                    child: Align(alignment: Alignment.topLeft,child: Text('Service setup',style: headlineBlack20,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 14.0),
                    child: Flexible(child: Row(
                      children: <Widget> [
                        Image.asset('assets/hoofzy/question.png',width: 20,height: 20,fit: BoxFit.fill,),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text('How do I add or modify my services?',style:TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: primaryColor) ,),
                        )
                      ],
                    )),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,right: 16,top: 20),
                    child: InkWell(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 80.sp,
                        decoration: BoxDecoration(
                          border: Border.all(color: primaryColor,width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            children: [
                              Image.asset('assets/hoofzy/them_bording.png',width: 40,height: 40,fit: BoxFit.fill,),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Expanded(child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text('Bording',style: textBlackMedium16,),
                                    Padding(
                                      padding: EdgeInsets.only(top: 8.0),
                                      child: Text('Set your services preferences',style: textBlackMedium13,),
                                    ),
                                  ],
                                )),
                              ),
                              Expanded(child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Text('3 min',style: textBlackMedium13,),
                                  Icon(Icons.arrow_forward_ios,color: primaryColor,size: 15,)
                                ],
                              ))

                            ],
                          ),
                        ),
                      ),
                      onTap: (){
                        Get.toNamed(Routes.boardingService);
                      },
                    ),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 30),
                    child: Align(alignment: Alignment.topLeft,child: Text('Build Trust',style: headlineBlack20,)),
                  ),

                  InkWell(
                    onTap: (){
                      Get.toNamed(Routes.createProfile);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0,bottom:15,right: 16),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Expanded(child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Create Your profile',style: textBlackMedium16,),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text('Make a great first impression',style: textBlackMedium13,),
                                ),
                              ],
                            )),
                          ),
                          Expanded(child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Text('10 min',style: textBlackMedium13,),
                              Icon(Icons.arrow_forward_ios,color: primaryColor,size: 15,)
                            ],
                          ))

                        ],
                      ),
                    ),
                  ),

                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,right: 16.0),
                    child: Divider(color: greyColor,thickness: 1,),
                  ),

                  InkWell(
                    onTap: (){
                      Get.toNamed(Routes.requestTestimonials);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0,bottom:15,right: 16),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Expanded(child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Request Testimonials',style: textBlackMedium16,),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text('Use references to build with new potential clients',style: textBlackMedium13,),
                                ),
                              ],
                            )),
                          ),
                          Expanded(child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Text('3 min',style: textBlackMedium13,),
                              Icon(Icons.arrow_forward_ios,color: primaryColor,size: 15,)
                            ],
                          ))

                        ],
                      ),
                    ),
                  ),

                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,right: 16.0),
                    child: Divider(color: greyColor,thickness: 1,),
                  ),

                  InkWell(
                    onTap: (){
                      Get.toNamed(Routes.safetyQuiz);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0,bottom:15,right: 16),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Expanded(child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Take the safety Quiz',style: textBlackMedium16,),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text('Safety tips to get you great reviews',style: textBlackMedium13,),
                                ),
                              ],
                            )),
                          ),
                          Expanded(child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Text('2 min',style: textBlackMedium13,),
                              Icon(Icons.arrow_forward_ios,color: primaryColor,size: 15,)
                            ],
                          ))

                        ],
                      ),
                    ),
                  ),

                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,right: 16.0),
                    child: Divider(color: greyColor,thickness: 1,),
                  ),

                  InkWell(
                    onTap: (){
                      Get.toNamed(Routes.finalDetails);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0,bottom:15,right: 16),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Expanded(child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Final Details',style: textBlackMedium16,),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text('Background check and review fee',style: textBlackMedium13,),
                                ),
                              ],
                            )),
                          ),
                          Expanded(child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Text('1 min',style: textBlackMedium13,),
                              Icon(Icons.arrow_forward_ios,color: primaryColor,size: 15,)
                            ],
                          ))

                        ],
                      ),
                    ),
                  ),

                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,right: 16.0),
                    child: Divider(color: greyColor,thickness: 1,),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Container(
                        height: 56,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: greyColor
                        ),
                        child: Align(alignment: Alignment.center,
                            child:TextButton
                              (
                              onPressed: (){
                              },
                              child: Text('Submit',style: textWhiteMedium15,),)
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





