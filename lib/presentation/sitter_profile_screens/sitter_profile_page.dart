import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import '../../../infrastructure/base/base_view.dart';
import '../../infrastructure/navigation/routes.dart';
import 'controllers/sitterprofile.controller.dart';

class SitterProfilePage extends BaseView<SitterProfileController> {

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
                    child: Align(alignment: Alignment.topLeft,child: Text('Service selection',style: headlineBlack20,)),
                  ),

                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 16,right: 16),
                    child: Text('• Select at least one service you’re interested in. You can always add more later. '
                        '\n• If you select more than one service, you will only see one of them during the sign up process. '
                        '\n•After your profile is submitted for review, you can edit your selected services or add more.',style:
                    TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.black,height: 1.8)),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 14.0),
                    child: Flexible(child: Row(
                      children: <Widget> [
                        Image.asset('assets/hoofzy/question.png',width: 20,height: 20,fit: BoxFit.fill,),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text('Which service should I choose?',style:TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: primaryColor) ,),
                        )
                      ],
                    )),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 14.0,right: 16.0),
                    child: Flexible(child: Row(
                      children: <Widget> [
                        Container(
                          height: 160.sp,
                          width: MediaQuery.of(context).size.width/2.3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(16)),
                              border: Border.all(width: 1.5,color: greyColor)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0,bottom: 24),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset('assets/hoofzy/grey_bording.png',height: 40,width: 40,fit: BoxFit.fill,),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Flexible(child: Container(
                                        width: MediaQuery.of(context).size.width/4,
                                        height: 40,
                                        decoration: const BoxDecoration(
                                            color: primaryColor,
                                            borderRadius: BorderRadius.only(topRight: Radius.circular(14),bottomLeft: Radius.circular(20))
                                        ),
                                        child: Align(alignment:Alignment.center,child: Text('HIGHEST \nEARNINGS',style: textWhiteLight12,)),
                                      )),
                                    )
                                  ],
                                )),

                                const Padding(
                                  padding: const EdgeInsets.only(top: 15.0),
                                  child: Text('Bording',style: textBlackBold18_500,),
                                ),
                                const Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Text('Overnight pet care in \nyour home',style: textBlackMedium13,),
                                ),
                                const Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Text('Avg. ₹399/night',style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: primaryColor,)),
                                ),

                              ],
                            ),
                          ),

                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Container(
                            height: 160.sp,
                            width: MediaQuery.of(context).size.width/2.3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(16)),
                                border: Border.all(width: 1.5,color: greyColor)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset('assets/hoofzy/grey_house_sitting.png',height: 40,width: 40,fit: BoxFit.fill,),
                                  const Padding(
                                    padding: const EdgeInsets.only(top: 15.0),
                                    child: Text('House Sitting',style: textBlackBold18_500,),
                                  ),
                                  const Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: Text('Overnight pet care \nin your client`s home',style: textBlackMedium13,),
                                  ),
                                  const Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: Text('Avg. ₹399/night',style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: primaryColor,)),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 14.0,right: 16.0),
                    child: Flexible(child: Row(
                      children: <Widget> [
                        Container(
                          height: 160.sp,
                          width: MediaQuery.of(context).size.width/2.3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(16)),
                              border: Border.all(width: 1.5,color: greyColor)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/hoofzy/grey_dropin.png',height: 40,width: 40,fit: BoxFit.fill,),
                                const Padding(
                                  padding: const EdgeInsets.only(top: 15.0),
                                  child: Text('Drop-In Visit',style: textBlackBold18_500,),
                                ),
                                const Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Text('Potty breaks and play \ndates',style: textBlackMedium13,),
                                ),
                                const Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Text('Avg. ₹399/night',style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: primaryColor,)),
                                ),

                              ],
                            ),
                          ),

                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Container(
                            height: 160.sp,
                            width: MediaQuery.of(context).size.width/2.3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(16)),
                                border: Border.all(width: 1.5,color: greyColor)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset('assets/hoofzy/grey_doggy.png',height: 40,width: 40,fit: BoxFit.fill,),
                                  const Padding(
                                    padding: const EdgeInsets.only(top: 15.0),
                                    child: Text('Doggy Day Care',style: textBlackBold18_500,),
                                  ),
                                  const Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: Text('Daytime pet care in \nyour home',style: textBlackMedium13,),
                                  ),
                                  const Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: Text('Avg. ₹399/night',style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: primaryColor,)),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 14.0,right: 16.0),
                    child: Flexible(child: Row(
                      children: <Widget> [
                        Container(
                          height: 160.sp,
                          width: MediaQuery.of(context).size.width/2.3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(16)),
                              border: Border.all(width: 1.5,color: greyColor)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/hoofzy/grey_dogwalking.png',height: 40,width: 40,fit: BoxFit.fill,),
                                const Padding(
                                  padding: const EdgeInsets.only(top: 15.0),
                                  child: Text('Dog Walking',style: textBlackBold18_500,),
                                ),
                                const Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Text('Dog walks that fit \nyour schedule',style: textBlackMedium13,),
                                ),
                                const Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Text('Avg. ₹199/night',style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: primaryColor,)),
                                ),

                              ],
                            ),
                          ),

                        ),
                      ],
                    )),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(16.0),
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
                                Get.toNamed(Routes.sitterProfile2);
                              },
                              child: Text('Save & Next',style: textWhiteMedium15,),)
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





