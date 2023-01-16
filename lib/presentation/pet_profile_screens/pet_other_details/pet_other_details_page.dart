import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import '../../../infrastructure/base/base_view.dart';
import '../../../infrastructure/navigation/routes.dart';
import 'controllers/pet_profile_other_controller.dart';

class PetOtherDetailsPage extends BaseView<PetProfileOtherController> {

  @override
  Widget body(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,//404717
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
              title: Text('Create a Pet Profile',style: headlineBlack20,),
            ),
            Expanded(child: SingleChildScrollView(
              child: Column(
                children: <Widget>[

                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 28.0),
                    child: Align(alignment: Alignment.topLeft,
                        child: Text('Pet`s Size', style: textBlackMedium14,)),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 20.0,left: 8,right: 8),
                    child: Expanded(
                        child: CustomScrollView(
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          slivers: [
                            SliverPadding(
                                padding: EdgeInsets.symmetric(vertical: 1.sp),
                                sliver: SliverList(
                                  delegate: SliverChildBuilderDelegate(
                                        (BuildContext context, int index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          //color: index % 2 == 0 ? Colors.green : Colors.greenAccent,
                                          //height: 80,
                                          //alignment: Alignment.center,
                                          child: Row(
                                            children: [
                                              Image.asset('assets/hoofzy/unchecked.png',height: 24,width: 24,),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 10.0),
                                                child: Image.asset('assets/hoofzy/dod_place.png',height: 24,width: 24,),
                                              ),
                                              const Padding(
                                                padding: const EdgeInsets.only(left: 10.0),
                                                child: Text('Small dog (0-10 kg)',style: textBlackLight15,),
                                              )
                                            ],

                                          ),
                                        ),
                                      );
                                    },
                                    // 40 list items
                                    childCount: 4,
                                  ),
                                )
                            )
                          ],
                        )
                    ),
                  ),

                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 30),
                    child: Align(alignment: Alignment.topLeft,
                        child: Text('Pet`s Friendly With', style: textBlackMedium14,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Wrap(
                      direction: Axis.horizontal,
                      spacing: 10,
                      runSpacing: 10,
                     // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 116,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              border: Border.all(color: greyColor,width: 1)
                          ),
                          child: const Align(alignment: Alignment.center,child: Text('Car Friendly',style: textBlackMedium14,),),
                        ),
                        Container(
                          width: 116,
                          height: 50,
                          decoration:  BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              border: Border.all(color: greyColor,width: 1)
                          ),
                          child: const Align(alignment: Alignment.center,child: Text('Dog Friendly',style: textBlackMedium14,),),
                        ),
                        Container(
                          width: 116,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                              border: Border.all(color: greyColor,width: 1)
                          ),
                          child: const Align(alignment: Alignment.center,child: Text('Kid Friendly',style: textBlackMedium14,),),
                        ),
                        Container(
                          width: 116,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                              border: Border.all(color: greyColor,width: 1)
                          ),
                          child: const Align(alignment: Alignment.center,child: Text('Kid Friendly',style: textBlackMedium14,),),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 20),
                    child: Align(alignment: Alignment.topLeft,
                        child: Text('Pet`s Temperament', style: textBlackMedium14,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Wrap(
                      direction: Axis.horizontal,
                      spacing: 10,
                      runSpacing: 10,
                      children: [
                        Container(
                          width: 116,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              border: Border.all(color: greyColor,width: 1)
                          ),
                          child: const Align(alignment: Alignment.center,child: Text('Affectionate',style: textBlackMedium14,),),
                        ),
                        Container(
                          width: 116,
                          height: 50,
                          decoration:  BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              border: Border.all(color: greyColor,width: 1)
                          ),
                          child: const Align(alignment: Alignment.center,child: Text('Excited',style: textBlackMedium14,),),
                        ),
                        Container(
                          width: 116,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              border: Border.all(color: greyColor,width: 1)
                          ),
                          child: const Align(alignment: Alignment.center,child: Text('Playful',style: textBlackMedium14,),),
                        ),
                        Container(
                          width: 116,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              border: Border.all(color: greyColor,width: 1)
                          ),
                          child: const Align(alignment: Alignment.center,child: Text('Playful',style: textBlackMedium14,),),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 78.0,left: 38.0,right: 38.0),
                    child: Container(
                        height: 56,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: greyColor
                        ),
                        child: Align(alignment: Alignment.center,
                            child:TextButton
                              (
                              onPressed: (){
                                Get.toNamed(Routes.petProfileImage);
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





