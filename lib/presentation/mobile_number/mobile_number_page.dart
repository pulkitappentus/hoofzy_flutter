import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../infrastructure/base/base_view.dart';
import '../../infrastructure/navigation/routes.dart';
import '../login_screens/controllers/login.controller.dart';

class MobileNumberPage extends BaseView<LoginController> {

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
              'What`s your mobile number',
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
            padding: const EdgeInsets.only(top:12,left: 16.0),
            child: Text(
              'Please provide us with your mobile number. \nWe will find your account or create an account',
              style: TextStyle(
                fontSize: 15,
                height: 1.8,
                fontWeight: FontWeight.w400,
                decoration: TextDecoration.none,
                color: Colors.black,
              ),
            ),
          ),
          const Padding(
            padding: const EdgeInsets.only(top:22,left: 16.0),
            child: Text(
              'Mobile number',
              style: TextStyle(
                fontSize: 16,
                height: 1.8,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.none,
                color: Colors.black,
              ),
            ),
          ),

          /*Flexible(child: Padding(
              padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 8.0),
              child: SizedBox(
                height: 30,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const[
                    Align(alignment:Alignment.center,child: Text('+91',style: textBlackLight15,)),
                    Align(alignment:Alignment.center,child: Icon(Icons.keyboard_arrow_down,color: Colors.black,)),
                    VerticalDivider(
                      color: greyColor,
                      thickness: 1,
                    ),
                    TextField()
                  ],
                ),
              )
          )
          ),*/

          const Padding(
            padding: EdgeInsets.only(left: 16.0,right: 16.0),
            child: Divider(color: greyColor,thickness: 1,),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(left: 40.0,right: 40.0,top: 100),
              child: Container(
                  height: 56,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: primaryColor
                  ),
                  child: Align(alignment: Alignment.center,
                      child:TextButton
                        (
                        onPressed: (){
                          Get.toNamed(Routes.verification);
                        },
                        child: Text('Next',style: textWhiteMedium15,),)
                  )
              ),
            ),
          )
        ],
      ),
    );
  }

}






