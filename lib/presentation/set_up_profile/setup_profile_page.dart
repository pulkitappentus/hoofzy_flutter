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
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          children: [
            AppBar(
              toolbarHeight: 0,
              backgroundColor: Colors.white,
              elevation: 0,
              centerTitle: true,
            ),

            Padding(
              padding: const EdgeInsets.only(top: 46.0),
              child: Image.asset('assets/hoofzy/setup_profile_img.png',width: 220,height: 192,fit: BoxFit.fill),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 50,bottom: 10),
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
              padding: EdgeInsets.only(top : 16,bottom: 32),
              child: Text(
                'Bond with your pet and learn new skills at \nyour own place through guided training.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  height: 1.8,
                  fontWeight: FontWeight.normal,
                  decoration: TextDecoration.none,
                  color: Colors.black,
                ),
              ),
            ),

            Expanded(child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 160,
                  width: 170,
                  decoration: BoxDecoration(
                    border: Border.all(color: primaryColor,width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/hoofzy/dog.png',width: 44,height: 60,fit: BoxFit.fill),
                      ),
                      const Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text('Do you have a pet?',style: textBlackLight15),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Container(
                            height: 44,
                            width: 170,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(16)),
                                color: primaryColor
                            ),
                            child: Align(alignment: Alignment.center,
                              child: TextButton(onPressed: (){

                              },child: Text('Set up a pet profile',style: textWhiteLight14400,),),
                            )
                        ),
                      ),
                    ],
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.only(left: 22.0),
                  child: Container(
                    height: 160,
                    width: 170,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/hoofzy/cat.png',width: 28,height: 60,fit: BoxFit.fill),
                        ),
                        const Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text('Become a sitter?',style: textBlackLight15),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Container(
                              height: 44,
                              width: 170,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(16)),
                                  color: Colors.black
                              ),
                              child: Align(alignment: Alignment.center,
                                child: TextButton(onPressed: (){
                                  Get.offNamed(Routes.sitterProfile);
                                },child: Text('Set up a sitter profile',style: textWhiteLight14400,),),
                              )
                          ),
                        ),
                      ],
                    ),

                  ),
                ),
              ],
            )),


            Expanded(child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                TextButton(onPressed: (){
                  Get.offNamed(Routes.home);
                },child: Text('Skip, I`m here to explore',style: textBlackLight15)),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: Image.asset('assets/hoofzy/emoji.png',width: 24,height: 24,fit: BoxFit.fill,),
                )
              ],
            )
            )
          ],
        ),
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





