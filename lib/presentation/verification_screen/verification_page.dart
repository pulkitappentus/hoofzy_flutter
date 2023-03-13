import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import '../../../infrastructure/core/base/base_view.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import '../../infrastructure/navigation/routes.dart';
import '../login_screens/controllers/login.controller.dart';

class VerificationPage extends BaseView<LoginController> {

  @override
  Widget body(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(image: AssetImage('assets/hoofzy/background.png'),fit: BoxFit.fill)
      ),
      width: double.infinity,
      height: double.infinity,
      child: Column(
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
          Flexible(child: Container(
            width: double.infinity,
            height: 190,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    'What`s your code',
                    style: TextStyle(
                      fontSize: 20,
                      height: 1.8,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.none,
                      color: Colors.black,
                    ),
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.only(top:20,left: 16.0),
                  child: Text(
                    'Please enter six digit code we will sent on \n+91-1234567890',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.8,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.none,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:2,left: 16.0),
                  child:  Container(
                    height: 60,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: TextField(
                            style: textBlackMedium16,
                            keyboardType: TextInputType.phone,
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: "000000",
                                hintStyle: textgreyLight18,
                                fillColor: Colors.black
                            ),
                            onChanged: (value) {
                              // this.phoneNo=value;
                              print(value);
                            },
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: TextButton(onPressed: (){},child: Text('Oops! wrong code',style: textappThemeMedium15),),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
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
                height: 50.sp,
                width: MediaQuery.of(context).size.width/1.5,
                margin: const EdgeInsets.only(bottom: 0),
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






