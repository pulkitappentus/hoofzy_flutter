import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import '../../../infrastructure/core/base/base_view.dart';
import '../../../infrastructure/navigation/routes.dart';
import 'controllers/create.profile.controller.dart';

class CreateProfilePage extends BaseView<CreateProfileController> {

  @override
  Widget body(BuildContext context) {

    return Container(
      width: double.infinity,
      height: double.infinity,
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
              title: Text('Create a Sitter Profile', style: headlineBlack20,),
            ),
            Expanded(child: SingleChildScrollView(
              child: Column(
                children: <Widget> [
                  const Padding(
                    padding: EdgeInsets.only(left:16,top: 10.0),
                    child: Align(alignment:Alignment.topLeft,child: Text('Make a great first impression',style: textBlackMedium16,)),
                  ),

                  InkWell(
                    onTap: (){
                      Get.toNamed(Routes.basicInfo);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0,bottom:15,right: 16),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Expanded(child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Basic info',style: textBlackMedium16,),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text('Add your name and address',style: textBlackMedium13,),
                                ),
                              ],
                            )),
                          ),
                          Expanded(child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15,)
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
                      Get.toNamed(Routes.aboutYou);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0,bottom:15,right: 16),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Expanded(child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('About you',style: textBlackMedium16,),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text('Write about you and your experience',style: textBlackMedium13,),
                                ),
                              ],
                            )),
                          ),
                          Expanded(child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15,)
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
                      Get.toNamed(Routes.profileCoverPhoto);
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
                                Text('Profile & Cover Photo',style: textBlackMedium16,),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text('Add your profile & cover photo',style: textBlackMedium13,),
                                ),
                              ],
                            )),
                          ),
                          Expanded(child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15,)
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
                      Get.toNamed(Routes.dateOfBirth);
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
                                Text('Date of Birth',style: textBlackMedium16,),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text('Add your date of birth',style: textBlackMedium13,),
                                ),
                              ],
                            )),
                          ),
                          Expanded(child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15,)
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
                      Get.toNamed(Routes.details);
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
                                Text('Details',style: textBlackMedium16,),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text('Tell us about your pet-care experience',style: textBlackMedium13,),
                                ),
                              ],
                            )),
                          ),
                          Expanded(child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15,)
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
                      Get.toNamed(Routes.yourPets);
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
                                Text('Your Pets',style: textBlackMedium16,),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text('Add your pet`s details',style: textBlackMedium13,),
                                ),
                              ],
                            )),
                          ),
                          Expanded(child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15,)
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
                      Get.toNamed(Routes.photos);
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
                                Text('Photos',style: textBlackMedium16,),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text('Upload photos of you with your pet',style: textBlackMedium13,),
                                ),
                              ],
                            )),
                          ),
                          Expanded(child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15,)
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
                              Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15,)
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
                    padding: const EdgeInsets.only(bottom: 32.0,left: 58.0,right: 58.0,top: 32.0),
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
                                Get.toNamed(Routes.sitterProfile);
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





