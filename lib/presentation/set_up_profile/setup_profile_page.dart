import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../infrastructure/base/base_view.dart';
import '../../infrastructure/navigation/routes.dart';
import 'controllers/setupprofile.controller.dart';

class SetupProfilePage extends BaseView<SetupProfileController> {

  @override
  Widget body(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(image: AssetImage('assets/hoofzy/background.png'),fit: BoxFit.fill)
      ),
      child: Column(
        children: [
          AppBar(
            toolbarHeight: 0,
            backgroundColor: Colors.white,
            elevation: 0,
            centerTitle: true,
          ),

          Padding(
            padding: const EdgeInsets.only(top: 36.0),
            child: Image.asset('assets/hoofzy/setup_profile_img.png',width: 138,height: 120,fit: BoxFit.fill),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20,bottom: 20),
            child: Text(
              'Hey, Good morning',
              style: textBlackBold22,
            ),
          ),
          const Text(
            'Start now, Strengthen friendship!',
            textAlign: TextAlign.center,
            style: headlineBlack20,
          ),
          const Padding(
            padding: EdgeInsets.only(top : 20),
            child: Text(
              'Bond with your pet and learn new skills at your \nown place through guided training.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                height: 1.8,
                fontWeight: FontWeight.normal,
                decoration: TextDecoration.none,
                color: Colors.black,
              ),
            ),
          ),

          Expanded(child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 42.0),
                height: 310,
                width: 170,
                decoration: const BoxDecoration(
                    gradient: const LinearGradient(colors: [Color(0xFFFFE9DE), Color(0xFFFF9253)],
                        stops: [0.0, 1.0],
                        begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter,
                        tileMode: TileMode.repeated),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0,left: 12),
                      child: Image.asset('assets/hoofzy/dog.png',width: 44,height: 60,fit: BoxFit.fill),
                    ),
                    const Padding(
                      padding: const EdgeInsets.only(left: 12.0,top: 10.0),
                      child: Text('Do you have a pet?',style: textBlackBold16),
                    ),
                    const Padding(
                      padding: const EdgeInsets.only(left: 12.0,top: 10.0,right: 12),
                      child: Text('Creating a pet profile, training your pet, playing games, and exploring other services are all easy to do.',style: textBlackMedium_14),
                    ),
                    Expanded(child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                            height: 50,
                            width: 170,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16),bottomRight: Radius.circular(16)),
                                color: primaryColor
                            ),
                            child: Align(alignment: Alignment.center,
                              child: TextButton(onPressed: (){
                                Get.toNamed(Routes.petBasicDetails);
                              },child: Text('Create a Pet Profile',style: textWhiteLight14400,),),
                            )
                        ),
                      ],
                    ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,top: 42.0),
                child: Container(
                  height: 310,
                  width: 170,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [Color(0xFFFFF3D8), Color(0xFFFEC238)],
                          stops: [0.0, 1.0],
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter,
                          tileMode: TileMode.repeated),
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0,left: 12),
                        child: Image.asset('assets/hoofzy/cat.png',width: 28,height: 60,fit: BoxFit.fill),
                      ),
                      const Padding(
                        padding: const EdgeInsets.only(left: 12.0,top: 10.0),
                        child: Text('Become a sitter?',style: textBlackBold16),
                      ),
                      const Padding(
                        padding: const EdgeInsets.only(left: 12.0,top: 10.0,right: 12),
                        child: Text('Creating a sitter profile allows you to set your rates, availability, photos, and personal information.',style: textBlackMedium_14),
                      ),
                      Expanded(child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                              height: 50,
                              width: 170,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16),bottomRight: Radius.circular(16)),
                                  color: primaryColorSitter
                              ),
                              child: Align(alignment: Alignment.center,
                                child: TextButton(onPressed: (){
                                  Get.toNamed(Routes.createProfile);
                                },child: Text('Create a Sitter Profile',style: textWhiteLight14400,),),
                              )
                          ),
                        ],
                      ))
                    ],
                  ),

                ),
              ),
            ],
          )),

          Padding(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                TextButton(onPressed: (){
                  Get.toNamed(Routes.home);
                },child: Text('Skip, I`m here to explore',style: textBlackMedium16)),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: Image.asset('assets/hoofzy/emoji.png',width: 24,height: 24,fit: BoxFit.fill,),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

}

/*Container(
height: 56,
width: 280,
decoration: BoxDecoration(
borderRadius: BorderRadius.only(bottomRight: Radius.circular(16),topRight: Radius.circular(16)),
border: Border.all(color: Color(0xffEBE4F2),width: 1.0)
),
child: TextField(

),
)*/





