import 'package:Hoofzy_V2/constants.dart';
import 'package:Hoofzy_V2/presentation/availability/controllers/availability.controller.dart';
import 'package:Hoofzy_V2/presentation/pet_preferences/controllers/petpreferences.controller.dart';
import 'package:Hoofzy_V2/presentation/rates/controllers/rate.controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import '../../../infrastructure/base/base_view.dart';
import '../../infrastructure/navigation/routes.dart';

class PetPreferencesPage extends BaseView<PetPreferencesController> {

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
          crossAxisAlignment: CrossAxisAlignment.start,//404717
          children:[
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
                children: [
                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Align(alignment: Alignment.topLeft,
                        child: Text('Pet preferences', style: headlineBlack20,)),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 14.0),
                    child: Flexible(child: Row(
                      children: <Widget>[
                        Image.asset('assets/hoofzy/question.png', width: 20,
                          height: 20,
                          color: primaryColorSitter,
                          fit: BoxFit.fill,),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text('How should I set preferences?', style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: primaryColorSitter),),
                        )
                      ],
                    )),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget> [
                        const Text(
                            'How many pets per day can you \nhost in your home?', style:
                        TextStyle(fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            height: 1.8)),
                        Row(
                          children: [
                            Image.asset('assets/hoofzy/minus.png',height: 28,width: 28,fit: BoxFit.fill,),
                            const Padding(
                              padding: const EdgeInsets.only(left: 13.0),
                              child: Text('1',style: textBlackMedium16,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 13.0),
                              child: Image.asset('assets/hoofzy/add.png',height: 28,width: 28,fit: BoxFit.fill,),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),

                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 20, right: 16),
                    child: Align(alignment: Alignment.topLeft,
                      child: Text(
                          'What type of pets can you host in your home?', style:
                      TextStyle(fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          height: 1.8)),
                    ),
                  ),

                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 12, right: 16),
                    child: Align(alignment: Alignment.topLeft,
                      child: Text(
                          '(Check all that apply)', style:
                      TextStyle(fontSize: 13,
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
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Image.asset('assets/hoofzy/small_grey_dog.png',height: 24,width: 24,),
                            ),
                            const Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text('Small dog (0-10 kg)',style: textBlackLight15,),
                            )
                          ],

                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Row(
                            children: [
                              Image.asset('assets/hoofzy/unchecked.png',height: 24,width: 24,),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Image.asset('assets/hoofzy/medium_grey_dog.png',height: 24,width: 24,),
                              ),
                              const Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text('Medium dog (10-20 kg)',style: textBlackLight15,),
                              )
                            ],

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Row(
                            children: [
                              Image.asset('assets/hoofzy/unchecked.png',height: 24,width: 24,),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Image.asset('assets/hoofzy/large_grey_dog.png',height: 24,width: 24,),
                              ),
                              const Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text('Large dog (21-50 kg)',style: textBlackLight15,),
                              )
                            ],

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Row(
                            children: [
                              Image.asset('assets/hoofzy/unchecked.png',height: 24,width: 24,),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Image.asset('assets/hoofzy/gaint_grey_dog.png',height: 24,width: 24,),
                              ),
                              const Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text('Giant Dog (50+ kg)',style: textBlackLight15,),
                              )
                            ],

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Row(
                            children: [
                              Image.asset('assets/hoofzy/unchecked.png',height: 24,width: 24,),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Image.asset('assets/hoofzy/grey_cat.png',height: 24,width: 24,),
                              ),
                              const Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text('Cat',style: textBlackLight15,),
                              )
                            ],

                          ),
                        ),
                      ],

                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 138.0,left: 58.0,right: 58.0),
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
/*
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 46.sp,
                        width: MediaQuery.of(context).size.width/1.5,
                        margin: const EdgeInsets.only(bottom: 16.0),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(34)),
                            color: primaryColor
                        ),
                        child: TextButton(
                          onPressed: () {
                            Get.toNamed(Routes.setupprofile);
                          },
                          child: const Text(
                            'Verify',style: textWhiteMedium16,), // trying to move to the bottom
                        ),
                      ),
                    ),
                  ),*/
                ],
              ),
            ),

            )
          ],
        ),
      ),
    );
  }
}





