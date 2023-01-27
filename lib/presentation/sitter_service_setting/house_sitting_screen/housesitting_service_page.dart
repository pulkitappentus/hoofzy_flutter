import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../infrastructure/base/base_view.dart';
import '../../../infrastructure/navigation/routes.dart';
import '../boarding_screen/controllers/boarding.service.controller.dart';

class HousesittingServicePage extends BaseView<BoardingServiceController> {

  @override
  Widget body(BuildContext context) {
    //house_sitting_screen

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
                children: <Widget> [
                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 12),
                    child: Align(alignment: Alignment.topLeft,child: Text('House Sitting',style: headlineBlack20,)),
                  ),

                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 15,right: 16),
                    child: Align(alignment: Alignment.topLeft,
                      child: Text('Overnight pet care in your client`s home',style:
                      TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.black,height: 1.8)),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      width: double.infinity,
                      height: 80,
                      decoration: const BoxDecoration(
                        color: primaryThemeColor,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: const Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(alignment:Alignment.center,child: Text('We have suggested some default settings based on what works well for new sitters and walkers. '
                            'You can edit now, or at any time in the future.',style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400,height: 1.5, color: Colors.black),)),
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
                              //Image.asset('assets/hoofzy/checked.png',height: 24,width: 24,fit: BoxFit.fill,),
                              Icon(Icons.arrow_forward_ios,color: Colors.black,size: 20,)
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
                              //Image.asset('assets/hoofzy/checked.png',height: 24,width: 24,fit: BoxFit.fill,),
                              Icon(Icons.arrow_forward_ios,color: Colors.black,size: 20,)
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
                              //Image.asset('assets/hoofzy/checked.png',height: 24,width: 24,fit: BoxFit.fill,),
                              Icon(Icons.arrow_forward_ios,color: Colors.black,size: 20,)
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
                      Get.toNamed(Routes.serviceArea);
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
                                Text('Service Area',style: textBlackMedium16,),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text('Select your service area',style: textBlackMedium13,),
                                ),
                              ],
                            )),
                          ),
                          Expanded(child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              //Image.asset('assets/hoofzy/checked.png',height: 24,width: 24,fit: BoxFit.fill,),
                              Icon(Icons.arrow_forward_ios,color: Colors.black,size: 20,)
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
                    padding: const EdgeInsets.only(top: 58.0,left: 58.0,right: 58.0),
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





