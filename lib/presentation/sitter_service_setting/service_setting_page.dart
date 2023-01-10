import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../infrastructure/base/base_view.dart';
import '../../infrastructure/navigation/routes.dart';
import 'controllers/servicesetting.controller.dart';

class ServiceSettingPage extends BaseView<ServiceSettingController> {

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
                children: <Widget> [
                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 16),
                    child: Align(alignment: Alignment.topLeft,child: Text('Boarding Settings',style: headlineBlack20,)),
                  ),

                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 15,right: 16),
                    child: Align(alignment: Alignment.topLeft,
                      child: Text('Overnight pet care in your home',style:
                      TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.black,height: 1.8)),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      width: double.infinity,
                      height: 80,
                      decoration: const BoxDecoration(
                        color: primaryPinkColor,
                        borderRadius: BorderRadius.all(Radius.circular(16))
                      ),
                      child: const Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(alignment:Alignment.center,child: Text('We have suggested some default settings based on what works well for new sitters and walkers. '
                            'You can edit now, or at any time in the future.',style: textBlackLight12,)),
                      ),
                    ),
                  ),

                  InkWell(
                    onTap: (){
                      Get.toNamed(Routes.rates);
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
                                Text('Rates',style: textBlackMedium16,),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text('Rates for your service can be managed',style: textBlackMedium13,),
                                ),
                              ],
                            )),
                          ),
                          Expanded(child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(Icons.arrow_forward_ios,color: primaryColor,size: 20,)
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
                      Get.toNamed(Routes.availability);
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
                                Text('Availability',style: textBlackMedium16,),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text('Organize your availability',style: textBlackMedium13,),
                                ),
                              ],
                            )),
                          ),
                          Expanded(child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(Icons.arrow_forward_ios,color: primaryColor,size: 20,)
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
                      Get.toNamed(Routes.petPreferences);
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
                                Text('Pet preferences',style: textBlackMedium16,),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text('Choose your pet preferences',style: textBlackMedium13,),
                                ),
                              ],
                            )),
                          ),
                          Expanded(child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(Icons.arrow_forward_ios,color: primaryColor,size: 20,)
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
                      Get.toNamed(Routes.aboutHome);
                    },
                    child:   Padding(
                      padding: const EdgeInsets.only(top: 15.0,bottom:15,right: 16),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Expanded(child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('About your home',style: textBlackMedium16,),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text('Details your home',style: textBlackMedium13,),
                                ),
                              ],
                            )),
                          ),
                          Expanded(child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(Icons.arrow_forward_ios,color: primaryColor,size: 20,)
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
                  InkWell(onTap: (){
                    Get.toNamed(Routes.cancellationPolicy);
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
                                Text('Cancellation Policy',style: textBlackMedium16,),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text('Setup your cancellation policy',style: textBlackMedium13,),
                                ),
                              ],
                            )),
                          ),
                          Expanded(child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(Icons.arrow_forward_ios,color: primaryColor,size: 20,)
                            ],
                          ))

                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,right: 16.0,bottom: 24),
                    child: Divider(color: greyColor,thickness: 1,),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(38.0),
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
                              child: Text('Save',style: textWhiteMedium15,),)
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





