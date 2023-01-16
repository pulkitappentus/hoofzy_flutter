import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import '../../../infrastructure/base/base_view.dart';
import '../../infrastructure/navigation/routes.dart';
import '../login_screens/controllers/login.controller.dart';

class VerificationPage extends BaseView<LoginController> {

  @override
  Widget body(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
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
          const Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              'What`s your code',
              style: TextStyle(
                fontSize: 20,
                height: 1.8,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.none,
                color: Colors.black,
              ),
            ),
          ),
          const Padding(
            padding: const EdgeInsets.only(top:8,left: 16.0),
            child: Text(
              'Please enter six digit code we will sent on \n+91-1234567890',
              style: TextStyle(
                fontSize: 15,
                height: 1.8,
                fontWeight: FontWeight.w400,
                decoration: TextDecoration.none,
                color: Colors.black,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 74.0),
            child: OtpTextField(
              numberOfFields: 5,
              borderColor: primaryColor,
              textStyle: textBlackMedium16,
              //set to true to show as box or false to show as dash
              showFieldAsBox: false,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
             /* onSubmit: (String verificationCode){
                showDialog(
                    context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    }
                );
              },*/ // end onSubmit
            ),
          ),

          const Padding(
            padding: const EdgeInsets.only(top:10),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Didn`t receive it? Tap to resend',
                style: TextStyle(
                  fontSize: 15,
                  height: 1.8,
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.none,
                  color: Colors.black,
                ),
              ),
            ),
          ),

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
          ),
        ],
      ),
    );
  }

}






