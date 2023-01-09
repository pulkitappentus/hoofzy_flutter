import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
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
              elevation: 0,
              centerTitle: true,
            ),

            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Image.asset('assets/hoofzy/login_image.png',width: 180,height: 200,fit: BoxFit.fill),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                'Welcome to',
                style: textBlackBold22,
              ),
            ),
            const Text(
              'Hoofzy!',
              textAlign: TextAlign.center,
              style: headlineBlack36,
            ),
            const Padding(
              padding: EdgeInsets.only(top : 16),
              child: Text(
                'Train your pet daily, and strengthen your \nfriendship.',
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

            const Padding(
              padding: EdgeInsets.only(top : 30),
              child: Text(
                'Here`s how to start loving your pet',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.none,
                  color: Colors.black,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Expanded(child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 56,
                      width: 320,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: primaryColor
                      ),
                      child: Align(alignment: Alignment.center,child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           Image.asset('assets/hoofzy/message.png',height: 20,width: 22,),
                           TextButton(onPressed: (){
                             Get.offNamed(Routes.mobile);
                           },child: Text('Login with mobile number',style: textWhiteMedium15,),)
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
              padding: const EdgeInsets.only(top: 20.0),
              child: Expanded(child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  Container(
                      height: 62,
                      width: 62,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: Border.all(color: lightPinkColor)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.asset('assets/hoofzy/google.png'),
                      ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                        height: 62,
                        width: 62,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: lightPinkColor)
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
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: lightPinkColor)
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





