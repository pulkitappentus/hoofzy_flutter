import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../../infrastructure/base/base_view.dart';
import '../../infrastructure/navigation/routes.dart';
import 'controllers/login.controller.dart';

class LoginPage extends BaseView<LoginController> {

  @override
  Widget body(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0,bottom: 20),
        child: Column(
          children: [
            AppBar(
              toolbarHeight: 0,
              backgroundColor: Colors.white,
            //  title: Image.asset('assets/hoofzy/background.png',fit: BoxFit.fitWidth,),
              elevation: 0,
              centerTitle: true,
            ),
            Expanded(child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/hoofzy/background.png'),fit: BoxFit.fill)
              ),
              child: Column(
                children: [
              Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Image.asset('assets/hoofzy/login_image.png',width: 180,height: 200,fit: BoxFit.fill),
            ),
              const Padding(
                padding: EdgeInsets.only(top: 40),
                child: Text(
                  'Welcome to Hoofzy!',
                  style: headlineBlack24,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top : 20),
                child: Text(
                  'Train your pet daily, and strengthen your friendship.',
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

              const Padding(
                padding: EdgeInsets.only(top : 40),
                child: Text(
                  'Here`s how to start loving your pet',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.none,
                    color: primaryColor,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Expanded(child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 60,
                        width: 280,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: primaryColor
                        ),
                        child: Align(alignment: Alignment.center,child:Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/hoofzy/message.png',height: 20,width: 22,),
                            TextButton(onPressed: (){
                              Get.toNamed(Routes.mobile);
                            },child: Text('Continue with mobile number',style: textWhiteMedium15,),)
                          ],
                        )
                        )
                    ),
                  ],
                )),
              ),

              const Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  'Or continue with',
                  style: textBlackLight15,
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Expanded(child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    InkWell(
                      onTap: (){
                        controller.handleGoogleSignIn(context);
                      },
                      child: Container(
                        height: 62,
                        width: 62,
                        decoration: BoxDecoration(
                          color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            border: Border.all(color: lightThemeColor)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Image.asset('assets/hoofzy/google.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Container(
                        height: 62,
                        width: 62,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            border: Border.all(color: lightThemeColor)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Image.asset('assets/hoofzy/apple.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Container(
                        height: 62,
                        width: 62,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            border: Border.all(color: lightThemeColor)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Image.asset('assets/hoofzy/facebook.png'),
                        ),
                      ),
                    ),
                  ],
                )),
              ),

              Expanded(child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('By continuing you agree to our',style: textgreyLight13),
                  Text('Terms & Privacy',style: textBlackLight13),
                ],
              ))
                ],
              ),
            )),
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





